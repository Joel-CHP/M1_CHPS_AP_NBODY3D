#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <immintrin.h>

typedef float              f32;
typedef double             f64;
typedef unsigned long long u64;

typedef struct particle_s_soa {
    f32 *x, *y, *z;
    f32 *vx, *vy, *vz;
} particle_t ;

void init(particle_t *p, u64 n)
{
    for (u64 i = 0; i < n; i++) {
        u64 r1 = (u64)rand();
		u64 r2 = (u64)rand();
		f32 sign = (r1 > r2) ? 1 : -1;
        p->x[i] = sign * (f32)rand() / (f32)RAND_MAX;
        p->y[i] = (f32)rand() / (f32)RAND_MAX;
        p->z[i] = sign * (f32)rand() / (f32)RAND_MAX;
		p->vx[i] = (f32)rand() / (f32)RAND_MAX;
		p->vy[i] = sign * (f32)rand() / (f32)RAND_MAX;
		p->vz[i]= (f32)rand() / (f32)RAND_MAX;
    }
}

void move_particles(particle_t *p, const f32 dt, u64 n) {
    const f32 softening = 1e-20;
    __m256 softening_avx2;
    softening_avx2[0] = softening;
    softening_avx2[1] = softening;
    softening_avx2[2] = softening;
    softening_avx2[3] = softening;
    softening_avx2[4] = softening;
    softening_avx2[5] = softening;
    softening_avx2[6] = softening;
    softening_avx2[7] = softening;
    __m256 dt_avx2;
    dt_avx2[0] = dt;
    dt_avx2[1] = dt;
    dt_avx2[2] = dt;
    dt_avx2[3] = dt;
    dt_avx2[4] = dt;
    dt_avx2[5] = dt;
    dt_avx2[6] = dt;
    dt_avx2[7] = dt;
    __m256 x_avx2, y_avx2, z_avx2, vx_avx2, vy_avx2, vz_avx2;

    for (u64 i = 0; i < n; i+=8) {
        __m256 fx = _mm256_setzero_ps();
        __m256 fy = _mm256_setzero_ps();
        __m256 fz = _mm256_setzero_ps();
        __m256 xi_avx2 = _mm256_loadu_ps(p->x+i);
        __m256 yi_avx2 = _mm256_loadu_ps(p->y+i);
        __m256 zi_avx2 = _mm256_loadu_ps(p->z+i);
        __m256 vx_avx2 = _mm256_loadu_ps(p->vx+i);
        __m256 vy_avx2 = _mm256_loadu_ps(p->vy+i);
        __m256 vz_avx2 = _mm256_loadu_ps(p->vz+i);

        for (u64 j = 0; j < n; j++) {
            __m256 xj_avx2 = _mm256_loadu_ps(p->x+j);
            __m256 yj_avx2 = _mm256_loadu_ps(p->y+j);
            __m256 zj_avx2 = _mm256_loadu_ps(p->z+j);        
            __m256 dx = _mm256_sub_ps(xj_avx2, xi_avx2);
            __m256 dy = _mm256_sub_ps(yj_avx2, yi_avx2);
            __m256 dz = _mm256_sub_ps(zj_avx2, zi_avx2);
            __m256 dxc = _mm256_mul_ps(dx,dx);
            __m256 dyc = _mm256_mul_ps(dy,dy);
            __m256 dzc = _mm256_mul_ps(dz,dz);
            __m256 d_2 = _mm256_add_ps(dxc,dyc);
            d_2 = _mm256_add_ps(d_2,dzc);
            d_2 = _mm256_add_ps(d_2,softening_avx2);
            d_2 = _mm256_rsqrt_ps(d_2);
            __m256 d_3_over_2 = _mm256_mul_ps(d_2,d_2);
            d_3_over_2 = _mm256_mul_ps(d_3_over_2,d_2);
            fx = _mm256_fmadd_ps(dx,d_3_over_2,fx);
            fy = _mm256_fmadd_ps(dy,d_3_over_2,fy);
            fz = _mm256_fmadd_ps(dz,d_3_over_2,fz);
	    }

        vx_avx2 = _mm256_fmadd_ps(dt_avx2,fx,vx_avx2);
        vy_avx2 = _mm256_fmadd_ps(dt_avx2,fy,vy_avx2);
        vz_avx2 = _mm256_fmadd_ps(dt_avx2,fz,vz_avx2);
        _mm256_storeu_ps(p->vx+i,vx_avx2);
        _mm256_storeu_ps(p->vy+i,vy_avx2);
        _mm256_storeu_ps(p->vz+i,vz_avx2);

    }

    for (u64 i = 0; i < n; i++) {
/*
        p->x[i] += dt * p->vx[i];
        p->y[i] += dt * p->vy[i];
        p->z[i] += dt * p->vz[i];
*/
      x_avx2 = _mm256_loadu_ps(p->x+i);
      y_avx2 = _mm256_loadu_ps(p->y+i);
      z_avx2 = _mm256_loadu_ps(p->z+i);
      vx_avx2 = _mm256_loadu_ps(p->vx+i);
      vy_avx2 = _mm256_loadu_ps(p->vy+i);
      vz_avx2 = _mm256_loadu_ps(p->vz+i);
      x_avx2 = _mm256_fmadd_ps(dt_avx2,vx_avx2,x_avx2);
      y_avx2 = _mm256_fmadd_ps(dt_avx2,vy_avx2,y_avx2);
      z_avx2 = _mm256_fmadd_ps(dt_avx2,vz_avx2,z_avx2);
      _mm256_storeu_ps(p->x+i,x_avx2);
      _mm256_storeu_ps(p->y+i,y_avx2);
      _mm256_storeu_ps(p->z+i,z_avx2);
    }
}

int main(int argc, char **argv) {
    const u64 n = (argc > 1) ? atoll(argv[1]) : 16384;
    const u64 steps= 10;
    const f32 dt = 0.01;
    f64 rate = 0.0, drate = 0.0, debit = 0.0;
    //Steps to skip for warm up
    const u64 warmup = 3;
    particle_t *p = malloc(sizeof(particle_t) * n);
    const u64 alignement = 64;
    p->x = aligned_alloc(alignement, sizeof(f32) * n) ; 
    p->y = aligned_alloc(alignement, sizeof(f32) * n) ; 	
    p->z = aligned_alloc(alignement, sizeof(f32) * n) ; 	
    p->vx = aligned_alloc(alignement, sizeof(f32) * n) ; 	
    p->vy = aligned_alloc(alignement, sizeof(f32) * n) ; 	
    p->vz = aligned_alloc(alignement, sizeof(f32) * n) ; 	
    init(p, n);
    const u64 s = sizeof(particle_t) * n;
    const u64 s_kib = s / (1024.0);
    printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
    printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s"); fflush(stdout);*/

    for (u64 i = 0; i < steps; i++) {
        //Measure
        const f64 start = omp_get_wtime();
        move_particles(p, dt, n);
        const f64 end = omp_get_wtime();
        //Number of interactions/iterations
        const f32 h1 = (f32)(n) * (f32)(n - 1);
        //GFLOPS
        const f32 h2 = (23.0 * h1 + 3.0 * (f32)n) * 1e-9;
        if (i >= warmup) {
            debit += s_kib / (end - start);
            rate += h2 / (end - start);
            drate += (h2 * h2) / ((end - start) * (end - start));
	    }      

        printf("%5llu %10.3e %10.3e %10.3e %8.1f %s\n", i, (end - start), h1 / (end - start), s_kib / (end - start), h2 / (end - start), (i < warmup) ? "*" : "");
        fflush(stdout);
    }

    debit /= (f64)(steps - warmup);
    rate /= (f64)(steps - warmup);
    drate = sqrt(drate / (f64)(steps - warmup) - (rate * rate));
    printf("-----------------------------------------------------\n");
    printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n", "Average performance 'V07 : +INTRINSICS : VECTORISATION MANUELLE':", "", rate, drate);
    printf("\033[1m%s %4s \033[42m%10.1lf KiB/s\033[0m\n", "Bande passante mémoire:", "", debit);
    printf("-----------------------------------------------------\n");
//    printf("%f", rate);
    free(p);
    return 0;
}

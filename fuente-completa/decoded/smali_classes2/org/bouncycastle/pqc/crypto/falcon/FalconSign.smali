.class Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[S[B[B[B[B[SI[DI)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v12, p8

    move-object/from16 v5, p9

    move/from16 v7, p10

    const/16 v16, 0x1

    shl-int v6, v16, v12

    add-int v9, v7, v6

    add-int v11, v9, v6

    add-int v8, v11, v6

    invoke-virtual {v0, v5, v9, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    invoke-virtual {v0, v5, v7, v2, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    invoke-virtual {v0, v5, v8, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    invoke-virtual {v0, v5, v11, v4, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    invoke-static {v5, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([DII)V

    invoke-static {v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([DII)V

    add-int v10, v8, v6

    add-int v15, v10, v6

    invoke-static {v5, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v10, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([DII)V

    invoke-static {v5, v7, v5, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v15, v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([DI[DII)V

    invoke-static {v5, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([DII)V

    invoke-static {v5, v7, v5, v10, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    invoke-static {v5, v9, v5, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v9, v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([DI[DII)V

    invoke-static {v5, v9, v5, v15, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    invoke-static {v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([DII)V

    invoke-static {v5, v8, v5, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v15, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([DII)V

    invoke-static {v5, v11, v5, v15, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    add-int v13, v15, v6

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v6, :cond_0

    add-int v17, v15, v14

    aget-short v0, p7, v14

    int-to-double v0, v0

    aput-wide v0, v5, v17

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    goto :goto_0

    :cond_0
    invoke-static {v5, v15, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v15, v5, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v13, v5, v10, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    const-wide v0, -0x40eaab1c6f68587eL    # -8.137358613394092E-5

    invoke-static {v5, v13, v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([DIDI)V

    invoke-static {v5, v15, v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    const-wide v0, 0x3f1554e39097a782L    # 8.137358613394092E-5

    invoke-static {v5, v15, v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([DIDI)V

    mul-int/lit8 v0, v6, 0x2

    invoke-static {v5, v15, v5, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, p9

    move v1, v6

    move-object/from16 v6, p9

    move v3, v8

    move-object/from16 v8, p9

    move v5, v10

    move-object/from16 v10, p9

    move v14, v13

    move/from16 v13, p8

    move/from16 v17, v14

    move-object/from16 v14, p9

    move-object/from16 v2, p9

    move/from16 v20, v0

    move/from16 v18, v1

    move/from16 v19, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[DI[DI[DI[DI[DIII[DI)V

    move v8, v5

    move/from16 v6, v20

    move-object v5, v2

    invoke-static {v5, v3, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v9, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v7, v2, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    move-object/from16 v1, p5

    invoke-virtual {v0, v5, v3, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    move-object/from16 v4, p6

    invoke-virtual {v0, v5, v11, v4, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([DI[BI)V

    invoke-static {v5, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([DII)V

    invoke-static {v5, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([DII)V

    invoke-static {v5, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([DII)V

    move/from16 v1, v18

    move/from16 v14, v19

    add-int v13, v14, v1

    invoke-static {v5, v8, v5, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v15, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v14, v5, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    invoke-static {v5, v13, v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    invoke-static {v5, v14, v5, v13, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    invoke-static {v5, v8, v5, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v13, v5, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    invoke-static {v5, v14, v5, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v15, v5, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    invoke-static {v5, v15, v5, v13, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    invoke-static {v5, v8, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([DII)V

    invoke-static {v5, v15, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([DII)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v1, :cond_1

    aget-short v4, p7, v14

    const v6, 0xffff

    and-int/2addr v4, v6

    add-int v10, v8, v14

    aget-wide v6, v5, v10

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(D)J

    move-result-wide v6

    long-to-int v6, v6

    sub-int/2addr v4, v6

    mul-int/2addr v4, v4

    add-int/2addr v2, v4

    or-int/2addr v3, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v3, v3, 0x1f

    neg-int v3, v3

    or-int/2addr v2, v3

    new-array v3, v1, [S

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v1, :cond_2

    add-int v4, v15, v14

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(D)J

    move-result-wide v6

    neg-long v6, v6

    long-to-int v4, v6

    int-to-short v4, v4

    aput-short v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v2, v3, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SI)I

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v2, p2

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v16

    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[DI[DI[DI[DI[DIII[DI)V
    .locals 19

    move-object/from16 v1, p1

    if-nez p13, :cond_0

    aget-wide v2, p6, p7

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[D

    aget-wide v4, v0, p12

    mul-double/2addr v2, v4

    aget-wide v4, p2, p3

    invoke-static {v1, v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;DD)I

    move-result v0

    int-to-double v4, v0

    aput-wide v4, p2, p3

    aget-wide v4, p4, p5

    invoke-static {v1, v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;DD)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, p4, p5

    return-void

    :cond_0
    const/4 v0, 0x1

    shl-int v0, v0, p13

    shr-int/lit8 v9, v0, 0x1

    move-object/from16 v2, p6

    move/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p13

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDL_fft([DI[DI[DII)V

    move-object v10, v4

    move v11, v5

    add-int v5, p15, v9

    move-object/from16 v4, p14

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v2, p14

    move/from16 v3, p15

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([DI[DI[DII)V

    move-object v12, v6

    move v13, v7

    invoke-static {v2, v3, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v6, p10

    move/from16 v7, p11

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([DI[DI[DII)V

    move/from16 v16, v5

    move-object v14, v6

    move v15, v7

    invoke-static {v2, v3, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v11, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v13, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v11, p9, v9

    invoke-static {v14, v15, v10, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p15, v0

    add-int v5, v3, v9

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([DI[DI[DII)V

    move v2, v9

    add-int v9, v15, v2

    add-int/lit8 v13, p13, -0x1

    add-int v15, v3, v0

    move-object/from16 v8, p10

    move-object/from16 v14, p14

    move-object/from16 v6, p10

    move/from16 v7, p11

    move/from16 v12, p12

    move/from16 v17, v0

    move/from16 v18, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p14

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[DI[DI[DI[DI[DIII[DI)V

    move/from16 v7, v17

    shl-int/lit8 v0, v7, 0x1

    move/from16 v8, p15

    add-int v1, v8, v0

    move/from16 v6, p13

    move-object/from16 v0, p14

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([DI[DI[DII)V

    move-object v2, v0

    move v15, v3

    move/from16 v0, p5

    move v3, v1

    move v1, v6

    move-object/from16 v6, p4

    invoke-static {v6, v0, v2, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v15, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([DI[DII)V

    invoke-static {v2, v3, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v8, v2, v15, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([DI[DII)V

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static {v4, v5, v2, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([DI[DII)V

    move-object/from16 v2, p14

    move-object/from16 v0, p14

    move v6, v1

    move v1, v8

    move/from16 v3, v16

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([DI[DI[DII)V

    move v5, v3

    add-int v9, p7, v18

    move-object/from16 v4, p14

    move-object/from16 v8, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v3, p15

    invoke-virtual/range {v0 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[DI[DI[DI[DI[DIII[DI)V

    move-object/from16 v0, p14

    move-object/from16 p4, p2

    move/from16 p5, p3

    move/from16 p10, p13

    move-object/from16 p6, p14

    move/from16 p7, p15

    move-object/from16 p8, v0

    move/from16 p9, v5

    invoke-static/range {p4 .. p10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([DI[DI[DII)V

    return-void
.end method

.method sign_dyn([SLorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[SI[D)V
    .locals 11

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[D

    aget-wide v2, v0, p8

    iput-wide v2, v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:D

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[S[B[B[B[B[SI[DI)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method smallints_to_fpr([DI[BI)V
    .locals 4

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p2, v0

    aget-byte v2, p3, v0

    int-to-double v2, v2

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

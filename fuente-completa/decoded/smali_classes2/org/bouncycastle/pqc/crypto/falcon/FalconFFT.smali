.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static FFT([DII)V
    .locals 31

    move/from16 v0, p2

    const/4 v1, 0x1

    shl-int v2, v1, v0

    shr-int/2addr v2, v1

    const/4 v3, 0x2

    move v4, v1

    move v5, v2

    :goto_0
    if-ge v4, v0, :cond_2

    shr-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v3, 0x1

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v8, v7, :cond_1

    add-int v10, v9, v6

    add-int v10, v10, p1

    add-int v11, v3, v8

    shl-int/2addr v11, v1

    sget-object v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    aget-wide v13, v12, v11

    sget-object v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    add-int/2addr v11, v1

    aget-wide v11, v12, v11

    add-int v15, p1, v9

    add-int v16, v15, v2

    add-int v17, v15, v6

    add-int v18, v17, v2

    :goto_2
    if-ge v15, v10, :cond_0

    aget-wide v19, p0, v15

    aget-wide v21, p0, v16

    aget-wide v23, p0, v17

    aget-wide v25, p0, v18

    mul-double v27, v23, v13

    mul-double v29, v25, v11

    sub-double v27, v27, v29

    mul-double v23, v23, v11

    mul-double v25, v25, v13

    add-double v23, v23, v25

    add-double v25, v19, v27

    aput-wide v25, p0, v15

    add-double v25, v21, v23

    aput-wide v25, p0, v16

    sub-double v19, v19, v27

    aput-wide v19, p0, v17

    sub-double v21, v21, v23

    aput-wide v21, p0, v18

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method static iFFT([DII)V
    .locals 28

    const/4 v0, 0x1

    shl-int v1, v0, p2

    shr-int/lit8 v2, v1, 0x1

    move/from16 v3, p2

    move v5, v0

    move v4, v1

    :goto_0
    const/4 v6, 0x0

    if-le v3, v0, :cond_2

    shr-int/2addr v4, v0

    shl-int/lit8 v7, v5, 0x1

    move v8, v6

    :goto_1
    if-ge v6, v2, :cond_1

    add-int v9, v6, v5

    add-int v9, v9, p1

    add-int v10, v4, v8

    shl-int/2addr v10, v0

    sget-object v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    aget-wide v12, v11, v10

    sget-object v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    add-int/2addr v10, v0

    aget-wide v10, v11, v10

    neg-double v10, v10

    add-int v14, p1, v6

    add-int v15, v14, v2

    add-int v16, v14, v5

    add-int v17, v16, v2

    :goto_2
    if-ge v14, v9, :cond_0

    aget-wide v18, p0, v14

    aget-wide v20, p0, v15

    aget-wide v22, p0, v16

    aget-wide v24, p0, v17

    add-double v26, v18, v22

    aput-wide v26, p0, v14

    add-double v26, v20, v24

    aput-wide v26, p0, v15

    sub-double v18, v18, v22

    sub-double v20, v20, v24

    mul-double v22, v18, v12

    mul-double v24, v20, v10

    sub-double v22, v22, v24

    aput-wide v22, p0, v16

    mul-double v18, v18, v10

    mul-double v20, v20, v12

    add-double v18, v18, v20

    aput-wide v18, p0, v17

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v0

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v7

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, -0x1

    move v5, v7

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[D

    aget-wide v2, v0, p2

    :goto_3
    if-ge v6, v1, :cond_3

    add-int v0, p1, v6

    aget-wide v4, p0, v0

    mul-double/2addr v4, v2

    aput-wide v4, p0, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method static poly_LDL_fft([DI[DI[DII)V
    .locals 18

    const/4 v0, 0x1

    shl-int v1, v0, p6

    shr-int/2addr v1, v0

    add-int v2, p3, v1

    const/4 v3, 0x0

    move v5, v1

    move v4, v3

    move v3, v2

    move/from16 v2, p3

    :goto_0
    if-ge v4, v1, :cond_0

    add-int v6, p1, v4

    aget-wide v6, p0, v6

    add-int v8, p1, v5

    aget-wide v8, p0, v8

    aget-wide v10, p2, v2

    aget-wide v12, p2, v3

    mul-double v14, v6, v6

    mul-double v16, v8, v8

    add-double v14, v14, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    div-double v16, v16, v14

    mul-double v6, v6, v16

    neg-double v8, v8

    mul-double v16, v16, v8

    mul-double v8, v10, v6

    mul-double v14, v12, v16

    sub-double/2addr v8, v14

    mul-double v16, v16, v10

    mul-double/2addr v6, v12

    add-double v6, v16, v6

    mul-double v14, v8, v10

    mul-double v16, v6, v12

    add-double v14, v14, v16

    neg-double v12, v12

    mul-double/2addr v12, v8

    mul-double/2addr v10, v6

    add-double/2addr v12, v10

    add-int v10, p5, v4

    aget-wide v16, p4, v10

    sub-double v16, v16, v14

    aput-wide v16, p4, v10

    add-int v10, p5, v5

    aget-wide v14, p4, v10

    sub-double/2addr v14, v12

    aput-wide v14, p4, v10

    aput-wide v8, p2, v2

    neg-double v6, v6

    aput-wide v6, p2, v3

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v5, v0

    add-int/2addr v2, v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_add([DI[DII)V
    .locals 6

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    add-double/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_add_muladj_fft([D[D[D[D[DI)V
    .locals 23

    const/4 v0, 0x1

    shl-int v1, v0, p5

    shr-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, v1, v0

    aget-wide v3, p1, v1

    aget-wide v5, p1, v2

    aget-wide v7, p2, v1

    aget-wide v9, p2, v2

    aget-wide v11, p3, v1

    aget-wide v13, p3, v2

    aget-wide v15, p4, v1

    aget-wide v17, p4, v2

    mul-double v19, v3, v11

    mul-double v21, v5, v13

    add-double v19, v19, v21

    mul-double/2addr v5, v11

    mul-double/2addr v3, v13

    sub-double/2addr v5, v3

    mul-double v3, v7, v15

    mul-double v11, v9, v17

    add-double/2addr v3, v11

    mul-double/2addr v9, v15

    mul-double v7, v7, v17

    sub-double/2addr v9, v7

    add-double v19, v19, v3

    aput-wide v19, p0, v1

    add-double/2addr v5, v9

    aput-wide v5, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_adj_fft([DII)V
    .locals 4

    const/4 v0, 0x1

    shl-int p2, v0, p2

    shr-int/lit8 v0, p2, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    neg-double v2, v2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_div_autoadj_fft([DI[DII)V
    .locals 7

    const/4 v0, 0x1

    shl-int p4, v0, p4

    shr-int/2addr p4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p3, v0

    aget-wide v1, p2, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v1

    add-int v1, p1, v0

    aget-wide v5, p0, v1

    mul-double/2addr v5, v3

    aput-wide v5, p0, v1

    add-int/2addr v1, p4

    aget-wide v5, p0, v1

    mul-double/2addr v5, v3

    aput-wide v5, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_invnorm2_fft([DI[DI[DII)V
    .locals 11

    const/4 v0, 0x1

    shl-int v1, v0, p6

    shr-int/lit8 v0, v1, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p3, v1

    aget-wide v3, p2, v2

    add-int/2addr v2, v0

    aget-wide v5, p2, v2

    add-int v2, p5, v1

    aget-wide v7, p4, v2

    add-int/2addr v2, v0

    aget-wide v9, p4, v2

    add-int v2, p1, v1

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double/2addr v3, v5

    mul-double/2addr v7, v7

    add-double/2addr v3, v7

    mul-double/2addr v9, v9

    add-double/2addr v3, v9

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    aput-wide v5, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_merge_fft([DI[DI[DII)V
    .locals 18

    const/4 v0, 0x1

    shl-int v1, v0, p6

    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    aget-wide v3, p2, p3

    aput-wide v3, p0, p1

    add-int v3, p1, v2

    aget-wide v4, p4, p5

    aput-wide v4, p0, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    add-int v4, p5, v3

    aget-wide v5, p4, v4

    add-int/2addr v4, v1

    aget-wide v7, p4, v4

    add-int v4, v3, v2

    shl-int/2addr v4, v0

    sget-object v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    aget-wide v10, v9, v4

    sget-object v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    add-int/2addr v4, v0

    aget-wide v12, v9, v4

    mul-double v14, v5, v10

    mul-double v16, v7, v12

    sub-double v14, v14, v16

    mul-double/2addr v5, v12

    mul-double/2addr v7, v10

    add-double/2addr v5, v7

    add-int v4, p3, v3

    aget-wide v7, p2, v4

    add-int/2addr v4, v1

    aget-wide v9, p2, v4

    shl-int/lit8 v4, v3, 0x1

    add-int v4, p1, v4

    add-double v11, v7, v14

    aput-wide v11, p0, v4

    add-int/lit8 v11, v4, 0x1

    add-int/2addr v4, v2

    add-double v12, v9, v5

    aput-wide v12, p0, v4

    sub-double/2addr v7, v14

    aput-wide v7, p0, v11

    add-int/2addr v11, v2

    sub-double/2addr v9, v5

    aput-wide v9, p0, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_mul_autoadj_fft([DI[DII)V
    .locals 7

    const/4 v0, 0x1

    shl-int p4, v0, p4

    shr-int/2addr p4, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v5, p2, v4

    mul-double/2addr v2, v5

    aput-wide v2, p0, v1

    add-int/2addr v1, p4

    aget-wide v2, p0, v1

    aget-wide v4, p2, v4

    mul-double/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_mul_fft([DI[DII)V
    .locals 18

    const/4 v0, 0x1

    shl-int v1, v0, p4

    shr-int/2addr v1, v0

    add-int v2, p1, v1

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move/from16 v2, p1

    move/from16 v3, p3

    :goto_0
    if-ge v5, v1, :cond_0

    aget-wide v6, p0, v2

    aget-wide v8, p0, v4

    aget-wide v10, p2, v3

    add-int v12, v3, v1

    aget-wide v12, p2, v12

    mul-double v14, v6, v10

    mul-double v16, v8, v12

    sub-double v14, v14, v16

    aput-wide v14, p0, v2

    mul-double/2addr v6, v12

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, p0, v4

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v0

    add-int/2addr v3, v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_muladj_fft([DI[DII)V
    .locals 18

    const/4 v0, 0x1

    shl-int v1, v0, p4

    shr-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    move/from16 v2, p1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-wide v4, p0, v2

    add-int v6, v2, v1

    aget-wide v7, p0, v6

    add-int v9, p3, v3

    aget-wide v10, p2, v9

    add-int/2addr v9, v1

    aget-wide v12, p2, v9

    mul-double v14, v4, v10

    mul-double v16, v7, v12

    add-double v14, v14, v16

    aput-wide v14, p0, v2

    mul-double/2addr v7, v10

    mul-double/2addr v4, v12

    sub-double/2addr v7, v4

    aput-wide v7, p0, v6

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_mulconst([DIDI)V
    .locals 4

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    mul-double/2addr v2, p2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_mulselfadj_fft([DII)V
    .locals 7

    const/4 v0, 0x1

    shl-int p2, v0, p2

    shr-int/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, v1, p2

    aget-wide v5, p0, v4

    mul-double/2addr v2, v2

    mul-double/2addr v5, v5

    add-double/2addr v2, v5

    aput-wide v2, p0, v1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_neg([DII)V
    .locals 4

    const/4 v0, 0x1

    shl-int p2, v0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    neg-double v2, v2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_split_fft([DI[DI[DII)V
    .locals 20

    const/4 v0, 0x1

    shl-int v1, v0, p6

    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v1, v1, 0x2

    aget-wide v3, p4, p5

    aput-wide v3, p0, p1

    add-int v3, p5, v2

    aget-wide v3, p4, v3

    aput-wide v3, p2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    shl-int/lit8 v4, v3, 0x1

    add-int v4, p5, v4

    aget-wide v5, p4, v4

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v4, v2

    aget-wide v8, p4, v4

    aget-wide v10, p4, v7

    add-int/2addr v7, v2

    aget-wide v12, p4, v7

    add-int v4, p1, v3

    add-double v14, v5, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v14, v14, v16

    aput-wide v14, p0, v4

    add-int/2addr v4, v1

    add-double v14, v8, v12

    mul-double v14, v14, v16

    aput-wide v14, p0, v4

    sub-double/2addr v5, v10

    sub-double/2addr v8, v12

    add-int v4, v3, v2

    shl-int/2addr v4, v0

    sget-object v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    aget-wide v10, v7, v4

    sget-object v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[D

    add-int/2addr v4, v0

    aget-wide v12, v7, v4

    neg-double v12, v12

    add-int v4, p3, v3

    mul-double v14, v5, v10

    mul-double v18, v8, v12

    sub-double v14, v14, v18

    mul-double v14, v14, v16

    aput-wide v14, p2, v4

    add-int/2addr v4, v1

    mul-double/2addr v5, v12

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    mul-double v5, v5, v16

    aput-wide v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static poly_sub([DI[DII)V
    .locals 6

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    sub-double/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

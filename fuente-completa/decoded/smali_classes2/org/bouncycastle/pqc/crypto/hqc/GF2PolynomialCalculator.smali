.class Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;
.super Ljava/lang/Object;


# instance fields
.field private final PARAM_N:I

.field private final RED_MASK:J

.field private final VEC_N_SIZE_64:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    iput-wide p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    return-void
.end method

.method private karatsuba([JI[JI[JII[JI)V
    .locals 26

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p7

    const/16 v3, 0x10

    if-gt v2, v3, :cond_0

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->schoolbookMul([JI[JI[JII)V

    return-void

    :cond_0
    shr-int/lit8 v9, v2, 0x1

    sub-int v12, v2, v9

    shl-int/lit8 v3, v2, 0x1

    shl-int/lit8 v13, v9, 0x1

    shl-int/lit8 v14, v12, 0x1

    add-int v15, p9, v3

    add-int v16, v15, v3

    add-int v17, v16, v3

    add-int v18, v17, v2

    shl-int/lit8 v2, v2, 0x3

    add-int v11, p9, v2

    move-object/from16 v10, p8

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v3, p8

    move/from16 v4, p9

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    add-int v6, p4, v9

    add-int v8, p6, v9

    move v4, v15

    move v15, v9

    move v9, v12

    move/from16 v12, p9

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    const/16 v19, 0x0

    move/from16 v2, v19

    :goto_0
    const-wide/16 v20, 0x0

    if-ge v2, v9, :cond_3

    if-ge v2, v15, :cond_1

    add-int v3, p4, v2

    aget-wide v22, p3, v3

    goto :goto_1

    :cond_1
    move-wide/from16 v22, v20

    :goto_1
    if-ge v2, v15, :cond_2

    add-int v3, p6, v2

    aget-wide v20, p5, v3

    :cond_2
    add-int v3, v17, v2

    add-int v5, v6, v2

    aget-wide v24, p3, v5

    xor-long v22, v22, v24

    aput-wide v22, p8, v3

    add-int v3, v18, v2

    add-int v5, v8, v2

    aget-wide v22, p5, v5

    xor-long v20, v20, v22

    aput-wide v20, p8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v5, p8

    move-object/from16 v7, p8

    move-object/from16 v10, p8

    move-object/from16 v2, p0

    move-object/from16 v3, p8

    move/from16 v22, v15

    move/from16 v6, v17

    move/from16 v8, v18

    move v15, v4

    move/from16 v4, v16

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    invoke-static {v3, v12, v0, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v1, v13

    invoke-static {v3, v15, v0, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v2, v19

    :goto_2
    mul-int/lit8 v5, v9, 0x2

    if-ge v2, v5, :cond_6

    if-ge v2, v13, :cond_4

    add-int v5, v12, v2

    aget-wide v5, v3, v5

    goto :goto_3

    :cond_4
    move-wide/from16 v5, v20

    :goto_3
    if-ge v2, v14, :cond_5

    add-int v7, v15, v2

    aget-wide v7, v3, v7

    goto :goto_4

    :cond_5
    move-wide/from16 v7, v20

    :goto_4
    add-int v10, v1, v22

    add-int/2addr v10, v2

    aget-wide v16, v0, v10

    add-int v11, v4, v2

    aget-wide v18, v3, v11

    xor-long v5, v18, v5

    xor-long/2addr v5, v7

    xor-long v5, v16, v5

    aput-wide v5, v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private reduce([J[J)V
    .locals 10

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    if-ge v0, v1, :cond_0

    aget-wide v2, p2, v0

    add-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p2, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    and-int/lit8 v7, v6, 0x3f

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    add-int/2addr v1, v0

    aget-wide v4, p2, v1

    int-to-long v6, v6

    const-wide/16 v8, 0x3f

    and-long/2addr v6, v8

    const-wide/16 v8, 0x40

    sub-long/2addr v8, v6

    long-to-int v1, v8

    shl-long/2addr v4, v1

    xor-long v1, v2, v4

    aput-wide v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-wide v2, p1, v1

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v1

    return-void
.end method

.method private schoolbookMul([JI[JI[JII)V
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p7

    shl-int/lit8 v3, v2, 0x1

    add-int/2addr v3, v1

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lorg/bouncycastle/util/Arrays;->fill([JIIJ)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    add-int v5, v4, p4

    aget-wide v5, p3, v5

    move v7, v3

    :goto_1
    const/16 v8, 0x40

    if-ge v7, v8, :cond_2

    shr-long v8, v5, v7

    const-wide/16 v10, 0x1

    and-long/2addr v8, v10

    neg-long v8, v8

    if-nez v7, :cond_0

    move/from16 v12, p6

    move v11, v1

    move v10, v3

    :goto_2
    if-ge v10, v2, :cond_1

    aget-wide v13, v0, v11

    aget-wide v15, p5, v12

    and-long/2addr v15, v8

    xor-long/2addr v13, v15

    aput-wide v13, v0, v11

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_0
    rsub-int/lit8 v10, v7, 0x40

    move/from16 v13, p6

    move v12, v1

    move v11, v3

    :goto_3
    if-ge v11, v2, :cond_1

    add-int/lit8 v14, v12, 0x1

    aget-wide v15, v0, v12

    aget-wide v17, p5, v13

    shl-long v17, v17, v7

    and-long v17, v17, v8

    xor-long v15, v15, v17

    aput-wide v15, v0, v12

    aget-wide v15, v0, v14

    aget-wide v17, p5, v13

    ushr-long v17, v17, v10

    and-long v17, v17, v8

    xor-long v15, v15, v17

    aput-wide v15, v0, v14

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v13, v13, 0x1

    move v12, v14

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public vectMul([J[J[J)V
    .locals 10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v7, 0x1

    new-array v1, v0, [J

    shl-int/lit8 v0, v7, 0x4

    new-array v8, v0, [J

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->reduce([J[J)V

    return-void
.end method

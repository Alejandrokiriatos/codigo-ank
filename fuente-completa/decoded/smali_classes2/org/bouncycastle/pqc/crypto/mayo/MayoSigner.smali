.class public Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final EVEN_2BYTES:J = 0xffff0000ffffL

.field private static final EVEN_BYTES:J = 0xff00ff00ff00ffL

.field private static final F_TAIL_LEN:I = 0x4


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

.field private privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ctCompare64(II)J
    .locals 1

    xor-int/2addr p0, p1

    int-to-long p0, p0

    neg-long p0, p0

    const/16 v0, 0x3f

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method private static mVecMultiplyBins(II[J[J)V
    .locals 39

    move/from16 v0, p0

    add-int v1, v0, v0

    add-int v2, v1, v0

    add-int v3, v2, v0

    add-int v4, v3, v0

    add-int v5, v4, v0

    add-int v6, v5, v0

    add-int v7, v6, v0

    add-int v8, v7, v0

    add-int v9, v8, v0

    add-int v10, v9, v0

    add-int v11, v10, v0

    add-int v12, v11, v0

    add-int v13, v12, v0

    add-int v14, v13, v0

    move/from16 v15, p1

    move/from16 v16, v1

    const/4 v1, 0x0

    const/16 v17, 0x0

    :goto_0
    if-ge v1, v15, :cond_1

    move/from16 v18, v1

    move/from16 v19, v17

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    add-int v20, v19, v4

    aget-wide v20, p2, v20

    const-wide v22, 0x1111111111111111L

    and-long v24, v20, v22

    add-int v26, v19, v9

    aget-wide v26, p2, v26

    const-wide v28, -0x1111111111111112L    # -2.289989454992704E226

    and-long v20, v20, v28

    const/16 v30, 0x1

    ushr-long v20, v20, v30

    xor-long v20, v26, v20

    const/16 v26, 0x3

    shl-long v31, v24, v26

    add-long v31, v31, v24

    xor-long v20, v20, v31

    add-int v24, v19, v10

    aget-wide v24, p2, v24

    const-wide v31, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v11

    aget-wide v35, p2, v27

    const-wide v37, 0x7777777777777777L    # 3.0266874179647486E267

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v33, v20, v22

    add-int v27, v19, v6

    aget-wide v35, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v35, v20

    shl-long v35, v33, v26

    add-long v35, v35, v33

    xor-long v20, v20, v35

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v5

    aget-wide v35, p2, v27

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v33, v20, v22

    add-int v27, v19, v13

    aget-wide v35, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v35, v20

    shl-long v35, v33, v26

    add-long v35, v35, v33

    xor-long v20, v20, v35

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v2

    aget-wide v35, p2, v27

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v33, v20, v22

    add-int v27, v19, v14

    aget-wide v35, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v35, v20

    shl-long v35, v33, v26

    add-long v35, v35, v33

    xor-long v20, v20, v35

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v7

    aget-wide v35, p2, v27

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v33, v20, v22

    add-int v27, v19, v12

    aget-wide v35, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v35, v20

    shl-long v35, v33, v26

    add-long v35, v35, v33

    xor-long v20, v20, v35

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v3

    aget-wide v35, p2, v27

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v33, v20, v22

    add-int v27, v19, v8

    aget-wide v35, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v35, v20

    shl-long v35, v33, v26

    add-long v35, v35, v33

    xor-long v20, v20, v35

    and-long v33, v24, v31

    ushr-long v33, v33, v26

    add-int v27, v19, v16

    aget-wide v35, p2, v27

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v24, v35, v24

    shl-long v35, v33, v30

    add-long v35, v35, v33

    xor-long v24, v24, v35

    and-long v22, v20, v22

    add-int v27, v19, v0

    aget-wide v33, p2, v27

    and-long v20, v20, v28

    ushr-long v20, v20, v30

    xor-long v20, v33, v20

    shl-long v27, v22, v26

    add-long v27, v27, v22

    xor-long v20, v20, v27

    and-long v22, v24, v31

    ushr-long v22, v22, v26

    shr-int/lit8 v26, v17, 0x4

    add-int v26, v26, v1

    and-long v24, v24, v37

    shl-long v24, v24, v30

    xor-long v20, v20, v24

    shl-long v24, v22, v30

    add-long v24, v24, v22

    xor-long v20, v20, v24

    aput-wide v20, p3, v26

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v1, v18, 0x1

    shl-int/lit8 v18, v0, 0x4

    add-int v17, v17, v18

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static mayoGenericMCalculatePS(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;[JII[BIII[J)V
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    add-int v4, v2, v1

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v6

    mul-int/2addr v6, v5

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getN()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/2addr v6, v5

    shl-int/lit8 v6, v6, 0x4

    new-array v6, v6, [J

    mul-int v7, v2, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v1, :cond_4

    move v13, v9

    :goto_1
    if-ge v13, v1, :cond_1

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v3, :cond_0

    add-int v16, v12, v14

    shl-int/lit8 v16, v16, 0x4

    add-int v17, v15, v13

    aget-byte v8, p4, v17

    and-int/lit16 v8, v8, 0xff

    add-int v16, v16, v8

    mul-int v8, v16, v5

    invoke-static {v5, v0, v11, v6, v8}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v4

    goto :goto_2

    :cond_0
    add-int/2addr v11, v5

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move v13, v10

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_3

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v14, v3, :cond_2

    add-int v1, p2, v13

    add-int v16, v12, v14

    shl-int/lit8 v16, v16, 0x4

    add-int v17, v15, v8

    add-int v17, v17, p5

    aget-byte v2, p4, v17

    and-int/lit16 v2, v2, 0xff

    add-int v16, v16, v2

    mul-int v2, v16, v5

    invoke-static {v5, v0, v1, v6, v2}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v15, v4

    move/from16 v1, p5

    move/from16 v2, p6

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    add-int/2addr v13, v5

    move/from16 v1, p5

    move/from16 v2, p6

    goto :goto_3

    :cond_3
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v12, v3

    add-int/2addr v10, v7

    move/from16 v1, p5

    move/from16 v2, p6

    goto :goto_0

    :cond_4
    mul-int v1, p5, v3

    move v2, v1

    const/4 v7, 0x0

    move/from16 v1, p5

    :goto_5
    if-ge v1, v4, :cond_7

    move v8, v1

    :goto_6
    if-ge v8, v4, :cond_6

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_7
    if-ge v9, v3, :cond_5

    add-int v11, p3, v7

    add-int v12, v2, v9

    shl-int/lit8 v12, v12, 0x4

    add-int v13, v10, v8

    aget-byte v13, p4, v13

    and-int/lit16 v13, v13, 0xff

    add-int/2addr v12, v13

    mul-int/2addr v12, v5

    invoke-static {v5, v0, v11, v6, v12}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v4

    goto :goto_7

    :cond_5
    add-int/2addr v7, v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v3

    goto :goto_5

    :cond_7
    mul-int/2addr v4, v3

    move-object/from16 v0, p8

    invoke-static {v5, v4, v6, v0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mVecMultiplyBins(II[J[J)V

    return-void
.end method

.method private static mayoGenericMCalculateSPS([J[BIII[J)V
    .locals 17

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    mul-int v3, v1, v1

    mul-int v4, v0, v3

    shl-int/lit8 v4, v4, 0x4

    new-array v4, v4, [J

    mul-int v5, v1, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v7, v1, :cond_2

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v2, :cond_1

    add-int v12, v8, v10

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    mul-int/2addr v12, v0

    add-int/2addr v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2
    if-ge v13, v1, :cond_0

    add-int v15, v11, v14

    shl-int/lit8 v16, v14, 0x4

    add-int v6, v12, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1, v15, v4, v6}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v0

    move/from16 v1, p3

    goto :goto_2

    :cond_0
    move-object/from16 v1, p0

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v5

    move/from16 v1, p3

    goto :goto_1

    :cond_1
    move-object/from16 v1, p0

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v8, v2

    shl-int/lit8 v6, v5, 0x4

    add-int/2addr v9, v6

    move/from16 v1, p3

    goto :goto_0

    :cond_2
    move-object/from16 v6, p5

    invoke-static {v0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mVecMultiplyBins(II[J[J)V

    return-void
.end method

.method private static mulTable(I)I
    .locals 2

    const v0, 0x8040201

    mul-int/2addr p0, v0

    const v0, -0xf0f0f10

    and-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr p0, v1

    ushr-int/lit8 v0, v0, 0x3

    xor-int/2addr p0, v0

    return p0
.end method

.method private static transpose16x16Nibbles([JI)V
    .locals 19

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    add-int v3, p1, v1

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    ushr-long v7, v5, v2

    aget-wide v9, p0, v4

    xor-long/2addr v7, v9

    const-wide v9, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v7, v9

    shl-long v9, v7, v2

    xor-long/2addr v5, v9

    aput-wide v5, p0, v3

    aget-wide v2, p0, v4

    xor-long/2addr v2, v7

    aput-wide v2, p0, v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    move/from16 v4, p1

    move v1, v0

    :goto_1
    const/16 v5, 0x8

    if-ge v1, v3, :cond_1

    aget-wide v6, p0, v4

    ushr-long v8, v6, v5

    add-int/lit8 v10, v4, 0x2

    aget-wide v10, p0, v10

    xor-long/2addr v8, v10

    const-wide v10, 0xff00ff00ff00ffL

    and-long/2addr v8, v10

    add-int/lit8 v12, v4, 0x1

    aget-wide v13, p0, v12

    ushr-long/2addr v13, v5

    add-int/lit8 v15, v4, 0x3

    aget-wide v15, p0, v15

    xor-long/2addr v13, v15

    and-long/2addr v10, v13

    shl-long v13, v8, v5

    xor-long/2addr v6, v13

    aput-wide v6, p0, v4

    add-int/lit8 v6, v4, 0x2

    aget-wide v13, p0, v12

    shl-long v15, v10, v5

    xor-long/2addr v13, v15

    aput-wide v13, p0, v12

    add-int/lit8 v5, v4, 0x3

    aget-wide v12, p0, v6

    xor-long v7, v12, v8

    aput-wide v7, p0, v6

    add-int/2addr v4, v2

    aget-wide v6, p0, v5

    xor-long/2addr v6, v10

    aput-wide v6, p0, v5

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    if-ge v1, v2, :cond_2

    add-int v4, p1, v1

    aget-wide v6, p0, v4

    ushr-long v8, v6, v3

    add-int/lit8 v10, v4, 0x4

    aget-wide v11, p0, v10

    xor-long/2addr v8, v11

    const-wide v11, 0xffff0000ffffL

    and-long/2addr v8, v11

    add-int/lit8 v13, v4, 0x8

    aget-wide v14, p0, v13

    ushr-long/2addr v14, v3

    add-int/lit8 v16, v4, 0xc

    aget-wide v17, p0, v16

    xor-long v14, v14, v17

    and-long/2addr v11, v14

    shl-long v14, v8, v3

    xor-long/2addr v6, v14

    aput-wide v6, p0, v4

    aget-wide v6, p0, v13

    shl-long v14, v11, v3

    xor-long/2addr v6, v14

    aput-wide v6, p0, v13

    aget-wide v6, p0, v10

    xor-long/2addr v6, v8

    aput-wide v6, p0, v10

    aget-wide v6, p0, v16

    xor-long/2addr v6, v11

    aput-wide v6, p0, v16

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, v5, :cond_3

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    const/16 v4, 0x20

    ushr-long v6, v2, v4

    add-int/lit8 v8, v1, 0x8

    aget-wide v9, p0, v8

    xor-long/2addr v6, v9

    const-wide v9, 0xffffffffL

    and-long/2addr v6, v9

    shl-long v9, v6, v4

    xor-long/2addr v2, v9

    aput-wide v2, p0, v1

    aget-wide v1, p0, v8

    xor-long/2addr v1, v6

    aput-wide v1, p0, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private static vecMulAddU64(I[JB[J)V
    .locals 11

    and-int/lit16 p2, p2, 0xff

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mulTable(I)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-wide v1, p1, v0

    const-wide v3, 0x1111111111111111L

    and-long v5, v1, v3

    and-int/lit16 v7, p2, 0xff

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const/4 v7, 0x1

    ushr-long v7, v1, v7

    and-long/2addr v7, v3

    ushr-int/lit8 v9, p2, 0x8

    and-int/lit8 v9, v9, 0xf

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    const/4 v7, 0x2

    ushr-long v7, v1, v7

    and-long/2addr v7, v3

    ushr-int/lit8 v9, p2, 0x10

    and-int/lit8 v9, v9, 0xf

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    const/4 v7, 0x3

    ushr-long/2addr v1, v7

    and-long/2addr v1, v3

    ushr-int/lit8 v3, p2, 0x18

    and-int/lit8 v3, v3, 0xf

    int-to-long v3, v3

    mul-long/2addr v1, v3

    xor-long/2addr v1, v5

    aget-wide v3, p3, v0

    xor-long/2addr v1, v3

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static vecMulAddU64(I[JB[JI)V
    .locals 11

    and-int/lit16 p2, p2, 0xff

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mulTable(I)I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-wide v1, p1, v0

    const-wide v3, 0x1111111111111111L

    and-long v5, v1, v3

    and-int/lit16 v7, p2, 0xff

    int-to-long v7, v7

    mul-long/2addr v5, v7

    const/4 v7, 0x1

    ushr-long v7, v1, v7

    and-long/2addr v7, v3

    ushr-int/lit8 v9, p2, 0x8

    and-int/lit8 v9, v9, 0xf

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    const/4 v7, 0x2

    ushr-long v7, v1, v7

    and-long/2addr v7, v3

    ushr-int/lit8 v9, p2, 0x10

    and-int/lit8 v9, v9, 0xf

    int-to-long v9, v9

    mul-long/2addr v7, v9

    xor-long/2addr v5, v7

    const/4 v7, 0x3

    ushr-long/2addr v1, v7

    and-long/2addr v1, v3

    ushr-int/lit8 v3, p2, 0x18

    and-int/lit8 v3, v3, 0xf

    int-to-long v3, v3

    mul-long/2addr v1, v3

    xor-long/2addr v1, v5

    add-int v3, p4, v0

    aget-wide v4, p3, v3

    xor-long/2addr v1, v4

    aput-wide v1, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method computeA([J[B)V
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getO()I

    move-result v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getACols()I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getFTail()[I

    move-result-object v6

    add-int/lit8 v7, v3, 0x7

    const/4 v8, 0x3

    ushr-int/2addr v7, v8

    mul-int v9, v2, v1

    mul-int v10, v2, v4

    add-int/lit8 v11, v9, 0xf

    const/4 v12, 0x4

    shr-int/2addr v11, v12

    shl-int/2addr v11, v12

    mul-int/2addr v7, v11

    shl-int/2addr v7, v12

    new-array v7, v7, [J

    and-int/lit8 v13, v3, 0xf

    const/4 v14, 0x2

    if-eqz v13, :cond_0

    shl-int/2addr v13, v14

    const-wide/16 v16, 0x1

    shl-long v18, v16, v13

    sub-long v18, v18, v16

    add-int/lit8 v13, v4, -0x1

    move/from16 v16, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-wide v20, p1, v13

    and-long v20, v20, v18

    aput-wide v20, p1, v13

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v13, v4

    goto :goto_0

    :cond_0
    move/from16 v16, v8

    :cond_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    if-ge v8, v1, :cond_a

    add-int/lit8 v19, v1, -0x1

    mul-int v20, v19, v10

    mul-int v21, v19, v2

    move/from16 v15, v19

    :goto_2
    if-lt v15, v8, :cond_9

    const/4 v14, 0x0

    const/16 v23, 0x0

    :goto_3
    move/from16 v24, v12

    if-ge v14, v2, :cond_4

    const/4 v12, 0x0

    const/16 v25, 0x0

    :goto_4
    if-ge v12, v4, :cond_3

    add-int v26, v20, v12

    add-int v26, v26, v23

    aget-wide v26, p1, v26

    add-int v28, v9, v14

    add-int v28, v28, v18

    add-int v28, v28, v25

    aget-wide v29, v7, v28

    shl-long v31, v26, v17

    xor-long v29, v29, v31

    aput-wide v29, v7, v28

    if-lez v17, :cond_2

    add-int v28, v28, v11

    aget-wide v29, v7, v28

    rsub-int/lit8 v31, v17, 0x40

    ushr-long v26, v26, v31

    xor-long v26, v29, v26

    aput-wide v26, v7, v28

    :cond_2
    add-int/lit8 v12, v12, 0x1

    add-int v25, v25, v11

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    add-int v23, v23, v4

    move/from16 v12, v24

    goto :goto_3

    :cond_4
    if-eq v8, v15, :cond_7

    const/4 v12, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v12, v2, :cond_7

    const/4 v0, 0x0

    const/16 v23, 0x0

    :goto_6
    if-ge v0, v4, :cond_6

    add-int v25, v13, v0

    add-int v25, v25, v14

    aget-wide v25, p1, v25

    add-int v27, v21, v12

    add-int v27, v27, v18

    add-int v27, v27, v23

    aget-wide v28, v7, v27

    shl-long v30, v25, v17

    xor-long v28, v28, v30

    aput-wide v28, v7, v27

    if-lez v17, :cond_5

    add-int v27, v27, v11

    aget-wide v28, v7, v27

    rsub-int/lit8 v30, v17, 0x40

    ushr-long v25, v25, v30

    xor-long v25, v28, v25

    aput-wide v25, v7, v27

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int v23, v23, v11

    goto :goto_6

    :cond_6
    add-int/lit8 v12, v12, 0x1

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v17, 0x4

    const/16 v12, 0x40

    if-ne v0, v12, :cond_8

    add-int v18, v18, v11

    const/16 v17, 0x0

    goto :goto_7

    :cond_8
    move/from16 v17, v0

    :goto_7
    add-int/lit8 v15, v15, -0x1

    sub-int v20, v20, v10

    sub-int v21, v21, v2

    move-object/from16 v0, p0

    move/from16 v12, v24

    const/4 v14, 0x2

    goto/16 :goto_2

    :cond_9
    move/from16 v24, v12

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v2

    add-int/2addr v13, v10

    move-object/from16 v0, p0

    const/4 v14, 0x2

    goto/16 :goto_1

    :cond_a
    move/from16 v24, v12

    const/4 v0, 0x0

    :goto_8
    add-int/lit8 v2, v1, 0x1

    mul-int/2addr v2, v1

    shr-int/lit8 v4, v2, 0x1

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0xf

    ushr-int/lit8 v4, v4, 0x4

    mul-int/2addr v4, v11

    if-ge v0, v4, :cond_b

    invoke-static {v7, v0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->transpose16x16Nibbles([JI)V

    add-int/lit8 v0, v0, 0x10

    goto :goto_8

    :cond_b
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_9
    const/4 v9, 0x1

    move/from16 v10, v24

    if-ge v4, v10, :cond_c

    aget v10, v6, v4

    add-int/lit8 v12, v8, 0x1

    invoke-static {v10, v9}, Lorg/bouncycastle/util/GF16;->mul(II)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    add-int/lit8 v9, v8, 0x2

    const/4 v13, 0x2

    invoke-static {v10, v13}, Lorg/bouncycastle/util/GF16;->mul(II)I

    move-result v14

    int-to-byte v13, v14

    aput-byte v13, v1, v12

    add-int/lit8 v12, v8, 0x3

    const/4 v13, 0x4

    invoke-static {v10, v13}, Lorg/bouncycastle/util/GF16;->mul(II)I

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v9

    add-int/2addr v8, v13

    const/16 v9, 0x8

    invoke-static {v10, v9}, Lorg/bouncycastle/util/GF16;->mul(II)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v1, v12

    add-int/lit8 v4, v4, 0x1

    const/16 v24, 0x4

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    :goto_a
    if-ge v4, v11, :cond_f

    move v6, v3

    :goto_b
    ushr-int/lit8 v8, v2, 0x1

    add-int/2addr v8, v3

    if-ge v6, v8, :cond_e

    ushr-int/lit8 v8, v6, 0x4

    mul-int/2addr v8, v11

    add-int/2addr v8, v4

    and-int/lit8 v10, v6, 0xf

    add-int/2addr v8, v10

    aget-wide v12, v7, v8

    const-wide v14, 0x1111111111111111L

    and-long v17, v12, v14

    ushr-long v20, v12, v9

    and-long v20, v20, v14

    const/16 v22, 0x2

    ushr-long v25, v12, v22

    and-long v25, v25, v14

    ushr-long v12, v12, v16

    and-long/2addr v12, v14

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_c
    const/4 v14, 0x4

    if-ge v8, v14, :cond_d

    add-int v14, v6, v8

    sub-int/2addr v14, v3

    shr-int/lit8 v15, v14, 0x4

    mul-int/2addr v15, v11

    add-int/2addr v15, v4

    and-int/lit8 v14, v14, 0xf

    add-int/2addr v15, v14

    aget-wide v27, v7, v15

    aget-byte v14, v1, v10

    move/from16 v23, v10

    int-to-long v9, v14

    mul-long v9, v9, v17

    add-int/lit8 v14, v23, 0x1

    aget-byte v14, v1, v14

    move-object/from16 v30, v1

    int-to-long v0, v14

    mul-long v0, v0, v20

    xor-long/2addr v0, v9

    add-int/lit8 v10, v23, 0x2

    aget-byte v9, v30, v10

    int-to-long v9, v9

    mul-long v9, v9, v25

    xor-long/2addr v0, v9

    add-int/lit8 v10, v23, 0x3

    aget-byte v9, v30, v10

    int-to-long v9, v9

    mul-long/2addr v9, v12

    xor-long/2addr v0, v9

    xor-long v0, v27, v0

    aput-wide v0, v7, v15

    add-int/lit8 v8, v8, 0x1

    const/16 v24, 0x4

    add-int/lit8 v10, v23, 0x4

    move-object/from16 v1, v30

    const/16 v0, 0x10

    const/4 v9, 0x1

    goto :goto_c

    :cond_d
    move-object/from16 v30, v1

    add-int/lit8 v6, v6, 0x1

    const/16 v0, 0x10

    const/4 v9, 0x1

    goto :goto_b

    :cond_e
    move-object/from16 v30, v1

    const/16 v22, 0x2

    add-int/lit8 v4, v4, 0x10

    const/16 v0, 0x10

    const/4 v9, 0x1

    goto :goto_a

    :cond_f
    invoke-static {v7}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v3, :cond_12

    const/4 v2, 0x0

    :goto_e
    add-int/lit8 v4, v5, -0x1

    if-ge v2, v4, :cond_11

    const/4 v6, 0x0

    :goto_f
    add-int v7, v6, v1

    if-ge v7, v3, :cond_10

    mul-int v8, v1, v11

    const/16 v24, 0x4

    shr-int/lit8 v8, v8, 0x4

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    shl-int/lit8 v8, v8, 0x3

    mul-int/2addr v7, v5

    add-int/2addr v7, v2

    sub-int v9, v4, v2

    const/16 v10, 0x10

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v12, p2

    invoke-static {v0, v8, v12, v7, v9}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v12, p2

    const/16 v10, 0x10

    const/16 v24, 0x4

    add-int/lit8 v2, v2, 0x10

    goto :goto_e

    :cond_11
    move-object/from16 v12, p2

    const/16 v10, 0x10

    const/16 v24, 0x4

    add-int/lit8 v1, v1, 0x10

    goto :goto_d

    :cond_12
    return-void
.end method

.method computeRHS([J[B[B)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v3

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getFTail()[I

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v6, v1, 0xf

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    shl-int/lit8 v6, v6, 0x2

    const-wide/16 v8, 0x1

    shl-long v10, v8, v6

    sub-long/2addr v10, v8

    mul-int v6, v3, v3

    add-int/lit8 v8, v2, -0x1

    move v9, v7

    :goto_0
    if-ge v9, v6, :cond_0

    aget-wide v12, p1, v8

    and-long/2addr v12, v10

    aput-wide v12, p1, v8

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v2

    goto :goto_0

    :cond_0
    new-array v6, v2, [J

    shl-int/lit8 v8, v2, 0x3

    new-array v8, v8, [B

    mul-int v9, v3, v2

    add-int/lit8 v10, v3, -0x1

    mul-int v11, v10, v2

    mul-int v12, v11, v3

    :goto_1
    if-ltz v10, :cond_9

    move v14, v10

    move v15, v11

    move/from16 v16, v12

    :goto_2
    if-ge v14, v3, :cond_8

    add-int/lit8 v17, v2, -0x1

    aget-wide v18, v6, v17

    ushr-long v20, v18, v5

    const-wide/16 v22, 0xf

    move/from16 v25, v14

    const/16 v24, 0x4

    and-long v13, v20, v22

    long-to-int v13, v13

    shl-long v18, v18, v24

    aput-wide v18, v6, v17

    add-int/lit8 v14, v2, -0x2

    :goto_3
    if-ltz v14, :cond_1

    add-int/lit8 v17, v14, 0x1

    aget-wide v18, v6, v17

    aget-wide v20, v6, v14

    const/16 v26, 0x3c

    ushr-long v20, v20, v26

    xor-long v18, v18, v20

    aput-wide v18, v6, v17

    aget-wide v17, v6, v14

    shl-long v17, v17, v24

    aput-wide v17, v6, v14

    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_1
    invoke-static {v6, v8, v7}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    move v14, v7

    move/from16 v7, v24

    :goto_4
    if-ge v14, v7, :cond_4

    aget v7, v4, v14

    if-nez v7, :cond_2

    move/from16 v18, v3

    move-object/from16 v19, v4

    goto :goto_5

    :cond_2
    invoke-static {v13, v7}, Lorg/bouncycastle/util/GF16;->mul(II)I

    move-result v7

    move/from16 v18, v3

    move-object/from16 v19, v4

    int-to-long v3, v7

    and-int/lit8 v7, v14, 0x1

    if-nez v7, :cond_3

    shr-int/lit8 v7, v14, 0x1

    aget-byte v20, v8, v7

    and-long v3, v3, v22

    long-to-int v3, v3

    int-to-byte v3, v3

    xor-int v3, v20, v3

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    goto :goto_5

    :cond_3
    shr-int/lit8 v7, v14, 0x1

    aget-byte v20, v8, v7

    and-long v3, v3, v22

    const/16 v24, 0x4

    shl-long v3, v3, v24

    long-to-int v3, v3

    int-to-byte v3, v3

    xor-int v3, v20, v3

    int-to-byte v3, v3

    aput-byte v3, v8, v7

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v18

    move-object/from16 v4, v19

    const/4 v7, 0x4

    goto :goto_4

    :cond_4
    move/from16 v18, v3

    move-object/from16 v19, v4

    const/4 v3, 0x0

    invoke-static {v8, v3, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    add-int v3, v12, v15

    add-int v4, v16, v11

    move/from16 v7, v25

    if-ne v10, v7, :cond_5

    const/4 v13, 0x1

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    :goto_6
    const/4 v14, 0x0

    :goto_7
    if-ge v14, v2, :cond_7

    add-int v20, v3, v14

    aget-wide v20, p1, v20

    if-nez v13, :cond_6

    add-int v22, v4, v14

    aget-wide v22, p1, v22

    xor-long v20, v20, v22

    :cond_6
    aget-wide v22, v6, v14

    xor-long v20, v22, v20

    aput-wide v20, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v14, v7, 0x1

    add-int/2addr v15, v2

    add-int v16, v16, v9

    move/from16 v3, v18

    move-object/from16 v4, v19

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_8
    move/from16 v18, v3

    move-object/from16 v19, v4

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v11, v2

    sub-int/2addr v12, v9

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_9
    move v3, v7

    invoke-static {v6, v8, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    :goto_8
    if-ge v7, v1, :cond_a

    shr-int/lit8 v2, v7, 0x1

    aget-byte v3, p2, v7

    aget-byte v4, v8, v2

    and-int/lit8 v4, v4, 0xf

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v7

    add-int/lit8 v3, v7, 0x1

    aget-byte v4, p2, v3

    aget-byte v2, v8, v2

    const/16 v24, 0x4

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    add-int/lit8 v7, v7, 0x2

    goto :goto_8

    :cond_a
    return-void
.end method

.method ef([BII)V
    .locals 35

    move-object/from16 v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    add-int/lit8 v4, v3, 0xf

    shr-int/lit8 v4, v4, 0x4

    new-array v5, v4, [J

    new-array v6, v4, [J

    mul-int v7, v2, v4

    new-array v7, v7, [J

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getO()I

    move-result v8

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v9

    mul-int/2addr v8, v9

    const/16 v9, 0x10

    add-int/2addr v8, v9

    shr-int/lit8 v10, v8, 0x1

    new-array v10, v10, [B

    shr-int/lit8 v8, v8, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v12, v2, :cond_3

    const/4 v15, 0x0

    const-wide/16 v16, 0xf

    :goto_1
    if-ge v15, v4, :cond_2

    const-wide/16 v18, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_1

    shl-int/lit8 v20, v15, 0x4

    add-int v9, v20, v11

    if-ge v9, v3, :cond_0

    add-int/2addr v9, v13

    aget-byte v9, p1, v9

    move/from16 v22, v11

    move/from16 v20, v12

    int-to-long v11, v9

    and-long v11, v11, v16

    shl-int/lit8 v9, v22, 0x2

    shl-long/2addr v11, v9

    or-long v11, v18, v11

    move-wide/from16 v18, v11

    goto :goto_3

    :cond_0
    move/from16 v22, v11

    move/from16 v20, v12

    :goto_3
    add-int/lit8 v11, v22, 0x1

    move/from16 v12, v20

    const/16 v9, 0x10

    goto :goto_2

    :cond_1
    move/from16 v20, v12

    add-int v9, v15, v14

    aput-wide v18, v7, v9

    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0x10

    goto :goto_1

    :cond_2
    move/from16 v20, v12

    add-int/lit8 v12, v20, 0x1

    add-int/2addr v13, v3

    add-int/2addr v14, v4

    const/16 v9, 0x10

    goto :goto_0

    :cond_3
    const-wide/16 v16, 0xf

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_4
    if-ge v9, v3, :cond_b

    add-int v12, v9, v2

    sub-int/2addr v12, v3

    const/4 v13, 0x0

    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/lit8 v13, v2, -0x1

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    add-int/lit8 v15, v14, 0x20

    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    mul-int v15, v12, v4

    const-wide/16 v18, -0x1

    move/from16 v20, v12

    move/from16 v21, v15

    const/4 v0, 0x0

    move-wide/from16 v33, v18

    move/from16 v18, v8

    move/from16 v19, v9

    move-wide/from16 v8, v33

    :goto_5
    if-gt v12, v13, :cond_5

    invoke-static {v12, v11}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->ctCompare64(II)J

    move-result-wide v0

    not-long v0, v0

    move-wide/from16 v22, v0

    int-to-long v0, v11

    move-wide/from16 v24, v0

    int-to-long v0, v12

    sub-long v0, v24, v0

    const/16 v24, 0x3f

    shr-long v0, v0, v24

    move-wide/from16 v25, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v4, :cond_4

    aget-wide v27, v5, v0

    and-long v29, v25, v8

    or-long v29, v22, v29

    add-int v1, v21, v0

    aget-wide v31, v7, v1

    and-long v29, v29, v31

    xor-long v27, v27, v29

    aput-wide v27, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    ushr-int/lit8 v0, v19, 0x4

    aget-wide v0, v5, v0

    and-int/lit8 v8, v19, 0xf

    shl-int/lit8 v8, v8, 0x2

    ushr-long/2addr v0, v8

    and-long v0, v0, v16

    long-to-int v0, v0

    int-to-long v8, v0

    neg-long v8, v8

    shr-long v8, v8, v24

    not-long v8, v8

    add-int/lit8 v12, v12, 0x1

    add-int v21, v21, v4

    goto :goto_5

    :cond_5
    int-to-byte v1, v0

    invoke-static {v1}, Lorg/bouncycastle/util/GF16;->inv(B)B

    move-result v1

    invoke-static {v4, v5, v1, v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->vecMulAddU64(I[JB[J)V

    move v12, v15

    move/from16 v1, v20

    :goto_7
    if-gt v1, v14, :cond_7

    move/from16 v21, v12

    invoke-static {v1, v11}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->ctCompare64(II)J

    move-result-wide v12

    not-long v12, v12

    move/from16 v22, v0

    move/from16 v23, v1

    not-long v0, v8

    and-long/2addr v0, v12

    not-long v12, v0

    move-wide/from16 v24, v0

    move/from16 v1, v21

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v4, :cond_6

    aget-wide v26, v7, v1

    and-long v26, v12, v26

    aget-wide v28, v6, v0

    and-long v28, v24, v28

    or-long v26, v26, v28

    aput-wide v26, v7, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v23, 0x1

    add-int v12, v21, v4

    move/from16 v0, v22

    goto :goto_7

    :cond_7
    move/from16 v22, v0

    move/from16 v12, v20

    :goto_9
    if-ge v12, v2, :cond_9

    if-le v12, v11, :cond_8

    const/4 v13, -0x1

    goto :goto_a

    :cond_8
    const/4 v13, 0x0

    :goto_a
    ushr-int/lit8 v0, v19, 0x4

    add-int/2addr v0, v15

    aget-wide v0, v7, v0

    and-int/lit8 v8, v19, 0xf

    shl-int/lit8 v8, v8, 0x2

    ushr-long/2addr v0, v8

    and-long v0, v0, v16

    long-to-int v0, v0

    and-int/2addr v0, v13

    int-to-byte v0, v0

    invoke-static {v4, v6, v0, v7, v15}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->vecMulAddU64(I[JB[JI)V

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v15, v4

    goto :goto_9

    :cond_9
    if-eqz v22, :cond_a

    add-int/lit8 v11, v11, 0x1

    :cond_a
    add-int/lit8 v9, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v8, v18

    goto/16 :goto_4

    :cond_b
    move/from16 v18, v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v2, :cond_c

    move/from16 v5, v18

    const/4 v6, 0x0

    invoke-static {v7, v0, v5, v10, v6}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    move-object/from16 v8, p1

    invoke-static {v10, v6, v8, v1, v3}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    add-int/2addr v1, v3

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v0, v4

    goto :goto_b

    :cond_c
    return-void
.end method

.method public generateSignature([B)[B
    .locals 60

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v8

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getV()I

    move-result v9

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getO()I

    move-result v10

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getN()I

    move-result v2

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v3

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getVBytes()I

    move-result v11

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getOBytes()I

    move-result v4

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getSaltBytes()I

    move-result v15

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v16

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP1Limbs()I

    move-result v6

    iget-object v5, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getPkSeedBytes()I

    move-result v5

    iget-object v7, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getDigestBytes()I

    move-result v7

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getSkSeedBytes()I

    move-result v12

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMBytes()I

    move-result v13

    new-array v13, v13, [B

    new-array v14, v3, [B

    move/from16 v22, v2

    new-array v2, v3, [B

    move/from16 v23, v11

    new-array v11, v15, [B

    move-object/from16 v24, v2

    mul-int v2, v8, v23

    move/from16 v17, v4

    iget-object v4, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getRBytes()I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v25, v2

    new-array v2, v4, [B

    move/from16 v26, v6

    mul-int v6, v9, v8

    move/from16 v27, v8

    new-array v8, v6, [B

    move/from16 v28, v6

    mul-int v6, v27, v10

    move/from16 v29, v6

    mul-int v6, v27, v22

    add-int/lit8 v18, v3, 0x7

    div-int/lit8 v18, v18, 0x8

    mul-int/lit8 v18, v18, 0x8

    move-object/from16 v30, v8

    add-int/lit8 v8, v29, 0x1

    move-object/from16 v31, v2

    mul-int v2, v18, v8

    new-array v2, v2, [B

    move-object/from16 v32, v2

    new-array v2, v6, [B

    new-array v8, v8, [B

    move-object/from16 v33, v2

    new-array v2, v6, [B

    move-object/from16 v34, v2

    add-int v2, v7, v15

    move/from16 v35, v6

    add-int v6, v2, v12

    move-object/from16 v36, v8

    add-int/lit8 v8, v6, 0x1

    move/from16 v37, v4

    new-array v4, v8, [B

    move/from16 v38, v8

    iget-object v8, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getSigBytes()I

    move-result v8

    move/from16 v39, v3

    new-array v3, v8, [B

    move-object/from16 v40, v3

    iget-object v3, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP2Limbs()I

    move-result v3

    add-int v3, v26, v3

    new-array v3, v3, [J

    move/from16 v41, v8

    mul-int v8, v9, v10

    move-object/from16 v42, v14

    new-array v14, v8, [B

    move-object/from16 v43, v13

    mul-int v13, v29, v16

    new-array v13, v13, [J

    mul-int v18, v27, v27

    move-object/from16 v44, v13

    mul-int v13, v18, v16

    new-array v13, v13, [J

    move-object/from16 v45, v13

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move/from16 v46, v6

    const/16 v6, 0x100

    invoke-direct {v13, v6}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    :try_start_0
    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;->getSeedSk()[B

    move-result-object v6

    move/from16 v48, v2

    add-int v2, v5, v17

    move/from16 v49, v12

    new-array v12, v2, [B

    move/from16 v50, v15

    array-length v15, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    move-object/from16 v51, v11

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v13, v6, v11, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v13, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v12, v5, v14, v11, v8}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-static {v2, v3, v12}, Lorg/bouncycastle/pqc/crypto/mayo/Utils;->expandP1P2(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;[J[B)V

    mul-int v2, v10, v16

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v5, v9, :cond_3

    move/from16 v52, v8

    move/from16 v53, v11

    move/from16 v18, v15

    move v15, v5

    :goto_1
    if-ge v15, v9, :cond_2

    if-ne v15, v5, :cond_0

    add-int v18, v18, v16

    move/from16 v54, v2

    move-object/from16 v17, v3

    move/from16 v3, v16

    goto :goto_3

    :cond_0
    move/from16 v54, v2

    move/from16 v55, v26

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v10, :cond_1

    add-int v17, v52, v2

    aget-byte v19, v14, v17

    add-int v21, v11, v55

    move-object/from16 v20, v3

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    move/from16 v3, v16

    add-int v16, v8, v2

    aget-byte v19, v14, v16

    add-int v21, v53, v55

    move-object/from16 v20, v17

    move/from16 v16, v3

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mVecMulAdd(I[JII[JI)V

    add-int/lit8 v2, v2, 0x1

    add-int v55, v55, v3

    move/from16 v16, v3

    move-object/from16 v3, v17

    goto :goto_2

    :cond_1
    move-object/from16 v17, v3

    move/from16 v3, v16

    add-int v18, v18, v3

    :goto_3
    add-int/lit8 v15, v15, 0x1

    add-int v52, v52, v10

    add-int v53, v53, v54

    move/from16 v16, v3

    move-object/from16 v3, v17

    move/from16 v2, v54

    goto :goto_1

    :cond_2
    move/from16 v54, v2

    move-object/from16 v17, v3

    move/from16 v3, v16

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v8, v10

    add-int v11, v11, v54

    move-object/from16 v3, v17

    move/from16 v15, v18

    goto :goto_0

    :cond_3
    move-object/from16 v17, v3

    move/from16 v3, v16

    const/4 v11, 0x0

    invoke-static {v12, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    array-length v2, v0

    invoke-virtual {v13, v0, v11, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v13, v4, v11, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->random:Ljava/security/SecureRandom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_f

    move-object/from16 v12, v51

    :try_start_2
    invoke-virtual {v2, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    move/from16 v2, v50

    invoke-static {v12, v11, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v15, v48

    move/from16 v5, v49

    invoke-static {v6, v11, v4, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v5, v46

    invoke-virtual {v13, v4, v11, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v13, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v12, v11, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v13, v4, v11, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v6, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMBytes()I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-object/from16 v15, v43

    :try_start_3
    invoke-virtual {v13, v15, v11, v6}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    move/from16 v6, v39

    move-object/from16 v11, v42

    :try_start_4
    invoke-static {v15, v11, v6}, Lorg/bouncycastle/util/GF16;->decode([B[BI)V

    mul-int v6, v28, v3

    new-array v6, v6, [J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    move-object/from16 v51, v12

    :try_start_5
    new-array v12, v9, [B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    const/4 v7, 0x0

    :goto_4
    const/16 v8, 0xff

    if-gt v7, v8, :cond_6

    int-to-byte v8, v7

    :try_start_6
    aput-byte v8, v4, v5

    move/from16 v16, v3

    move/from16 v3, v38

    const/4 v8, 0x0

    invoke-virtual {v13, v4, v8, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move/from16 v38, v3

    move-object/from16 v43, v15

    move-object/from16 v15, v31

    move/from16 v3, v37

    :try_start_7
    invoke-virtual {v13, v15, v8, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move/from16 v37, v3

    :goto_5
    move/from16 v3, v27

    if-ge v8, v3, :cond_4

    move/from16 v27, v3

    mul-int v3, v8, v23

    move-object/from16 v18, v4

    mul-int v4, v8, v9

    move/from16 v46, v5

    move-object/from16 v5, v30

    :try_start_8
    invoke-static {v15, v3, v5, v4, v9}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v30, v5

    move-object/from16 v4, v18

    move/from16 v5, v46

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v10, v5

    move-object v1, v11

    move-object/from16 v6, v18

    move-object/from16 v2, v24

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    goto/16 :goto_d

    :cond_4
    move/from16 v50, v2

    move v8, v3

    move-object/from16 v57, v4

    move/from16 v46, v5

    move-object/from16 v18, v6

    move/from16 v47, v7

    move/from16 v3, v16

    move-object/from16 v5, v17

    move/from16 v6, v26

    move-object/from16 v4, v30

    move/from16 v56, v35

    move-object/from16 v58, v40

    move-object/from16 v7, v44

    const/4 v2, 0x0

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move/from16 v12, v29

    move-object/from16 v13, v36

    :try_start_9
    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mulAddMatXMMat(I[B[JI[JIII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v6

    move v6, v9

    move-object v9, v7

    move v7, v6

    move-object/from16 v6, v18

    :try_start_a
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mulAddMUpperTriangularMatXMatTrans(I[J[B[JII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-object/from16 v18, v4

    move-object v4, v5

    move v5, v8

    move v8, v7

    move v7, v5

    move-object v5, v6

    move-object/from16 v6, v45

    :try_start_b
    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mulAddMatXMMat(I[B[J[JII)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move/from16 v59, v8

    move v8, v7

    move/from16 v7, v59

    move-object/from16 v2, v24

    :try_start_c
    invoke-virtual {v1, v6, v11, v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->computeRHS([J[B[B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v20, v3

    move-object/from16 v3, v32

    :try_start_d
    invoke-virtual {v1, v9, v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->computeA([J[B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-object/from16 v30, v4

    move-object/from16 v21, v5

    move/from16 v4, v25

    const/4 v5, 0x0

    :try_start_e
    invoke-static {v15, v4, v13, v5, v12}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v5, v33

    :try_start_f
    invoke-virtual {v1, v3, v2, v13, v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->sampleSolution([B[B[B[B)Z

    move-result v24
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v24, :cond_5

    move-object/from16 v33, v5

    goto/16 :goto_b

    :cond_5
    move/from16 v25, v4

    move-object/from16 v33, v5

    const-wide/16 v4, 0x0

    :try_start_10
    invoke-static {v9, v4, v5}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    add-int/lit8 v4, v47, 0x1

    move-object/from16 v24, v2

    move-object/from16 v32, v3

    move-object/from16 v45, v6

    move/from16 v27, v8

    move-object/from16 v44, v9

    move/from16 v29, v12

    move-object/from16 v36, v13

    move-object/from16 v31, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v17, v18

    move/from16 v3, v20

    move-object/from16 v6, v21

    move-object/from16 v15, v43

    move/from16 v5, v46

    move/from16 v2, v50

    move/from16 v35, v56

    move-object/from16 v40, v58

    move v9, v7

    move v7, v4

    move-object/from16 v4, v57

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v33, v5

    goto :goto_9

    :catchall_2
    move-exception v0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object/from16 v30, v4

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object/from16 v30, v4

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object/from16 v30, v5

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object/from16 v30, v4

    :goto_6
    move-object/from16 v2, v24

    :goto_7
    move-object/from16 v3, v32

    goto :goto_9

    :catchall_7
    move-exception v0

    move-object/from16 v57, v4

    move-object/from16 v2, v24

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object/from16 v57, v4

    move-object/from16 v43, v15

    move-object/from16 v2, v24

    move-object/from16 v15, v31

    :goto_8
    move-object/from16 v3, v32

    move-object/from16 v13, v36

    :goto_9
    move-object v1, v11

    move-object v5, v13

    move-object/from16 v10, v30

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v7, v43

    move-object/from16 v4, v51

    :goto_a
    move-object/from16 v6, v57

    goto/16 :goto_10

    :cond_6
    move/from16 v50, v2

    move-object/from16 v57, v4

    move v7, v9

    move-object/from16 v16, v12

    move-object/from16 v43, v15

    move-object/from16 v2, v24

    move/from16 v8, v27

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move/from16 v56, v35

    move-object/from16 v13, v36

    move-object/from16 v58, v40

    :goto_b
    move-object/from16 v42, v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_c
    if-ge v6, v8, :cond_7

    move/from16 v17, v5

    move-object v5, v13

    move-object v9, v14

    move-object/from16 v12, v16

    move-object/from16 v1, v42

    move/from16 v16, v4

    move v14, v7

    move v13, v10

    move-object/from16 v10, v33

    move-object/from16 v7, v43

    move-object/from16 v4, v51

    :try_start_11
    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->matMul([B[BI[BII)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    move-object/from16 v18, v9

    move-object/from16 v36, v5

    move/from16 v20, v6

    move/from16 v27, v8

    move v5, v11

    move v6, v13

    move v9, v14

    move/from16 v11, v16

    move/from16 v14, v17

    move-object/from16 v10, v30

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    :try_start_12
    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[B[BI)V

    move/from16 v16, v11

    add-int v11, v14, v9

    invoke-static {v8, v5, v13, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v20, 0x1

    add-int/2addr v5, v6

    add-int v14, v14, v22

    add-int v16, v16, v9

    move-object/from16 v42, v1

    move-object/from16 v51, v4

    move-object/from16 v43, v7

    move-object/from16 v33, v8

    move v7, v9

    move-object/from16 v30, v10

    move-object/from16 v34, v13

    move/from16 v4, v16

    move/from16 v8, v27

    move-object/from16 v13, v36

    move-object/from16 v1, p0

    move v10, v6

    move v6, v11

    move-object/from16 v16, v12

    move v11, v5

    move v5, v14

    move-object/from16 v14, v18

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object/from16 v36, v5

    move-object v8, v10

    move-object/from16 v10, v30

    move-object/from16 v13, v34

    goto/16 :goto_a

    :cond_7
    move-object/from16 v36, v13

    move-object/from16 v10, v30

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v1, v42

    move-object/from16 v7, v43

    move-object/from16 v4, v51

    move/from16 v5, v56

    move-object/from16 v6, v58

    invoke-static {v13, v6, v5}, Lorg/bouncycastle/util/GF16;->encode([B[BI)V

    sub-int v5, v41, v50

    move/from16 v9, v50

    const/4 v11, 0x0

    invoke-static {v4, v11, v6, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    invoke-static {v7, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v2, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v4, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v15, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v10, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v8, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move-object/from16 v5, v36

    invoke-static {v5, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v13, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move-object/from16 v6, v57

    invoke-static {v6, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-object v0

    :catchall_a
    move-exception v0

    move-object/from16 v5, v36

    goto/16 :goto_a

    :catchall_b
    move-exception v0

    move-object v6, v4

    move-object v1, v11

    move-object v7, v15

    move-object/from16 v2, v24

    move-object/from16 v10, v30

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    goto :goto_e

    :catchall_c
    move-exception v0

    move-object v6, v4

    move-object v1, v11

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v2, v24

    move-object/from16 v10, v30

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    goto :goto_10

    :catchall_d
    move-exception v0

    move-object v6, v4

    move-object v4, v12

    move-object v7, v15

    move-object/from16 v2, v24

    move-object/from16 v10, v30

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    move-object/from16 v1, v42

    goto :goto_10

    :catchall_e
    move-exception v0

    move-object v6, v4

    move-object v4, v12

    goto :goto_f

    :catchall_f
    move-exception v0

    move-object v6, v4

    move-object/from16 v2, v24

    move-object/from16 v10, v30

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    move-object/from16 v1, v42

    :goto_d
    move-object/from16 v7, v43

    :goto_e
    move-object/from16 v4, v51

    goto :goto_10

    :catchall_10
    move-exception v0

    move-object v6, v4

    move-object v4, v11

    :goto_f
    move-object/from16 v2, v24

    move-object/from16 v10, v30

    move-object/from16 v15, v31

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    move-object/from16 v13, v34

    move-object/from16 v5, v36

    move-object/from16 v1, v42

    move-object/from16 v7, v43

    :goto_10
    const/4 v11, 0x0

    invoke-static {v7, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v1, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v2, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v4, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v15, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v10, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v8, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v5, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v13, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static {v6, v11}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    throw v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->random:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    return-void

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->privKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method sampleSolution([B[B[B[B)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v7, p4

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getO()I

    move-result v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v6

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getACols()I

    move-result v8

    mul-int v9, v1, v2

    const/4 v10, 0x0

    move-object/from16 v2, p3

    invoke-static {v2, v10, v7, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v6, [B

    add-int/lit8 v5, v9, 0x1

    const/4 v3, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->matMul([B[BI[BII)V

    move v3, v9

    move v2, v10

    :goto_0
    if-ge v2, v6, :cond_0

    aget-byte v11, p2, v2

    aget-byte v12, v4, v2

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1, v6, v8}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->ef([BII)V

    add-int/lit8 v2, v6, -0x1

    mul-int v3, v2, v8

    move v11, v3

    move v4, v10

    move v5, v4

    :goto_1
    add-int/lit8 v12, v8, -0x1

    const/4 v13, 0x1

    if-ge v4, v12, :cond_2

    aget-byte v12, v1, v11

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    move v13, v10

    :goto_2
    or-int/2addr v5, v13

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-nez v5, :cond_3

    return v10

    :cond_3
    :goto_3
    if-ltz v2, :cond_8

    const/16 v4, 0x20

    sub-int v5, v6, v2

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v2

    move v11, v10

    :goto_4
    if-gt v5, v4, :cond_7

    add-int v14, v3, v5

    aget-byte v14, v1, v14

    and-int/lit16 v14, v14, 0xff

    neg-int v14, v14

    shr-int/lit8 v14, v14, 0x1f

    int-to-byte v14, v14

    not-int v15, v11

    and-int/2addr v15, v14

    add-int v16, v3, v8

    add-int/lit8 v16, v16, -0x1

    aget-byte v16, v1, v16

    and-int v15, v15, v16

    int-to-byte v15, v15

    aget-byte v16, v7, v5

    xor-int v10, v16, v15

    int-to-byte v10, v10

    aput-byte v10, v7, v5

    move/from16 v16, v5

    move/from16 v17, v12

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v2, :cond_6

    const-wide/16 v18, 0x0

    move/from16 p2, v13

    move/from16 p3, v14

    move-wide/from16 v13, v18

    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_6
    const/16 v1, 0x8

    if-ge v0, v1, :cond_4

    add-int v1, v16, v18

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    move/from16 v19, v0

    int-to-long v0, v1

    shl-int/lit8 v20, v19, 0x3

    shl-long v0, v0, v20

    xor-long/2addr v13, v0

    add-int/lit8 v0, v19, 0x1

    add-int v18, v18, v8

    goto :goto_6

    :cond_4
    invoke-static {v15, v13, v14}, Lorg/bouncycastle/pqc/crypto/mayo/GF16Utils;->mulFx8(BJ)J

    move-result-wide v13

    const/4 v0, 0x0

    const/16 v18, 0x0

    :goto_7
    if-ge v0, v1, :cond_5

    add-int v19, v17, v18

    aget-byte v20, p1, v19

    shl-int/lit8 v21, v0, 0x3

    shr-long v21, v13, v21

    const-wide/16 v23, 0xf

    move/from16 v25, v2

    and-long v1, v21, v23

    long-to-int v1, v1

    int-to-byte v1, v1

    xor-int v1, v20, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v19

    add-int/lit8 v0, v0, 0x1

    add-int v18, v18, v8

    move/from16 v2, v25

    const/16 v1, 0x8

    goto :goto_7

    :cond_5
    move/from16 v25, v2

    add-int/lit8 v10, v10, 0x8

    shl-int/lit8 v0, v8, 0x3

    add-int v16, v16, v0

    add-int v17, v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p2

    move/from16 v14, p3

    goto :goto_5

    :cond_6
    move/from16 v25, v2

    move/from16 p2, v13

    move/from16 p3, v14

    or-int v0, v11, p3

    int-to-byte v11, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_7
    move/from16 v25, v2

    move/from16 p2, v13

    add-int/lit8 v2, v25, -0x1

    sub-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_8
    move/from16 p2, v13

    return p2
.end method

.method public verifySignature([B[B)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v9

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getN()I

    move-result v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getK()I

    move-result v13

    mul-int v3, v13, v14

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP1Limbs()I

    move-result v17

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP2Limbs()I

    move-result v4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP3Limbs()I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMBytes()I

    move-result v10

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getSigBytes()I

    move-result v11

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getDigestBytes()I

    move-result v12

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getSaltBytes()I

    move-result v15

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v24

    new-array v6, v10, [B

    new-array v7, v9, [B

    shl-int/lit8 v8, v9, 0x1

    new-array v8, v8, [B

    move/from16 v16, v11

    new-array v11, v3, [B

    add-int v18, v17, v4

    add-int v4, v18, v5

    new-array v4, v4, [J

    move/from16 v19, v5

    add-int v5, v12, v15

    new-array v5, v5, [B

    move-object/from16 v20, v5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/mayo/MayoPublicKeyParameters;->getEncoded()[B

    move-result-object v5

    move-object/from16 v21, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/mayo/Utils;->expandP1P2(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;[J[B)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getPkSeedBytes()I

    move-result v6

    div-int v19, v19, v24

    move v0, v6

    move-object v6, v4

    move-object v4, v5

    move v5, v0

    move-object/from16 v26, v8

    move/from16 v22, v13

    move/from16 v25, v14

    move/from16 v8, v19

    move-object/from16 v0, v20

    move-object/from16 v13, v21

    move-object v14, v7

    move/from16 v7, v18

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/mayo/Utils;->unpackMVecs([BI[JIII)V

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v5, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v1, v7, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v4, v0, v7, v12}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-virtual {v4, v0, v7, v12}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    sub-int v0, v16, v15

    invoke-virtual {v4, v2, v0, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v4, v13, v7, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    invoke-static {v13, v14, v9}, Lorg/bouncycastle/util/GF16;->decode([B[BI)V

    invoke-static {v2, v11, v3}, Lorg/bouncycastle/util/GF16;->decode([B[BI)V

    mul-int v13, v22, v22

    mul-int v13, v13, v24

    new-array v0, v13, [J

    mul-int v3, v3, v24

    new-array v10, v3, [J

    move-object/from16 v1, p0

    iget-object v15, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getV()I

    move-result v20

    iget-object v2, v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getO()I

    move-result v21

    move-object/from16 v16, v6

    move-object/from16 v23, v10

    move-object/from16 v19, v11

    invoke-static/range {v15 .. v23}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mayoGenericMCalculatePS(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;[JII[BIII[J)V

    move-object v15, v0

    move-object v0, v14

    move/from16 v13, v22

    move/from16 v12, v24

    move/from16 v14, v25

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->mayoGenericMCalculateSPS([J[BIII[J)V

    new-array v2, v9, [B

    move-object/from16 v3, v26

    invoke-virtual {v1, v15, v2, v3}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;->computeRHS([J[B[B)V

    invoke-static {v9, v3, v7, v0, v7}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v0

    return v0
.end method

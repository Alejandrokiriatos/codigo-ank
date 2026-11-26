.class public Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

.field private params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

.field private privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field private final shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    return-void
.end method

.method private evaluation([BLorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[B[B)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v6

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getAlpha()I

    move-result v7

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getN()I

    move-result v8

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getL()I

    move-result v18

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v2

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v3

    const/4 v4, 0x3

    new-array v5, v4, [I

    const/4 v9, 0x2

    aput v2, v5, v9

    const/16 v19, 0x1

    aput v8, v5, v19

    const/16 v20, 0x0

    aput v7, v5, v20

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v21, v5

    check-cast v21, [[[B

    new-array v4, v4, [I

    aput v2, v4, v9

    aput v8, v4, v19

    aput v7, v4, v20

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, [[[B

    new-array v15, v2, [B

    move/from16 v4, v20

    move v5, v4

    :goto_0
    if-ge v4, v6, :cond_6

    move/from16 v9, v20

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_1

    move/from16 v11, v20

    :goto_2
    if-ge v11, v7, :cond_0

    iget-object v12, v1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    aget-object v12, v12, v4

    aget-object v12, v12, v11

    iget-object v13, v1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    aget-object v13, v13, v4

    aget-object v13, v13, v11

    iget-object v14, v1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    aget-object v14, v14, v4

    aget-object v14, v14, v11

    iget-object v0, v1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    aget-object v0, v0, v4

    aget-object v0, v0, v11

    aget-object v16, v21, v11

    aget-object v16, v16, v9

    aget-object v17, v22, v11

    aget-object v17, v17, v9

    move/from16 v23, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v0

    move v0, v9

    move-object/from16 v9, p4

    invoke-static/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mTranMulMul([BI[B[B[B[B[B[B[BI)V

    move/from16 v9, v18

    add-int/lit8 v11, v23, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_2

    :cond_0
    move v0, v9

    move/from16 v9, v18

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v10, v2

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_1

    :cond_1
    move/from16 v9, v18

    move v0, v4

    move/from16 v10, v20

    :goto_3
    if-ge v10, v7, :cond_5

    if-lt v0, v3, :cond_2

    sub-int/2addr v0, v3

    :cond_2
    move v11, v4

    move/from16 v4, v20

    :goto_4
    if-ge v4, v8, :cond_4

    move v12, v5

    const/4 v5, 0x0

    move v13, v11

    move v14, v12

    move v11, v2

    move v12, v3

    move-object/from16 v2, p3

    move v3, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->getPMatrix(Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[BIII)[B

    move-result-object v5

    aget-object v0, v22, v10

    aget-object v0, v0, v20

    invoke-static {v5, v0, v15, v9}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMul([B[B[BI)V

    move/from16 v5, v19

    :goto_5
    if-ge v5, v8, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v16, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->getPMatrix(Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[BIII)[B

    move-result-object v6

    aget-object v0, v22, v10

    aget-object v0, v0, v5

    invoke-static {v6, v0, v15, v9}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulTo([B[B[BI)V

    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v16

    goto :goto_5

    :cond_3
    move/from16 v16, v6

    aget-object v0, v21, v10

    aget-object v0, v0, v4

    move-object/from16 v1, p1

    invoke-static {v0, v15, v1, v14, v9}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulTo([B[B[BII)V

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p2

    move v0, v3

    move v2, v11

    move v3, v12

    move v11, v13

    move v5, v14

    goto :goto_4

    :cond_4
    move-object/from16 v1, p1

    move v12, v3

    move v14, v5

    move/from16 v16, v6

    move v13, v11

    move v3, v0

    move v11, v2

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v0, v3, 0x1

    move-object/from16 v1, p2

    move v3, v12

    move v4, v13

    goto :goto_3

    :cond_5
    move-object/from16 v1, p1

    move v11, v2

    move v12, v3

    move v13, v4

    move v14, v5

    move/from16 v16, v6

    add-int/lit8 v4, v13, 0x1

    add-int v5, v14, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v18, v9

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private getMessageHash([B)[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BI)I

    return-object v0
.end method

.method private getPMatrix(Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[BIII)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v0

    if-ge p4, v0, :cond_1

    if-ge p5, v0, :cond_0

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p11:[[[[B

    aget-object p1, p1, p3

    aget-object p1, p1, p4

    aget-object p1, p1, p5

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p12:[[[[B

    aget-object p1, p1, p3

    aget-object p1, p1, p4

    sub-int/2addr p5, v0

    aget-object p1, p1, p5

    return-object p1

    :cond_1
    if-ge p5, v0, :cond_2

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p21:[[[[B

    aget-object p1, p1, p3

    sub-int/2addr p4, v0

    aget-object p1, p1, p4

    aget-object p1, p1, p5

    return-object p1

    :cond_2
    aget-object p1, p2, p3

    sub-int/2addr p4, v0

    aget-object p1, p1, p4

    sub-int/2addr p5, v0

    aget-object p1, p1, p5

    return-object p1
.end method

.method private performGaussianElimination([[B[BI)I
    .locals 10

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_6

    move v3, v2

    :goto_1
    if-ge v3, p3, :cond_0

    aget-object v4, p1, v3

    aget-byte v4, v4, v2

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-lt v3, p3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eq v3, v2, :cond_2

    aget-object v4, p1, v2

    aget-object v5, p1, v3

    aput-object v5, p1, v2

    aput-object v4, p1, v3

    :cond_2
    aget-object v3, p1, v2

    aget-byte v3, v3, v2

    invoke-static {v3}, Lorg/bouncycastle/util/GF16;->inv(B)B

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_3

    aget-object v5, p1, v2

    aget-byte v6, v5, v4

    invoke-static {v6, v3}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v2, 0x1

    move v4, v3

    :goto_3
    if-ge v4, p3, :cond_5

    aget-object v5, p1, v4

    aget-byte v5, v5, v2

    if-eqz v5, :cond_4

    move v6, v2

    :goto_4
    if-ge v6, v0, :cond_4

    aget-object v7, p1, v4

    aget-byte v8, v7, v6

    aget-object v9, p1, v2

    aget-byte v9, v9, v6

    invoke-static {v9, v5}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    add-int/lit8 v0, p3, -0x1

    :goto_5
    if-ltz v0, :cond_8

    aget-object v2, p1, v0

    aget-byte v2, v2, p3

    add-int/lit8 v3, v0, 0x1

    :goto_6
    if-ge v3, p3, :cond_7

    aget-object v4, p1, v0

    aget-byte v4, v4, v3

    aget-byte v5, p2, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    aput-byte v2, p2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_8
    return v1
.end method


# virtual methods
.method createSignedHash([BI[BI[BII[BI)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p3, v1, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p5, p6, p7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p8, v1, p9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    return-void
.end method

.method public generateSignature([B)[B
    .locals 14

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->getMessageHash([B)[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getSaltLength()I

    move-result v0

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getN()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getSaltLength()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->isSkIsSeed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    invoke-virtual {v6, v0, v5, v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;->genMap1T12Map2(Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;[B[B)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v4

    array-length v6, v4

    add-int/lit8 v6, v6, -0x30

    shl-int/lit8 v6, v6, 0x1

    new-array v7, v6, [B

    invoke-static {v4, v7, v6}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->decodeMergeInHalf([B[BI)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([BI[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([BI[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([BI[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([BI[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->T12:[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([BI[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f11:[[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([BI[[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f12:[[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([BI[[[[B)I

    move-result v5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f21:[[[[B

    invoke-static {v7, v5, v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy4d([BI[[[[B)I

    array-length v5, v4

    add-int/lit8 v5, v5, -0x30

    array-length v6, v4

    add-int/lit8 v6, v6, -0x20

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    array-length v6, v4

    add-int/lit8 v6, v6, -0x20

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    :goto_0
    move-object v13, v4

    move-object v12, v5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->T12:[[[B

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f11:[[[[B

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f12:[[[[B

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;->f21:[[[[B

    move-object v0, p0

    invoke-virtual/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->signDigestCore([B[B[B[[[B[[[B[[[B[[[B[[[B[[[[B[[[[B[[[[B[B[B)V

    invoke-static {v1, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

    instance-of p1, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->random:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    goto :goto_1

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->privKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->random:Ljava/security/SecureRandom;

    :goto_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {p1, p2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    return-void
.end method

.method signDigestCore([B[B[B[[[B[[[B[[[B[[[B[[[B[[[[B[[[[B[[[[B[B[B)V
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v11, p13

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v12

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getL()I

    move-result v13

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v14

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getAlpha()I

    move-result v15

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getN()I

    move-result v4

    mul-int v6, v12, v14

    mul-int v7, v2, v14

    mul-int v8, v1, v14

    add-int/lit8 v9, v7, 0x1

    const/16 v23, 0x1

    ushr-int/lit8 v9, v9, 0x1

    add-int/lit8 v16, v6, 0x1

    const/4 v0, 0x2

    move/from16 v17, v1

    new-array v1, v0, [I

    aput v16, v1, v23

    const/4 v0, 0x0

    aput v6, v1, v0

    move/from16 v18, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move-object/from16 v16, v0

    const/4 v1, 0x2

    new-array v0, v1, [I

    aput v14, v0, v23

    aput v14, v0, v18

    move/from16 v19, v1

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, [[B

    new-array v0, v6, [B

    const/4 v1, 0x3

    move-object/from16 v20, v0

    new-array v0, v1, [I

    aput v14, v0, v19

    aput v17, v0, v23

    aput v15, v0, v18

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, [[[B

    const/4 v0, 0x3

    new-array v0, v0, [I

    aput v14, v0, v19

    aput v17, v0, v23

    aput v15, v0, v18

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, [[[B

    new-array v0, v14, [B

    new-array v1, v14, [B

    new-array v10, v14, [B

    move/from16 v19, v14

    new-array v14, v6, [B

    mul-int v4, v4, v19

    move/from16 v21, v6

    new-array v6, v4, [B

    move/from16 v22, v8

    new-array v8, v9, [B

    add-int/lit8 v27, v22, 0x1

    move-object/from16 v28, v6

    ushr-int/lit8 v6, v27, 0x1

    move/from16 v27, v15

    new-array v15, v6, [B

    move/from16 v29, v6

    new-array v6, v13, [B

    move-object/from16 v30, v0

    move/from16 v31, v2

    move-object/from16 v0, p12

    array-length v2, v0

    move/from16 v32, v4

    array-length v4, v3

    move-object/from16 v33, v6

    const/4 v6, 0x0

    move/from16 v34, v7

    array-length v7, v5

    move/from16 v35, v13

    move/from16 v36, v17

    move/from16 v13, v18

    move-object/from16 v40, v20

    move/from16 v39, v22

    move-object/from16 v42, v28

    move/from16 v43, v29

    move/from16 v37, v31

    move/from16 v41, v32

    move/from16 v38, v34

    move-object/from16 v31, v1

    move-object/from16 v28, v10

    move/from16 v29, v12

    move-object/from16 v12, v16

    move/from16 v10, v21

    move-object v1, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->createSignedHash([BI[BI[BII[BI)V

    move-object v1, v3

    move-object v2, v8

    move-object v8, v5

    invoke-static {v2, v13, v14, v13, v10}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    move v2, v13

    :goto_0
    move v3, v13

    :goto_1
    array-length v4, v12

    if-ge v3, v4, :cond_0

    aget-object v4, v12, v3

    invoke-static {v4, v13}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    int-to-byte v9, v2

    move v2, v13

    :goto_2
    if-ge v2, v10, :cond_1

    aget-object v3, v12, v2

    aget-byte v4, v14, v2

    aput-byte v4, v3, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, v11

    invoke-virtual {v2, v11, v13, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, v1

    invoke-virtual {v2, v1, v13, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    array-length v3, v8

    invoke-virtual {v2, v8, v13, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v2, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->shake:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    move/from16 v3, v43

    invoke-virtual {v2, v15, v13, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    shl-int/lit8 v2, v3, 0x1

    move-object/from16 v5, v42

    invoke-static {v15, v5, v2}, Lorg/bouncycastle/util/GF16;->decode([B[BI)V

    move v2, v13

    move/from16 v4, v29

    move/from16 v29, v2

    :goto_3
    if-ge v2, v4, :cond_14

    move-object/from16 v6, v28

    invoke-static {v6, v13}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    move v1, v2

    move v7, v13

    move/from16 v13, v27

    :goto_4
    if-ge v7, v13, :cond_6

    move/from16 v27, v9

    move/from16 v9, v37

    if-lt v1, v9, :cond_2

    sub-int/2addr v1, v9

    :cond_2
    move/from16 p12, v1

    move-object/from16 v16, v14

    move/from16 v11, v36

    const/4 v1, 0x0

    const/4 v14, 0x0

    :goto_5
    if-ge v1, v11, :cond_3

    aget-object v17, p4, v2

    aget-object v17, v17, v7

    aget-object v20, p5, v2

    aget-object v20, v20, v7

    aget-object v21, p6, v2

    aget-object v21, v21, v7

    aget-object v22, p7, v2

    aget-object v22, v22, v7

    aget-object v28, v25, v7

    aget-object v28, v28, v1

    aget-object v32, v26, v7

    aget-object v32, v32, v1

    move-object/from16 v8, v28

    move/from16 v28, v1

    move v1, v13

    move-object v13, v5

    move/from16 v5, v19

    move-object/from16 v19, v33

    move-object/from16 v33, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v32

    move-object/from16 v32, v16

    move-object/from16 v16, v20

    move-object/from16 v20, v8

    move-object/from16 v18, v22

    move/from16 v22, v35

    const/4 v8, 0x0

    invoke-static/range {v13 .. v22}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mTranMulMul([BI[B[B[B[B[B[B[BI)V

    move-object/from16 v42, v13

    add-int/lit8 v13, v28, 0x1

    add-int/2addr v14, v5

    move v8, v13

    move v13, v1

    move v1, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v32

    move-object/from16 v15, v33

    move-object/from16 v33, v19

    move/from16 v19, v5

    move-object/from16 v5, v42

    goto :goto_5

    :cond_3
    move-object/from16 v42, v5

    move v1, v13

    move-object/from16 v32, v16

    move/from16 v5, v19

    move-object/from16 v19, v33

    const/4 v8, 0x0

    move-object/from16 v33, v15

    move v13, v8

    :goto_6
    if-ge v13, v11, :cond_5

    move v14, v8

    :goto_7
    if-ge v14, v11, :cond_4

    aget-object v15, v25, v7

    aget-object v15, v15, v13

    aget-object v16, p9, p12

    aget-object v16, v16, v13

    aget-object v16, v16, v14

    aget-object v17, v26, v7

    aget-object v17, v17, v14

    move-object v8, v15

    move v15, v2

    move-object v2, v8

    move/from16 v43, v3

    move v8, v5

    move-object/from16 v3, v16

    move-object/from16 v5, v19

    move/from16 v16, v4

    move-object/from16 v4, v17

    move/from16 v17, v7

    move/from16 v7, v35

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulMulTo([B[B[B[B[BI)V

    move-object/from16 v28, v6

    add-int/lit8 v14, v14, 0x1

    move v5, v8

    move v2, v15

    move/from16 v4, v16

    move/from16 v7, v17

    move/from16 v3, v43

    const/4 v8, 0x0

    goto :goto_7

    :cond_4
    move v15, v2

    move/from16 v43, v3

    move/from16 v16, v4

    move v8, v5

    move-object/from16 v28, v6

    move/from16 v17, v7

    move-object/from16 v5, v19

    move/from16 v7, v35

    add-int/lit8 v13, v13, 0x1

    move v5, v8

    move/from16 v7, v17

    const/4 v8, 0x0

    goto :goto_6

    :cond_5
    move v15, v2

    move/from16 v43, v3

    move/from16 v16, v4

    move v8, v5

    move-object/from16 v28, v6

    move/from16 v17, v7

    move-object/from16 v5, v19

    move/from16 v7, v35

    add-int/lit8 v2, v17, 0x1

    add-int/lit8 v3, p12, 0x1

    move v13, v1

    move v1, v3

    move/from16 v19, v8

    move/from16 v37, v9

    move/from16 v36, v11

    move/from16 v9, v27

    move-object/from16 v14, v32

    move/from16 v3, v43

    move-object/from16 v8, p3

    move-object/from16 v11, p13

    move v7, v2

    move v2, v15

    move-object/from16 v15, v33

    move-object/from16 v33, v5

    move-object/from16 v5, v42

    goto/16 :goto_4

    :cond_6
    move/from16 v43, v3

    move/from16 v16, v4

    move-object/from16 v42, v5

    move-object/from16 v28, v6

    move/from16 v27, v9

    move v1, v13

    move-object/from16 v32, v14

    move/from16 v8, v19

    move-object/from16 v5, v33

    move/from16 v7, v35

    move/from16 v11, v36

    move/from16 v9, v37

    move-object/from16 v33, v15

    move v15, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v2, v7, :cond_8

    move v4, v3

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v7, :cond_7

    add-int v6, v29, v4

    aget-object v6, v12, v6

    aget-byte v13, v6, v10

    add-int/lit8 v14, v4, 0x1

    aget-byte v4, v28, v4

    xor-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v6, v10

    add-int/lit8 v3, v3, 0x1

    move v4, v14

    goto :goto_9

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_8

    :cond_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_a
    if-ge v13, v9, :cond_13

    move v3, v15

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_12

    if-lt v3, v9, :cond_9

    sub-int/2addr v3, v9

    :cond_9
    move/from16 v17, v3

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v8, :cond_a

    aget-object v4, v24, v3

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_a
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v11, :cond_f

    aget-object v4, v25, v2

    aget-object v4, v4, v3

    aget-object v6, p10, v17

    aget-object v6, v6, v3

    aget-object v6, v6, v13

    aget-object v19, p7, v15

    aget-object v19, v19, v2

    move-object/from16 v20, v19

    move/from16 v19, v2

    move-object v2, v4

    move-object/from16 v4, v20

    move/from16 v20, v3

    move-object v3, v6

    move-object/from16 v6, v30

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulMul([B[B[B[B[BI)V

    aget-object v2, p6, v15

    aget-object v2, v2, v19

    aget-object v3, p11, v17

    aget-object v3, v3, v13

    aget-object v3, v3, v20

    aget-object v4, v26, v19

    aget-object v4, v4, v20

    move-object/from16 v6, v31

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulMul([B[B[B[B[BI)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v2, v8, :cond_e

    if-ne v3, v7, :cond_b

    add-int/2addr v4, v7

    const/4 v3, 0x0

    :cond_b
    aget-byte v21, v30, v4

    aget-byte v22, v6, v3

    move/from16 v31, v1

    move/from16 v36, v21

    move/from16 v37, v22

    const/4 v1, 0x0

    const/16 v22, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v21, v2

    const/4 v2, 0x0

    :goto_f
    if-ge v1, v8, :cond_d

    if-ne v2, v7, :cond_c

    add-int/lit8 v22, v22, 0x1

    add-int v34, v34, v7

    add-int v2, v4, v22

    aget-byte v2, v30, v2

    add-int v35, v34, v3

    aget-byte v35, v6, v35

    move/from16 v36, v1

    move v1, v2

    move/from16 v2, v35

    const/16 p12, 0x0

    const/16 v35, 0x0

    goto :goto_10

    :cond_c
    move/from16 p12, v36

    move/from16 v36, v1

    move/from16 v1, p12

    move/from16 p12, v2

    move/from16 v2, v37

    :goto_10
    aget-object v37, p5, v15

    aget-object v37, v37, v19

    add-int v44, v35, v3

    move/from16 v45, v3

    aget-byte v3, v37, v44

    aget-object v37, p4, v15

    aget-object v37, v37, v19

    add-int v44, v4, p12

    move/from16 v46, v4

    aget-byte v4, v37, v44

    aget-object v37, v24, v21

    aget-byte v44, v37, v36

    invoke-static {v1, v3}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v3

    invoke-static {v4, v2}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v4

    xor-int/2addr v3, v4

    xor-int v3, v44, v3

    int-to-byte v3, v3

    aput-byte v3, v37, v36

    add-int/lit8 v3, v36, 0x1

    add-int/lit8 v4, p12, 0x1

    add-int v35, v35, v7

    move/from16 v36, v1

    move/from16 v37, v2

    move v1, v3

    move v2, v4

    move/from16 v3, v45

    move/from16 v4, v46

    goto :goto_f

    :cond_d
    move/from16 v45, v3

    move/from16 v46, v4

    add-int/lit8 v2, v21, 0x1

    add-int/lit8 v3, v45, 0x1

    move/from16 v1, v31

    goto :goto_e

    :cond_e
    move/from16 v31, v1

    add-int/lit8 v3, v20, 0x1

    move/from16 v2, v19

    move-object/from16 v31, v6

    goto/16 :goto_d

    :cond_f
    move/from16 v19, v2

    move-object/from16 v6, v31

    move/from16 v31, v1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v8, :cond_11

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v8, :cond_10

    add-int v3, v29, v1

    aget-object v3, v12, v3

    add-int v4, v14, v2

    aget-byte v20, v3, v4

    aget-object v21, v24, v1

    aget-byte v21, v21, v2

    move/from16 v22, v1

    xor-int v1, v20, v21

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v22

    goto :goto_12

    :cond_10
    move/from16 v22, v1

    add-int/lit8 v1, v22, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v2, v19, 0x1

    add-int/lit8 v3, v17, 0x1

    move/from16 v1, v31

    move-object/from16 v31, v6

    goto/16 :goto_b

    :cond_12
    move-object/from16 v6, v31

    move/from16 v31, v1

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v8

    move-object/from16 v31, v6

    goto/16 :goto_a

    :cond_13
    move-object/from16 v6, v31

    move/from16 v31, v1

    add-int/lit8 v2, v15, 0x1

    add-int v29, v29, v8

    move-object/from16 v1, p2

    move/from16 v35, v7

    move/from16 v19, v8

    move/from16 v37, v9

    move/from16 v36, v11

    move/from16 v4, v16

    move/from16 v9, v27

    move/from16 v27, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    move/from16 v3, v43

    const/4 v13, 0x0

    move-object/from16 v8, p3

    move-object/from16 v11, p13

    move-object/from16 v33, v5

    move-object/from16 v31, v6

    move-object/from16 v5, v42

    goto/16 :goto_3

    :cond_14
    move/from16 v43, v3

    move/from16 v16, v4

    move-object/from16 v42, v5

    move-object/from16 v32, v14

    move/from16 v8, v19

    move-object/from16 v6, v31

    move-object/from16 v5, v33

    move/from16 v7, v35

    move/from16 v11, v36

    move-object/from16 v3, v40

    move-object/from16 v33, v15

    move/from16 v31, v27

    move/from16 v27, v9

    move/from16 v9, v37

    invoke-direct {v0, v12, v3, v10}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->performGaussianElimination([[B[BI)I

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_13
    if-ge v1, v11, :cond_16

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_14
    if-ge v10, v9, :cond_15

    aget-object v2, p8, v1

    aget-object v2, v2, v10

    move-object/from16 v5, v42

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16mMulTo([B[BI[BII)V

    move-object v13, v5

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v4, v8

    move-object/from16 v42, v13

    goto :goto_14

    :cond_15
    move-object/from16 v13, v42

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v6, v8

    goto :goto_13

    :cond_16
    move/from16 v2, v38

    move/from16 v1, v39

    move-object/from16 v13, v42

    const/4 v4, 0x0

    invoke-static {v3, v4, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, p1

    move/from16 v15, v41

    invoke-static {v13, v14, v15}, Lorg/bouncycastle/util/GF16;->encode([B[BI)V

    array-length v1, v14

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    move-object/from16 v3, p3

    invoke-static {v3, v4, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_17
    move-object/from16 v14, p1

    move-object/from16 v1, p2

    move-object/from16 v40, v3

    move/from16 v35, v7

    move/from16 v19, v8

    move/from16 v37, v9

    move/from16 v36, v11

    move/from16 v29, v16

    move/from16 v2, v27

    move/from16 v27, v31

    move-object/from16 v14, v32

    move-object/from16 v15, v33

    const/4 v13, 0x0

    move-object/from16 v8, p3

    move-object/from16 v11, p13

    move-object/from16 v33, v5

    move-object/from16 v31, v6

    goto/16 :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 9

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->getMessageHash([B)[B

    move-result-object v1

    new-instance v4, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->getEncoded()[B

    move-result-object p1

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    array-length v2, p1

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->engine:Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;

    invoke-virtual {v0, v4, v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaEngine;->genABQP(Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v6

    const/4 v7, 0x4

    new-array v7, v7, [I

    const/4 v8, 0x3

    aput v6, v7, v8

    const/4 v6, 0x2

    aput v5, v7, v6

    const/4 v5, 0x1

    aput v2, v7, v5

    const/4 v2, 0x0

    aput v0, v7, v2

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v6

    and-int/2addr v6, v5

    if-nez v6, :cond_0

    array-length v6, p1

    shl-int/lit8 v5, v6, 0x1

    invoke-static {p1, v2, v0, v5}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeP([BI[[[[BI)I

    goto :goto_0

    :cond_0
    array-length v6, p1

    shl-int/lit8 v5, v6, 0x1

    new-array v6, v5, [B

    invoke-static {p1, v6, v5}, Lorg/bouncycastle/util/GF16;->decode([B[BI)V

    invoke-static {v6, v2, v0, v5}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillP([BI[[[[BI)I

    :goto_0
    move-object v2, p2

    move-object v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->verifySignatureCore([B[B[BLorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[B)Z

    move-result p1

    return p1
.end method

.method verifySignatureCore([B[B[BLorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[B)Z
    .locals 14

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v12, v2, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getSaltLength()I

    move-result v10

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getN()I

    move-result v3

    mul-int v13, v3, v0

    add-int/lit8 v3, v13, 0x1

    ushr-int/lit8 v9, v3, 0x1

    new-array v11, v12, [B

    move-object/from16 v4, p3

    array-length v5, v4

    array-length v7, p1

    move-object v3, p0

    move-object v6, p1

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->createSignedHash([BI[BI[BII[BI)V

    and-int/lit8 p1, v1, 0x1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v12, -0x1

    aget-byte v1, v11, p1

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, v11, p1

    :cond_0
    new-array p1, v13, [B

    const/4 v1, 0x0

    move-object/from16 v8, p2

    invoke-static {v8, v1, p1, v1, v13}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    mul-int/2addr v2, v0

    new-array v0, v2, [B

    move-object/from16 v1, p4

    move-object/from16 v4, p5

    invoke-direct {p0, v0, v1, v4, p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;->evaluation([BLorg/bouncycastle/pqc/crypto/snova/MapGroup1;[[[[B[B)V

    new-array p1, v12, [B

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/util/GF16;->encode([B[BI)V

    invoke-static {v11, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.class Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;
.super Ljava/lang/Object;


# instance fields
.field final CRYPTO_BYTES:I

.field private final CRYPTO_PUBLICKEYBYTES:I

.field private final CRYPTO_SECRETKEYBYTES:I

.field final LOGN:I

.field private final N:I

.field final NONCELEN:I

.field private final rand:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(IILjava/security/SecureRandom;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 p2, 0x1

    shl-int p3, p2, p1

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, p3, 0xe

    const/16 v1, 0x8

    div-int/2addr v0, v1

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/16 p1, 0x901

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/16 p1, 0x532

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_0
    const/16 v0, 0x9

    const/16 v2, 0x2b2

    if-eq p1, v0, :cond_4

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 p1, p3, 0x2

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_3
    :goto_0
    mul-int/lit8 p1, p3, 0xe

    div-int/2addr p1, v1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void

    :cond_4
    :goto_1
    mul-int/lit8 p1, p3, 0xc

    div-int/2addr p1, v1

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    return-void
.end method


# virtual methods
.method crypto_sign([B[BI[B)[B
    .locals 18

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v3, v2, [B

    new-array v9, v2, [B

    new-array v10, v2, [B

    new-array v11, v2, [B

    new-array v12, v2, [S

    new-array v2, v2, [S

    const/16 v13, 0x30

    new-array v14, v13, [B

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v15, v4, [B

    new-instance v4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v16, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;

    invoke-direct/range {v16 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;-><init>()V

    move-object v5, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    sget-object v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v6, v6, v7

    const/4 v7, 0x0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    move-object v1, v5

    move v5, v6

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BII[BII)I

    move-result v8

    if-eqz v8, :cond_5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v6, v4, v6

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v4, v8

    move-object v7, v9

    move v9, v4

    move-object v4, v7

    move-object/from16 v7, p4

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BII[BII)I

    move-result v5

    if-eqz v5, :cond_4

    add-int/2addr v8, v5

    move-object v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    sget-object v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v5, v5, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v6, v8

    move-object v7, v15

    move v15, v6

    move-object v6, v7

    move-object/from16 v17, v12

    move v7, v13

    move-object/from16 v13, p4

    move v12, v5

    move-object v5, v14

    move v14, v8

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BII[BII)I

    move-result v8

    if-eqz v8, :cond_3

    add-int/2addr v8, v14

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/4 v13, 0x1

    sub-int/2addr v11, v13

    if-ne v8, v11, :cond_2

    move v8, v7

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [S

    move-object v14, v4

    move-object v4, v3

    move-object v3, v9

    move-object v9, v5

    move-object v5, v14

    move-object v14, v6

    move v15, v8

    move-object v6, v10

    move-object v8, v11

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->complete_private([B[B[B[BI[S)Z

    move-result v7

    move-object v10, v5

    move-object v5, v3

    move-object v3, v4

    move-object v4, v10

    move-object v10, v6

    if-eqz v7, :cond_1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v6, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 v7, 0x0

    invoke-virtual {v1, v14, v7, v6}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    move-object/from16 v6, p2

    move/from16 v8, p3

    invoke-virtual {v1, v6, v7, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[SI)V

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v6, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    invoke-virtual {v1, v9, v7, v15}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v6, v6, 0xa

    new-array v12, v6, [D

    move-object v6, v3

    move-object v9, v5

    move-object v8, v10

    move-object/from16 v3, v16

    move-object v5, v1

    move-object v10, v2

    move v1, v7

    move-object v7, v4

    move-object/from16 v4, v17

    invoke-virtual/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->sign_dyn([SLorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[B[SI[D)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    add-int/lit8 v2, v2, -0x2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v2, v3

    new-array v3, v2, [B

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static {v3, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BI[SI)I

    move-result v2

    if-eqz v2, :cond_0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/2addr v4, v15

    int-to-byte v4, v4

    aput-byte v4, p1, v1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v5, p1

    invoke-static {v14, v1, v5, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v4, v13

    invoke-static {v3, v1, v5, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v3, v13

    add-int/2addr v3, v2

    invoke-static {v5, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "signature failed to generate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "complete_private failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "full key not used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "F decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "g decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "f decode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method crypto_sign_keypair([B[B)[[B
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v2, v0, [B

    new-array v3, v0, [B

    new-array v4, v0, [B

    new-array v5, v0, [S

    const/16 v0, 0x30

    new-array v1, v0, [B

    move-object v6, v1

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x100

    invoke-direct {v1, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v10, 0x0

    invoke-virtual {v1, v6, v10, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->keygen(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[B[B[B[SI)V

    move-object v0, v3

    move-object v9, v4

    move-object v11, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v1, v5, 0x50

    int-to-byte v1, v1

    aput-byte v1, p2, v10

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    move-object v4, v2

    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v6, v1, v6

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BII)I

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 v4, p2, 0x1

    invoke-static {v1, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v5, v2, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v2, v3

    move-object v6, v0

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BII)I

    move-result v0

    if-eqz v0, :cond_3

    add-int v5, v4, v0

    invoke-static {v1, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v6, v2, v5

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    sget-object v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v2, v2, v3

    move-object v4, v1

    move-object v7, v9

    move v9, v2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BII)I

    move-result v1

    move-object v3, v4

    if-eqz v1, :cond_2

    add-int/2addr v1, v5

    invoke-static {v3, v5, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    int-to-byte v3, v1

    aput-byte v3, p1, v10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {p1, v3, v11, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_encode([BI[SI)I

    move-result v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_0

    array-length v1, p1

    invoke-static {p1, v4, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    filled-new-array {p1, p2, v0, v2}, [[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public key encoding failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "secret key encoding failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "F encode failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "g encode failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "f encode failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method crypto_sign_open([B[B[B[B)I
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v1, v0, [S

    new-array v2, v0, [S

    new-array v0, v0, [S

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-static {v1, v4, p4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_decode([SI[BI)I

    move-result p4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v4, v6

    const/4 v5, -0x1

    if-eq p4, v4, :cond_0

    return v5

    :cond_0
    iget p4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static {v1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->to_ntt_monty([SI)V

    array-length p4, p1

    array-length v4, p3

    if-lt p4, v6, :cond_3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static {v0, v6, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SI[BI)I

    move-result p1

    if-eq p1, p4, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 p4, 0x0

    invoke-virtual {v3, p2, p4, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v3, p3, p4, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-static {v3, v2, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[SI)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array p2, p2, [S

    invoke-static {v2, v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->verify_raw([S[S[SI[S)I

    move-result p1

    if-nez p1, :cond_2

    return v5

    :cond_2
    return p4

    :cond_3
    :goto_0
    return v5
.end method

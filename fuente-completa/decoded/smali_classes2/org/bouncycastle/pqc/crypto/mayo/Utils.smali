.class Lorg/bouncycastle/pqc/crypto/mayo/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandP1P2(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;[J[B)V
    .locals 8

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP1Bytes()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP2Bytes()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [B

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getPkSeedBytes()I

    move-result v6

    invoke-static {p2, v6}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-direct {v5, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    const/4 p2, 0x1

    invoke-interface {v3, p2, v4}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {v3}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->getBlockSize()I

    move-result p2

    new-array v2, p2, [B

    new-array v4, p2, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    add-int v7, v6, p2

    if-gt v7, v0, :cond_0

    invoke-interface {v3, v2, v5, v4, v5}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    invoke-static {v4, v5, v1, v6, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v6, v7

    goto :goto_0

    :cond_0
    if-ge v6, v0, :cond_1

    invoke-interface {v3, v2, v5, v4, v5}, Lorg/bouncycastle/crypto/modes/CTRModeCipher;->processBlock([BI[BI)I

    sub-int/2addr v0, v6

    invoke-static {v4, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP1Limbs()I

    move-result p2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getP2Limbs()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getMVecLimbs()I

    move-result v0

    div-int v5, p2, v0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->getM()I

    move-result v6

    const/4 v2, 0x0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/mayo/Utils;->unpackMVecs([BI[JIII)V

    return-void
.end method

.method public static packMVecs([J[BIII)V
    .locals 9

    add-int/lit8 v0, p4, 0xf

    shr-int/lit8 v0, v0, 0x4

    shr-int/lit8 p4, p4, 0x1

    shl-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v1, p4

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p3, :cond_1

    move v5, v2

    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_0

    add-int v6, v4, v5

    aget-wide v6, p0, v6

    shl-int/lit8 v8, v5, 0x3

    add-int/2addr v8, p2

    invoke-static {v6, v7, p1, v8}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int v6, v4, v5

    aget-wide v6, p0, v6

    shl-int/lit8 v5, v5, 0x3

    add-int/2addr v5, p2

    invoke-static {v6, v7, p1, v5, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BII)V

    add-int/lit8 v3, v3, 0x1

    add-int/2addr p2, p4

    add-int/2addr v4, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static unpackMVecs([BI[JIII)V
    .locals 6

    add-int/lit8 v0, p5, 0xf

    shr-int/lit8 v0, v0, 0x4

    shr-int/lit8 p5, p5, 0x1

    shl-int/lit8 v1, v0, 0x3

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v1, p5

    add-int/lit8 p4, p4, -0x1

    mul-int v2, p4, v0

    add-int/2addr p3, v2

    mul-int v2, p4, p5

    add-int/2addr p1, v2

    :goto_0
    if-ltz p4, :cond_1

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_0

    add-int v3, p3, v2

    shl-int/lit8 v4, v2, 0x3

    add-int/2addr v4, p1

    invoke-static {p0, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int v3, p3, v2

    shl-int/lit8 v2, v2, 0x3

    add-int/2addr v2, p1

    invoke-static {p0, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

    move-result-wide v4

    aput-wide v4, p2, v3

    add-int/lit8 p4, p4, -0x1

    sub-int/2addr p3, v0

    sub-int/2addr p1, p5

    goto :goto_0

    :cond_1
    return-void
.end method

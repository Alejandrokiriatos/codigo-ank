.class Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
.super Ljava/lang/Object;


# static fields
.field private static final SALT_SIZE_BYTES:I = 0x10

.field private static final SEED_BYTES:I = 0x20


# instance fields
.field private final K_BYTE:I

.field private final N1N2_BYTE:I

.field private final N1N2_BYTE_64:I

.field private final N_BYTE:I

.field private final N_BYTE_64:I

.field private final N_MU:I

.field private final delta:I

.field private final fft:I

.field private final g:I

.field private final generatorPoly:[I

.field private final gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

.field private final k:I

.field private final mulParam:I

.field private final n:I

.field private final n1:I

.field private final pkSize:I

.field private final rejectionThreshold:J

.field private final w:I

.field private final wr:I


# direct methods
.method public constructor <init>(IIIIIIIIIII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iput-object p12, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    iput p10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_MU:I

    iput p11, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    shr-int/lit8 p5, p3, 0x7

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p5

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result p4

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    mul-int/2addr p2, p3

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result p3

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    and-int/lit8 p2, p1, 0x3f

    const-wide/16 p5, 0x1

    shl-long p2, p5, p2

    sub-long/2addr p2, p5

    new-instance p5, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-direct {p5, p4, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;-><init>(IIJ)V

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    int-to-long p1, p1

    const-wide/32 p3, 0x1000000

    div-long/2addr p3, p1

    mul-long/2addr p3, p1

    iput-wide p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:J

    return-void
.end method

.method private barrettReduce(I)I
    .locals 5

    int-to-long v0, p1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_MU:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    int-to-long v3, v2

    mul-long/2addr v0, v3

    long-to-int v0, v0

    sub-int/2addr p1, v0

    sub-int v0, p1, v2

    ushr-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    and-int/2addr v0, v2

    sub-int/2addr p1, v0

    return p1
.end method

.method private static compareU32(II)I
    .locals 1

    sub-int v0, p0, p1

    sub-int/2addr p1, p0

    or-int p0, v0, p1

    ushr-int/lit8 p0, p0, 0x1f

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private generateRandomSupport([IILorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;)V
    .locals 10

    mul-int/lit8 v0, p2, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v4, v0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_4

    if-ne v4, v0, :cond_0

    invoke-virtual {p3, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->xofGetBytes([BI)V

    move v4, v2

    :cond_0
    add-int/lit8 v5, v4, 0x1

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x3

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v6, v5

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->barrettReduce(I)I

    move-result v5

    move v6, v2

    :goto_1
    if-ge v6, v3, :cond_3

    aget v7, p1, v6

    if-ne v7, v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v3, 0x1

    aput v5, p1, v3

    move v3, v6

    goto :goto_0

    :cond_4
    return-void
.end method

.method private hashGJ([BI[B[BII[BIIB)V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length p2, p3

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, p2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0, p7, p8, p9}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0, p10}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update(B)V

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method private static hashHI([BI[BIB)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const/4 p1, 0x0

    invoke-virtual {v0, p2, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0, p4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update(B)V

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-void
.end method

.method private pkeEncrypt([J[J[B[B[BI)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v0, [J

    new-array v0, v0, [J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v2, v4, [B

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    move-object v3, p4

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->encode([B[BIII[I)V

    iget p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {p2, v2, p4, v3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encode([J[BII)V

    new-instance p4, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-direct {p4, p3, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;-><init>([BIIB)V

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSetRandom(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[J)V

    invoke-virtual {p4, p5, p6, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->init([BIIB)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, p4, v1, p5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeights2(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[JI)V

    iget-object p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {p5, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->vectMul([J[J[J)V

    iget p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    sub-int/2addr p5, v4

    invoke-static {v0, p3, v4, p5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[BII)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {p3, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->vectMul([J[J[J)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, p4, v1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeights2(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[JI)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {p3, v1, v3, v0, v3}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectTruncate([J)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    invoke-static {p3, v0, v3, p2, v3}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, p4, v0, p2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeights2(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[JI)V

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {p2, v0, v3, p1, v3}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method private vectSampleFixedWeights2(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[JI)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v1, v0, [I

    shl-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    invoke-virtual {p1, v2, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->xofGetBytes([BI)V

    const/4 p1, 0x0

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    move v0, p1

    :goto_0
    if-ge v0, p3, :cond_0

    aget v2, v1, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    sub-int/2addr v4, v0

    int-to-long v4, v4

    mul-long/2addr v2, v4

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_2

    move v3, p1

    :goto_2
    if-ge v0, p3, :cond_1

    aget v4, v1, v0

    aget v5, v1, v2

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->compareU32(II)I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    neg-int v0, v3

    and-int v3, v0, v2

    not-int v0, v0

    aget v4, v1, v2

    and-int/2addr v0, v4

    xor-int/2addr v0, v3

    aput v0, v1, v2

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2, v1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->writeSupportToVector([J[II)V

    return-void
.end method

.method private vectSetRandom(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[J)V
    .locals 6

    array-length v0, p2

    shl-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->xofGetBytes([BI)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p2, p1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    int-to-long v2, v2

    const-wide/16 v4, 0x40

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->bitMask(JJ)J

    move-result-wide v2

    and-long/2addr v0, v2

    aput-wide v0, p2, p1

    return-void
.end method

.method private vectTruncate([J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    add-int/lit8 v1, v1, 0x3f

    shr-int/lit8 v1, v1, 0x6

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method private writeSupportToVector([J[II)V
    .locals 11

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v1, v0, [I

    new-array v0, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_0

    aget v4, p2, v3

    ushr-int/lit8 v4, v4, 0x6

    aput v4, v1, v3

    aget v4, p2, v3

    and-int/lit8 v4, v4, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_1
    array-length v3, p1

    if-ge p2, v3, :cond_2

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_2
    if-ge v5, p3, :cond_1

    aget v6, v1, v5

    sub-int v6, p2, v6

    aget-wide v7, v0, v5

    neg-int v9, v6

    or-int/2addr v6, v9

    ushr-int/lit8 v6, v6, 0x1f

    xor-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    int-to-long v9, v6

    and-long v6, v7, v9

    or-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    aput-wide v3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public decaps([B[B[B)I
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v13, v1, [J

    new-array v14, v1, [J

    new-array v15, v1, [J

    new-array v1, v1, [J

    const/16 v2, 0x20

    new-array v3, v2, [B

    const/16 v4, 0x40

    new-array v5, v4, [B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    new-array v4, v6, [B

    new-array v8, v2, [B

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v9, v9, [B

    new-instance v10, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;

    move-object/from16 v16, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    move-object/from16 v23, v5

    const/4 v5, 0x1

    invoke-direct {v10, v12, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;-><init>([BIIB)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-virtual {v0, v1, v10, v4}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeight1([JLorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;I)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    const/4 v10, 0x0

    invoke-static {v13, v7, v10, v4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[BII)V

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    invoke-static {v14, v7, v4, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[BII)V

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v2, v15, v1, v13}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->vectMul([J[J[J)V

    invoke-direct {v0, v15}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectTruncate([J)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {v2, v14, v10, v15, v10}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v9, v15, v2, v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->decode([B[JII)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    move-object/from16 v25, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move/from16 v22, v1

    move/from16 v18, v2

    move/from16 v19, v4

    move/from16 v21, v5

    move-object/from16 v17, v9

    move/from16 v20, v10

    invoke-static/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->decode([B[BIIIII)V

    const/16 v1, 0x100

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    const/4 v4, 0x1

    invoke-static {v3, v1, v12, v2, v4}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashHI([BI[BIB)V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v1, v2

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/16 v2, 0x200

    const/4 v5, 0x0

    move/from16 v24, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v14

    move-object/from16 v4, v16

    const/4 v12, 0x0

    const/16 v14, 0x20

    move v8, v1

    move-object/from16 v16, v15

    move-object/from16 v1, v23

    move-object/from16 v15, v25

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashGJ([BI[B[BII[BIIB)V

    move-object v8, v3

    invoke-static {v1, v12, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/16 v2, 0x0

    invoke-static {v15, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    const/16 v6, 0x20

    move-object/from16 v3, p3

    move-object v5, v1

    move-object v2, v15

    move-object/from16 v1, v16

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkeEncrypt([J[J[B[B[BI)V

    move-object v15, v1

    move-object/from16 v16, v4

    move-object/from16 v23, v5

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    add-int/lit8 v5, v1, 0x20

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    array-length v9, v7

    const/4 v10, 0x3

    move-object/from16 v25, v2

    const/16 v2, 0x100

    move-object v3, v8

    const/4 v8, 0x0

    move-object/from16 v4, p3

    move-object/from16 v1, v18

    move-object/from16 v14, v25

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashGJ([BI[B[BII[BIIB)V

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {v2, v13, v12, v15, v12}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[JI[JI)Z

    move-result v2

    xor-int/lit8 v5, v2, 0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    move-object/from16 v4, v19

    invoke-static {v2, v4, v12, v14, v12}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[JI[JI)Z

    move-result v2

    if-nez v2, :cond_0

    move/from16 v5, v24

    :cond_0
    add-int/lit8 v5, v5, -0x1

    move v10, v12

    :goto_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    if-ge v10, v2, :cond_1

    aget-byte v2, v11, v10

    and-int/2addr v2, v5

    aget-byte v6, v1, v10

    not-int v7, v5

    and-int/2addr v6, v7

    xor-int/2addr v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v13}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v15}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v14}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    neg-int v1, v5

    return v1
.end method

.method public encaps([B[B[B[B[BLjava/security/SecureRandom;)V
    .locals 14

    move-object/from16 v11, p4

    move-object/from16 v1, p6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    new-array v4, v6, [B

    const/16 v2, 0x20

    new-array v3, v2, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v12, v2, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v13, v2, [J

    invoke-virtual {v1, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    array-length v1, v11

    const/4 v2, 0x1

    const/16 v5, 0x100

    invoke-static {v3, v5, v11, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashHI([BI[BIB)V

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/16 v2, 0x200

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashGJ([BI[B[BII[BIIB)V

    move-object v7, v3

    const/16 v6, 0x20

    move-object/from16 v5, p3

    move-object v3, v11

    move-object v1, v12

    move-object v2, v13

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkeEncrypt([J[J[B[B[BI)V

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static {v7}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public genKeyPair([B[BLjava/security/SecureRandom;)V
    .locals 10

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v2, 0x40

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v4, v3, [J

    new-array v5, v3, [J

    new-array v3, v3, [J

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;

    const/4 v6, 0x1

    invoke-direct {p3, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;-><init>([BB)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    add-int/2addr v7, v0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v1, v8, p2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->nextBytes([B)V

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    add-int/2addr v7, v0

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-virtual {p3, p2, v7, v9}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->nextBytes([BII)V

    const/16 v7, 0x200

    const/4 v9, 0x2

    invoke-static {v2, v7, v1, v0, v9}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->hashHI([BI[BIB)V

    invoke-virtual {p3, v2, v8, v0, v6}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->init([BIIB)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-virtual {p0, v5, p3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeight1([JLorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-virtual {p0, v4, p3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSampleFixedWeight1([JLorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;I)V

    invoke-static {v2, v0, p1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3, v2, v0, v0, v6}, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->init([BIIB)V

    invoke-direct {p0, p3, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->vectSetRandom(Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;[J)V

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gf:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {p3, v3, v5, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->vectMul([J[J[J)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {p3, v4, v8, v3, v8}, Lorg/bouncycastle/util/Longs;->xorTo(I[JI[JI)V

    array-length p3, p1

    sub-int/2addr p3, v0

    invoke-static {p1, v0, p3, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([BII[J)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    invoke-static {v2, v8, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->pkSize:I

    invoke-static {p1, v8, p2, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clear([J)V

    return-void
.end method

.method public vectSampleFixedWeight1([JLorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v0, v0, [I

    invoke-direct {p0, v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomSupport([IILorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->writeSupportToVector([J[II)V

    return-void
.end method

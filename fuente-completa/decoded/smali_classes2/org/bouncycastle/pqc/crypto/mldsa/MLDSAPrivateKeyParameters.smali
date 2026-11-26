.class public Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;


# static fields
.field public static final BOTH:I = 0x0

.field public static final EXPANDED_KEY:I = 0x2

.field public static final SEED_ONLY:I = 0x1


# instance fields
.field final k:[B

.field private final prefFormat:I

.field final rho:[B

.field final s1:[B

.field final s2:[B

.field private final seed:[B

.field final t0:[B

.field private final t1:[B

.field final tr:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V
    .locals 11

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getEngine(Ljava/security/SecureRandom;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;

    move-result-object v2

    array-length p1, p2

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/16 v3, 0x20

    if-ne p1, v3, :cond_0

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->generateKeyPairInternal([B)[[B

    move-result-object p1

    aget-object p2, p1, v10

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    aget-object p2, p1, v0

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    aget-object p2, p1, v9

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    const/4 p2, 0x3

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    const/4 p2, 0x4

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    const/4 p2, 0x5

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    const/4 p2, 0x6

    aget-object p2, p1, p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    const/4 p2, 0x7

    aget-object p1, p1, p2

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    goto :goto_0

    :cond_0
    move p1, v3

    invoke-static {p2, v10, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    const/16 v0, 0x40

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    const/16 p1, 0x80

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumL()I

    move-result v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v6

    mul-int/2addr v0, v6

    add-int/2addr v0, p1

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    iput-object v6, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result p1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v7

    mul-int/2addr p1, v7

    add-int/2addr p1, v0

    invoke-static {p2, v0, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->getDilithiumK()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1a0

    add-int/2addr v0, p1

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iput-object v8, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAEngine;->deriveT1([B[B[B[B[B[B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    :goto_0
    if-eqz p3, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getT1()[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "passed in public key does not match private values"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    if-eqz p1, :cond_3

    move v9, v10

    :cond_3
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->prefFormat:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-static {p7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    invoke-static {p8}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {p9}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->prefFormat:I

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->prefFormat:I

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    filled-new-array/range {v0 .. v5}, [[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getK()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->k:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getParametersWithFormat(I)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->prefFormat:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    if-eqz v0, :cond_3

    :goto_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;I)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no seed available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getPreferredFormat()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->prefFormat:I

    return v0
.end method

.method public getPrivateKey()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B)V

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getS2()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->s2:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT0()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t0:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT1()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->t1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getTr()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->tr:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

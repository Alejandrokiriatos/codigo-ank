.class public Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;


# instance fields
.field final rho:[B

.field final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object p1

    array-length v1, p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberIndCpaPublicKeyBytes()I

    move-result v2

    if-ne v1, v2, :cond_1

    array-length v1, p2

    add-int/lit8 v1, v1, -0x20

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    array-length v1, p2

    add-int/lit8 v1, v1, -0x20

    array-length v2, p2

    invoke-static {p2, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->checkModulus([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Modulus check failed for ML-KEM public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'encoding\' has invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;[B[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;

    move-result-object p1

    array-length v0, p2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->getKyberPolyVecBytes()I

    move-result v1

    if-ne v0, v1, :cond_2

    array-length v0, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMEngine;->checkModulus([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Modulus check failed for ML-KEM public key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'rho\' has invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'t\' has invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getEncoded([B[B)[B
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->getEncoded([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRho()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getT()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;->t:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

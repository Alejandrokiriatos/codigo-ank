.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'random\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 9

    if-eqz p1, :cond_0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->getParameterSet()Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v3

    new-array v4, v3, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleRmBytes()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleRm([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->r()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->m()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes([BI)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v7

    invoke-virtual {v1, v4, v7}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes([BI)V

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v7, v4, v6, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v7, v8, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->publicKey:[B

    invoke-virtual {v2, v5, v1, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->encrypt(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;[B)[B

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result v0

    invoke-static {v8, v6, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v8}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'recipientKey\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

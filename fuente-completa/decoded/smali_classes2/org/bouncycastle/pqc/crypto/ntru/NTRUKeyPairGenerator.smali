.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->getParameterSet()Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleFgBytes()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->keypair([B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->publicKey:[B

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v1

    new-array v1, v1, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/ntru/OWCPAKeyPair;->privateKey:[B

    invoke-static {v2, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    invoke-direct {v4, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

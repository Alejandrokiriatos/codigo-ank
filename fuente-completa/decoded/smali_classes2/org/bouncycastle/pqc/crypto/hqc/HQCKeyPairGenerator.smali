.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getPublicKeyBytes()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getSecretKeyBytes()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->genKeyPair([B[BLjava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

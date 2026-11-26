.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

.field private params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

.field private pk_size:I

.field private sk_size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_keypair([B[B)[[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    const/4 v1, 0x1

    aget-object v4, v0, v1

    const/4 v1, 0x2

    aget-object v5, v0, v1

    const/4 v1, 0x3

    aget-object v6, v0, v1

    const/4 v1, 0x0

    aget-object v7, v0, v1

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    aget-object v0, v0, v1

    invoke-direct {v4, v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-direct {v2, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    const/4 p1, 0x1

    shl-int v0, p1, v1

    const/16 v1, 0x400

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x5

    goto :goto_2

    :cond_0
    const/16 v1, 0x100

    if-eq v0, v1, :cond_4

    const/16 v1, 0x200

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v1, 0x7

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x6

    :goto_2
    mul-int/lit8 v3, v0, 0xe

    div-int/2addr v3, v2

    add-int/2addr v3, p1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    mul-int/lit8 v1, v1, 0x2

    mul-int/2addr v1, v0

    div-int/2addr v1, v2

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    return-void
.end method

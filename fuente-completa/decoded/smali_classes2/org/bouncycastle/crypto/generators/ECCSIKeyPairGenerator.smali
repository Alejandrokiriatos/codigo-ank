.class public Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private G:Lorg/bouncycastle/math/ec/ECPoint;

.field private digest:Lorg/bouncycastle/crypto/Digest;

.field private parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

.field private q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getId()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getKPAK()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    const/16 v3, 0x100

    invoke-static {v3, v0}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->G:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->G:Lorg/bouncycastle/math/ec/ECPoint;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v7, v4

    invoke-interface {v6, v4, v5, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v2, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v2, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v2, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->q:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->computeSSK(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v4, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;

    invoke-direct {v3, v0, v1}, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;)V

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    check-cast p1, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->q:Ljava/math/BigInteger;

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->G:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->digest:Lorg/bouncycastle/crypto/Digest;

    new-instance p1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/ECCSIKeyPairGenerator;->parameters:Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECCSIKeyGenerationParameters;->getN()I

    move-result v0

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const-string v3, "ECCSI"

    invoke-direct {p1, v3, v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

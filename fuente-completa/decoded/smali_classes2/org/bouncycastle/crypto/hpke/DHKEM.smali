.class Lorg/bouncycastle/crypto/hpke/DHKEM;
.super Lorg/bouncycastle/crypto/hpke/KEM;


# instance fields
.field private Nenc:I

.field private Nsecret:I

.field private Nsk:I

.field private bitmask:B

.field domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field private final kemId:S

.field private kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

.field private rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;


# direct methods
.method protected constructor <init>(S)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/hpke/KEM;-><init>()V

    iput-short p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    const/16 v2, 0x21

    const/16 v3, 0x40

    const/4 v4, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string p1, "P-521"

    invoke-static {p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getDomainParameters(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance p1, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;

    new-instance v1, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    invoke-direct {p1, v1}, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iput-byte v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    const/16 p1, 0x42

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    const/16 p1, 0x85

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    new-instance p1, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    :goto_0
    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void

    :pswitch_1
    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string p1, "P-384"

    invoke-static {p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getDomainParameters(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance p1, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iput-byte v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    const/16 p1, 0x61

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    new-instance p1, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :pswitch_2
    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string p1, "P-256"

    invoke-static {p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getDomainParameters(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    new-instance p1, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/ECDHCBasicAgreement;-><init>()V

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;-><init>(Lorg/bouncycastle/crypto/BasicAgreement;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iput-byte v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    const/16 p1, 0x41

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    new-instance p1, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/ECKeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ECKeyGenerationParameters;-><init>(Lorg/bouncycastle/crypto/params/ECDomainParameters;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p1, v4}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    new-instance p1, Lorg/bouncycastle/crypto/agreement/X448Agreement;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/agreement/X448Agreement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iput v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    const/16 p1, 0x38

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    iput p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    new-instance p1, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/crypto/params/X448KeyGenerationParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/X448KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    new-instance p1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    iput v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    new-instance p1, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    new-instance v0, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/hpke/DHKEM;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ExtractAndExpand([B[B)[B
    .locals 8

    const-string v0, "KEM"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v1, 0x0

    const-string v2, "eae_prk"

    invoke-virtual {v0, v1, v4, v2, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v5, "shared_secret"

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsecret:I

    move-object v6, p2

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method private static calculateRawAgreement(Lorg/bouncycastle/crypto/RawAgreement;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-interface {p0}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result p1

    new-array p1, p1, [B

    const/4 v0, 0x0

    invoke-interface {p0, p2, p1, v0}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    return-object p1
.end method

.method private static getDomainParameters(Ljava/lang/String;)Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-static {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;-><init>(Lorg/bouncycastle/asn1/x9/X9ECParameters;)V

    return-object v0
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private validateSk(Ljava/math/BigInteger;)Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x2

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result p1

    if-ge p1, v1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v3
.end method


# virtual methods
.method protected AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p3

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/RawAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/RawAgreement;->getAgreementSize()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-interface {v3, p1, v2, v1}, Lorg/bouncycastle/crypto/RawAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p2

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object p1

    filled-new-array {p1, v0}, [[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B
    .locals 3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->calculateRawAgreement(Lorg/bouncycastle/crypto/RawAgreement;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    const-string v0, "KEM"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/16 v1, 0x20

    const-string v2, "dkp_prk"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_3

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v3, v4, v2, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    int-to-byte v1, v0

    const/4 v8, 0x1

    new-array v6, v8, [B

    aput-byte v1, v6, p1

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v5, "candidate"

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v1

    aget-byte v2, v1, p1

    iget-byte v5, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->bitmask:B

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->validateSk(Ljava/math/BigInteger;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance v1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DeriveKeyPairError"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v3, v4, v2, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    const-string v5, "sk"

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v0, v3, v4, v2, p1}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    const-string v5, "sk"

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    if-eqz p1, :cond_7

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    if-ne v0, v1, :cond_6

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x21

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "invalid kem id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    if-nez p2, :cond_1

    new-instance p2, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {p2}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    move-object p2, v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;-><init>([B)V

    if-nez p2, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    move-result-object p2

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;-><init>([B)V

    if-nez p2, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p2

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'skEncoded\' has invalid length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'skEncoded\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2

    if-eqz p1, :cond_4

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    if-ne v0, v1, :cond_3

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->domainParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'pkEncoded\' has invalid format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;-><init>([B)V

    return-object v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    return-object v0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'pkEncoded\' has invalid length"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'pkEncoded\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object p1

    return-object p1
.end method

.method protected Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->rawAgreement:Lorg/bouncycastle/crypto/RawAgreement;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->calculateRawAgreement(Lorg/bouncycastle/crypto/RawAgreement;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object p1

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->ExtractAndExpand([B[B)[B

    move-result-object p1

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    return-object p1
.end method

.method public GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kpGen:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nsk:I

    check-cast p1, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X448PrivateKeyParameters;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X448;->clampPrivateKey([B)V

    return-object p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519;->clampPrivateKey([B)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->kemId:S

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "invalid kem id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    return-object p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X448PublicKeyParameters;->getEncoded()[B

    move-result-object p1

    return-object p1

    :cond_1
    check-cast p1, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getEncryptionSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/hpke/DHKEM;->Nenc:I

    return v0
.end method

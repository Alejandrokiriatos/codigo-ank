.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    const/16 v1, 0x60

    new-array v3, v1, [B

    invoke-virtual {v0, v3, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    const/16 v0, 0x40

    invoke-static {v3, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>([B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;-><init>()V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;->ml_kem_768:Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;

    invoke-direct {v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMParameters;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/prng/FixedSecureRandom;-><init>([B)V

    new-instance v0, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v2, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    invoke-direct {v2, v1}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    invoke-direct {v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;-><init>([BLorg/bouncycastle/pqc/crypto/mlkem/MLKEMPrivateKeyParameters;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;)V

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method

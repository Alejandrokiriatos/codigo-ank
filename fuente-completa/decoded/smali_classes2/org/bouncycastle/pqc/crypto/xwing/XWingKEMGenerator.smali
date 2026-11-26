.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# static fields
.field private static final XWING_LABEL:[B


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\.//^\\"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->XWING_LABEL:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method static computeSSX(Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result p1

    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    return-object p1
.end method

.method static computeSharedSecret([B[B[B[B)[B
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p3

    invoke-virtual {v0, p3, v2, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p2

    invoke-virtual {v0, p2, v2, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length p1, p0

    invoke-virtual {v0, p0, v2, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    sget-object p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->XWING_LABEL:[B

    array-length p1, p0

    invoke-virtual {v0, p0, v2, p1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    const/16 p0, 0x20

    new-array p0, p0, [B

    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-object p0
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 6

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMPublicKeyParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/mlkem/MLKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v4, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    invoke-static {p1, v3}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->computeSSX(Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;)[B

    move-result-object p1

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v0

    invoke-static {v1, v0, v4, p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->computeSharedSecret([B[B[B[B)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object p1
.end method

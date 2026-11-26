.class public Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$AADStream;,
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;,
        Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;
    }
.end annotation


# static fields
.field private static final KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;


# instance fields
.field private final encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

.field private final keySize:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSecretKeySizeProvider;->INSTANCE:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    sput-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->KEY_SIZE_PROVIDER:Lorg/bouncycastle/operator/SecretKeySizeProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/SecretKeySizeProvider;->getKeySize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v2, "incorrect keySize for encryptionOID passed to builder."

    if-eqz v1, :cond_2

    const/16 p1, 0xa8

    if-eq p2, p1, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    return-void

    :cond_2
    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->desCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x38

    if-eq p2, p1, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iput p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    return-void

    :cond_5
    if-lez v0, :cond_7

    if-ne v0, p2, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    iput p2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    return-object p0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createKeyGenerator(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ILjava/security/SecureRandom;)Lorg/bouncycastle/crypto/CipherKeyGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CipherKeyGenerator;->generateKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->build([B)Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object v0

    return-object v0
.end method

.method public build([B)Lorg/bouncycastle/operator/OutputEncryptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    :cond_0
    iget v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->keySize:I

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    array-length v3, p1

    if-eq v1, v3, :cond_2

    const/16 v1, 0x38

    if-eq v0, v1, :cond_2

    array-length v1, p1

    if-eq v1, v2, :cond_2

    const/16 v1, 0xa8

    if-eq v0, v1, :cond_2

    array-length v0, p1

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "attempt to create encryptor with the wrong sized key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->helper:Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->isAuthEnveloped(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSAuthOutputEncryptor;-><init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/params/KeyParameter;Ljava/security/SecureRandom;)V

    return-object v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->encryptionOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder$CMSOutputEncryptor;-><init>(Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/crypto/params/KeyParameter;Ljava/security/SecureRandom;)V

    return-object v0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcCMSContentEncryptorBuilder;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

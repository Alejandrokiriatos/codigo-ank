.class Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSOutEncryptor"
.end annotation


# instance fields
.field protected algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field protected cipher:Ljavax/crypto/Cipher;

.field protected encKey:Ljavax/crypto/SecretKey;

.field final synthetic this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;-><init>(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)V

    return-void
.end method

.method private applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$000()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p2, p1, p3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "unable to initialize cipher: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "unable to encode enc algorithm parameters"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method protected init(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->encKey:Ljavax/crypto/SecretKey;

    invoke-static {p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p5

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createCipher(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    if-nez p4, :cond_0

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-static {p4}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p4

    invoke-virtual {p4, p2, p3, p5}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->generateParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_0
    const-string v0, "unable to initialize cipher: "

    const/4 v1, 0x1

    if-eqz p4, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-static {v2}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object v2

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1, v1, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v1, p3, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->this$0:Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    invoke-static {p4}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->access$100(Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;)Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->getAlgorithmIdentifier(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p3, p5}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder$CMSOutEncryptor;->applyKdf(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    :cond_3
    return-void

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

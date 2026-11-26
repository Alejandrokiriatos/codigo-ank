.class public Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final challengeEncAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private final owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challengeEncAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    return-object p0
.end method


# virtual methods
.method public addChallenge(Lorg/bouncycastle/cms/RecipientInfoGenerator;Lorg/bouncycastle/asn1/x509/GeneralName;[B)Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;-><init>()V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V

    new-instance p1, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    new-instance v1, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;

    invoke-direct {v1, p3, p2}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;-><init>([BLorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->getEncoded()[B

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>([B)V

    new-instance p2, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    iget-object p3, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challengeEncAlg:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, p3}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string p3, "BC"

    invoke-virtual {p2, p3}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/cms/jcajce/JceCMSContentEncryptorBuilder;->build()Lorg/bouncycastle/operator/OutputEncryptor;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/CMSEnvelopedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEnvelopedData;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSEnvelopedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance p3, Lorg/bouncycastle/asn1/cmp/Challenge;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v1

    invoke-direct {p3, v0, v1, p1}, Lorg/bouncycastle/asn1/cmp/Challenge;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/asn1/cms/EnvelopedData;)V

    :goto_0
    invoke-virtual {p2, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance p3, Lorg/bouncycastle/asn1/cmp/Challenge;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->owfCalculator:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    invoke-direct {p3, v0, p1}, Lorg/bouncycastle/asn1/cmp/Challenge;-><init>([BLorg/bouncycastle/asn1/cms/EnvelopedData;)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string p3, "unable to encrypt challenge"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    const-string p3, "unable to calculate witness"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public build()Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;
    .locals 3

    new-instance v0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;->challenges:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder$1;

    invoke-direct {v2, p0}, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder$1;-><init>(Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContentBuilder;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;-><init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

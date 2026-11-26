.class public Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;
.super Lorg/bouncycastle/cms/CMSEncryptedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEncryptedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/OutputEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v1, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->unprotectedAttributeGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->encryptedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/cms/EncryptedData;

    invoke-direct {v2, p1, p2}, Lorg/bouncycastle/asn1/cms/EncryptedData;-><init>(Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/cms/CMSEncryptedData;

    invoke-direct {p1, v0}, Lorg/bouncycastle/cms/CMSEncryptedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p1

    :catch_0
    new-instance p1, Lorg/bouncycastle/cms/CMSException;

    const-string p2, ""

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSEncryptedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/cms/CMSEncryptedData;

    move-result-object p1

    return-object p1
.end method

.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;-><init>()V

    return-void
.end method

.method private doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-interface {p2, v1}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/cms/CMSAlgorithm;->ChaCha20Poly1305:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3, p2}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v3, p2}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    :goto_0
    move-object v8, v3

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {p2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getMAC()[B

    move-result-object v2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/cms/CMSUtils;->getEncryptedContentInfo(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputEncryptor;[B)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v7

    iget-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {p1}, Lorg/bouncycastle/cms/CMSUtils;->getAttrDLSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v10

    new-instance p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authEnvelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;

    iget-object v5, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6, v0}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    new-instance v9, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v9, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-direct {p1, p2, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p2, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p2

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to process authenticated content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataGenerator;->doGenerate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    move-result-object p1

    return-object p1
.end method

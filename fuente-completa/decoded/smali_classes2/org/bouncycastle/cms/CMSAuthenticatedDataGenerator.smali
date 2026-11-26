.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;
.super Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Lorg/bouncycastle/cms/CMSAuthenticatedData;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v3

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v3, v4}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    const-string v4, "unable to perform MAC calculation: "

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v6}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    new-instance v6, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v9

    invoke-virtual {v1, v5, v7, v8, v9}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->getBaseParameters(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v7, :cond_0

    new-instance v7, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;

    invoke-direct {v7}, Lorg/bouncycastle/cms/DefaultAuthenticatedAttributeTableGenerator;-><init>()V

    iput-object v7, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    :cond_0
    new-instance v14, Lorg/bouncycastle/asn1/DERSet;

    iget-object v7, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->authGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-interface {v7, v5}, Lorg/bouncycastle/cms/CMSAttributeTableGenerator;->getAttributes(Ljava/util/Map;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1EncodableVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v5

    invoke-direct {v14, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    :try_start_1
    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    const-string v7, "DER"

    invoke-virtual {v14, v7}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    new-instance v15, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v5

    invoke-direct {v15, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v4}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v16

    new-instance v13, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v13, v0, v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v8, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v9, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v10, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v12

    invoke-direct/range {v8 .. v16}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to perform digest calculation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_1
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v6, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-interface {v0, v6}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    new-instance v6, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    new-instance v14, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v5

    invoke-direct {v14, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v4, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->unauthGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-static {v4}, Lorg/bouncycastle/cms/CMSUtils;->getAttrBERSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v15

    new-instance v12, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-direct {v12, v0, v6}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v7, Lorg/bouncycastle/asn1/cms/AuthenticatedData;

    iget-object v8, v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    new-instance v9, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v3}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-interface/range {p2 .. p2}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v15}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Set;)V

    move-object v8, v7

    :goto_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v3, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/cms/CMSAuthenticatedData;

    new-instance v4, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;

    invoke-direct {v4, v1, v2}, Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator$1;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataGenerator;Lorg/bouncycastle/operator/DigestCalculator;)V

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/cms/CMSAuthenticatedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v3

    :catch_2
    move-exception v0

    new-instance v2, Lorg/bouncycastle/cms/CMSException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

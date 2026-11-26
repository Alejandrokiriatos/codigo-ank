.class public Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;
.super Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;
    }
.end annotation


# instance fields
.field private berEncodeRecipientSet:Z

.field private bufferSize:I

.field private macCalculator:Lorg/bouncycastle/operator/MacCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthenticatedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public open(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;)Ljava/io/OutputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->macCalculator:Lorg/bouncycastle/operator/MacCalculator;

    :try_start_0
    invoke-interface {p3}, Lorg/bouncycastle/operator/MacCalculator;->getKey()Lorg/bouncycastle/operator/GenericKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->getRecipentInfos(Lorg/bouncycastle/operator/GenericKey;Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    new-instance v7, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-direct {v7, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    sget-object p2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->authenticatedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    new-instance v8, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v8, p2, v2, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;IZ)V

    new-instance p2, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/AuthenticatedData;->calculateVersion(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v8, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-static {v8, p2}, Lorg/bouncycastle/cms/CMSUtils;->addOriginatorInfoToGenerator(Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iget-boolean p2, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->berEncodeRecipientSet:Z

    invoke-static {v0, v8, p2}, Lorg/bouncycastle/cms/CMSUtils;->addRecipientInfosToGenerator(Lorg/bouncycastle/asn1/ASN1EncodableVector;Lorg/bouncycastle/asn1/BERSequenceGenerator;Z)V

    invoke-interface {p3}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getEncoded()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p4, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-interface {p4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p2, v2, v1, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v8, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_0
    new-instance v9, Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-direct {v9, p2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, p1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->getRawOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    iget v0, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->bufferSize:I

    invoke-static {p2, v2, v1, v0}, Lorg/bouncycastle/cms/CMSUtils;->createBEROctetOutputStream(Ljava/io/OutputStream;IZI)Ljava/io/OutputStream;

    move-result-object p2

    if-eqz p4, :cond_1

    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface {p4}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/util/io/TeeOutputStream;

    invoke-interface {p3}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    :goto_0
    move-object v6, v0

    new-instance v1, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;

    move-object v2, p0

    move-object v5, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator$CmsAuthenticatedDataOutputStream;-><init>(Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "exception decoding algorithm parameters."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setBEREncodeRecipients(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->berEncodeRecipientSet:Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/cms/CMSAuthenticatedDataStreamGenerator;->bufferSize:I

    return-void
.end method

.class public Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;
.super Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {p2, v1}, Lorg/bouncycastle/util/io/Streams;->pipeAll(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encapsulating content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_0
    move-object p2, v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    if-eqz p1, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object p1, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->dataUri:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance p1, Lorg/bouncycastle/asn1/cms/TimeStampedData;

    iget-object v2, p0, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->metaData:Lorg/bouncycastle/asn1/cms/MetaData;

    new-instance v3, Lorg/bouncycastle/asn1/cms/Evidence;

    new-instance v4, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampAndCRL;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/cms/Evidence;-><init>(Lorg/bouncycastle/asn1/cms/TimeStampTokenEvidence;)V

    invoke-direct {p1, v0, v2, p2, v3}, Lorg/bouncycastle/asn1/cms/TimeStampedData;-><init>(Lorg/bouncycastle/asn1/ASN1IA5String;Lorg/bouncycastle/asn1/cms/MetaData;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/cms/Evidence;)V

    new-instance p2, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    new-instance v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->timestampedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p2, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object p2
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampToken;[B)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/tsp/cms/CMSTimeStampedDataGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/io/InputStream;)Lorg/bouncycastle/tsp/cms/CMSTimeStampedData;

    move-result-object p1

    return-object p1
.end method

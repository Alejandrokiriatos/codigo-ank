.class public Lorg/bouncycastle/cms/CMSSignedDataGenerator;
.super Lorg/bouncycastle/cms/CMSSignedGenerator;


# instance fields
.field private isDefiniteLength:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSSignedGenerator;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    return-void
.end method

.method private static createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/cms/CMSUtils;->createDlSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Lorg/bouncycastle/cms/CMSUtils;->createBerSetFromList(Ljava/util/List;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0
.end method

.method private generateSignerInfo(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getCalculatedDigest()[B

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method private writeContentViaSignerGens(Lorg/bouncycastle/cms/CMSTypedData;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-static {v0, p2}, Lorg/bouncycastle/cms/CMSUtils;->attachSignersToOutputStream(Ljava/util/Collection;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/cms/CMSUtils;->getSafeOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p2

    :try_start_0
    invoke-interface {p1, p2}, Lorg/bouncycastle/cms/CMSTypedData;->write(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "data processing exception: "

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
.method public generate(Lorg/bouncycastle/cms/CMSTypedData;)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    iget-object v4, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digestAlgIdFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/cms/CMSUtils;->addDigestAlgs(Ljava/util/Set;Lorg/bouncycastle/cms/SignerInformation;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-interface {p1}, Lorg/bouncycastle/cms/CMSTypedData;->getContent()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->writeContentViaSignerGens(Lorg/bouncycastle/cms/CMSTypedData;Ljava/io/OutputStream;)V

    iget-boolean v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_1

    :cond_1
    new-instance v3, Lorg/bouncycastle/asn1/BEROctetString;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B)V

    :goto_1
    move-object v4, v3

    goto :goto_2

    :cond_2
    invoke-direct {p0, p1, v4}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->writeContentViaSignerGens(Lorg/bouncycastle/cms/CMSTypedData;Ljava/io/OutputStream;)V

    :cond_3
    :goto_2
    iget-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-direct {p0, v3, v2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generateSignerInfo(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cms/SignerInfo;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->certs:Ljava/util/List;

    iget-boolean v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    invoke-static {p2, v3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v8

    iget-object p2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->crls:Ljava/util/List;

    iget-boolean v3, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    invoke-static {p2, v3}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->createSetFromList(Ljava/util/List;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v9

    new-instance v7, Lorg/bouncycastle/asn1/cms/ContentInfo;

    invoke-direct {v7, v2, v4}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v5, Lorg/bouncycastle/asn1/cms/SignedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->convertToDlSet(Ljava/util/Set;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v6

    new-instance v10, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v10, v1}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/asn1/cms/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    new-instance p2, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v0, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p2, v0, v5}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Lorg/bouncycastle/cms/CMSProcessable;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    return-object v0
.end method

.method public generateCounterSigners(Lorg/bouncycastle/cms/SignerInformation;)Lorg/bouncycastle/cms/SignerInformationStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->digests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInformation;->getSignature()[B

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->_signers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInformation;

    invoke-virtual {v3}, Lorg/bouncycastle/cms/SignerInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {v4, v3, v1, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->writeContentViaSignerGens(Lorg/bouncycastle/cms/CMSTypedData;Ljava/io/OutputStream;)V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->signerGens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generateSignerInfo(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/SignerInfo;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/cms/SignerInformation;

    invoke-direct {v4, v3, v1, v0, v1}, Lorg/bouncycastle/cms/SignerInformation;-><init>(Lorg/bouncycastle/asn1/cms/SignerInfo;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSProcessable;[B)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationStore;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/SignerInformationStore;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setDefiniteLengthEncoding(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->isDefiniteLength:Z

    return-void
.end method

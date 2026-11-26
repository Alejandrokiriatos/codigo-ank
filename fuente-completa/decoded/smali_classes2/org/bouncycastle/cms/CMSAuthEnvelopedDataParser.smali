.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;
.super Lorg/bouncycastle/cms/CMSContentInfoParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;
    }
.end annotation


# instance fields
.field private authAttrNotRead:Z

.field private authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

.field private authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

.field private final authEvnData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

.field private final encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final localMacProvider:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

.field private originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

.field private final recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

.field private unauthAttrNotRead:Z

.field private unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/CMSContentInfoParser;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrNotRead:Z

    iput-boolean p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrNotRead:Z

    new-instance p1, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->_contentInfo:Lorg/bouncycastle/asn1/cms/ContentInfoParser;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/ContentInfoParser;->getContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1SequenceParser;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;-><init>(Lorg/bouncycastle/asn1/ASN1SequenceParser;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authEvnData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/cms/OriginatorInformation;

    invoke-direct {v1, v0}, Lorg/bouncycastle/cms/OriginatorInformation;-><init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getAuthEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v3, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

    invoke-direct {v3, p1, p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;-><init>(Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)V

    iput-object v3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->localMacProvider:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

    new-instance p1, Lorg/bouncycastle/cms/CMSProcessableInputStream;

    new-instance v4, Lorg/bouncycastle/cms/InputStreamWithMAC;

    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getEncryptedContent(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/cms/InputStreamWithMAC;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/cms/MACProvider;)V

    invoke-direct {p1, v4}, Lorg/bouncycastle/cms/CMSProcessableInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;

    invoke-direct {v4, p0, v1, p1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;-><init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;Lorg/bouncycastle/cms/CMSReadable;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->setSecureReadable(Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;)V

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/cms/CMSEnvelopedHelper;->buildRecipientInformationStore(Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->localMacProvider:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object p0
.end method

.method static synthetic access$202(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object p1
.end method

.method private getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authEvnData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1SetParser;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrNotRead:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrSet:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method


# virtual methods
.method public getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrNotRead:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/AttributeTable;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/AttributeTable;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    iput-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

.method public getContentDigest()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/bouncycastle/asn1/cms/CMSAttributes;->messageDigest:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->get(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/cms/Attribute;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/Attribute;->getAttrValues()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncAlgOID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncAlgParams()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->encodeObj(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception getting encryption parameters "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncryptionAlgOID()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->encAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getMac()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->localMacProvider:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->getMAC()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->originatorInfo:Lorg/bouncycastle/cms/OriginatorInformation;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->recipientInfoStore:Lorg/bouncycastle/cms/RecipientInformationStore;

    return-object v0
.end method

.method public getUnauthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrNotRead:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrNotRead:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->authEvnData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getUnauthAttrs()Lorg/bouncycastle/asn1/ASN1SetParser;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSUtils;->getAttributesTable(Lorg/bouncycastle/asn1/ASN1SetParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->unauthAttrs:Lorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method

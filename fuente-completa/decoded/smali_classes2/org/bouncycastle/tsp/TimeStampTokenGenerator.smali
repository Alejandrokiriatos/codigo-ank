.class public Lorg/bouncycastle/tsp/TimeStampTokenGenerator;
.super Ljava/lang/Object;


# static fields
.field public static final R_HUNDREDTHS_OF_SECONDS:I = 0x2

.field public static final R_MICROSECONDS:I = 0x2

.field public static final R_MILLISECONDS:I = 0x3

.field public static final R_SECONDS:I = 0x0

.field public static final R_TENTHS_OF_SECONDS:I = 0x1


# instance fields
.field private accuracyMicros:I

.field private accuracyMillis:I

.field private accuracySeconds:I

.field private attrCerts:Ljava/util/List;

.field private certs:Ljava/util/List;

.field private crls:Ljava/util/List;

.field private locale:Ljava/util/Locale;

.field ordering:Z

.field private otherRevoc:Ljava/util/Map;

.field private resolution:I

.field private signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

.field tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

.field private tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    const/4 v2, -0x1

    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    iput v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    iput-boolean v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    iput-object v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->hasAssociatedCertificate()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p3

    invoke-static {p3}, Lorg/bouncycastle/tsp/TSPUtil;->validateCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/cert/X509CertificateHolder;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    new-instance v2, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-interface {p2}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    if-eqz p4, :cond_0

    new-instance p2, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance p4, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-virtual {p3}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-direct {p4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-direct {p2, p4}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {p3}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p3

    new-instance v1, Lorg/bouncycastle/asn1/x509/IssuerSerial;

    invoke-direct {v1, p2, p3}, Lorg/bouncycastle/asn1/x509/IssuerSerial;-><init>(Lorg/bouncycastle/asn1/x509/GeneralNames;Lorg/bouncycastle/asn1/ASN1Integer;)V

    :cond_0
    sget-object p2, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lorg/bouncycastle/asn1/ess/ESSCertID;

    invoke-direct {p2, v2, v1}, Lorg/bouncycastle/asn1/ess/ESSCertID;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    new-instance p3, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance p4, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;

    invoke-direct {p4, p0, p1, p2}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$1;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertID;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object p2

    invoke-direct {p3, p1, p4, p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    return-void

    :cond_1
    new-instance p2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p2, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance p3, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;

    invoke-direct {p3, p2, v2, v1}, Lorg/bouncycastle/asn1/ess/ESSCertIDv2;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/IssuerSerial;)V

    new-instance p2, Lorg/bouncycastle/cms/SignerInfoGenerator;

    new-instance p4, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;

    invoke-direct {p4, p0, p1, p3}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator$2;-><init>(Lorg/bouncycastle/tsp/TimeStampTokenGenerator;Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/asn1/ess/ESSCertIDv2;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cms/SignerInfoGenerator;->getUnsignedAttributeTableGenerator()Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    move-result-object p3

    invoke-direct {p2, p1, p4, p3}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/cms/SignerInfoGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    iput-object p2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/tsp/TSPException;

    const-string p3, "Exception processing certificate."

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SignerInfoGenerator must have an associated certificate"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    const-string v1, "yyyyMMddHHmmss.SSS"

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Lorg/bouncycastle/asn1/LocaleUtil;->EN_Locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_0
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "Z"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lorg/bouncycastle/tsp/TSPException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown time-stamp resolution: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v4, p1, 0x3

    if-le v0, v4, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v4, p1, 0x2

    if-le v0, v4, :cond_5

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_5
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-ne v0, v4, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public addAttributeCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCRLs(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addCertificates(Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/tsp/TimeStampRequest;Ljava/math/BigInteger;Ljava/util/Date;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    iget v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-gtz v4, :cond_1

    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_4

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    int-to-long v4, v4

    invoke-direct {v1, v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    if-lez v4, :cond_3

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v5, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    iget v5, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    if-lez v5, :cond_4

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v6, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    new-instance v6, Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-direct {v6, v1, v4, v5}, Lorg/bouncycastle/asn1/tsp/Accuracy;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    :goto_4
    iget-boolean v1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    if-eqz v1, :cond_5

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object v2

    :cond_5
    move-object v7, v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getNonce()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->getReqPolicy()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsaPolicyOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :cond_6
    move-object v2, v0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    if-eqz p4, :cond_9

    new-instance v1, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p4}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {p4, v4}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    :cond_9
    move-object v10, v0

    iget p4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    if-nez p4, :cond_b

    iget-object p4, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    if-nez p4, :cond_a

    new-instance p4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {p4, p3}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    goto :goto_7

    :cond_a
    new-instance p4, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    invoke-direct {p4, p3, v0}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    goto :goto_7

    :cond_b
    invoke-direct {p0, p3}, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->createGeneralizedTime(Ljava/util/Date;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object p4

    :goto_7
    move-object v5, p4

    new-instance v1, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    iget-object v9, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/asn1/tsp/TSTInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1GeneralizedTime;Lorg/bouncycastle/asn1/tsp/Accuracy;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/Extensions;)V

    :try_start_0
    new-instance p2, Lorg/bouncycastle/cms/CMSSignedDataGenerator;

    invoke-direct {p2}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampRequest;->getCertReq()Z

    move-result p1

    if-eqz p1, :cond_c

    new-instance p1, Lorg/bouncycastle/util/CollectionStore;

    iget-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->certs:Ljava/util/List;

    invoke-direct {p1, p3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCertificates(Lorg/bouncycastle/util/Store;)V

    new-instance p1, Lorg/bouncycastle/util/CollectionStore;

    iget-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->attrCerts:Ljava/util/List;

    invoke-direct {p1, p3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addAttributeCertificates(Lorg/bouncycastle/util/Store;)V

    :cond_c
    new-instance p1, Lorg/bouncycastle/util/CollectionStore;

    iget-object p3, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->crls:Ljava/util/List;

    invoke-direct {p1, p3}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addCRLs(Lorg/bouncycastle/util/Store;)V

    iget-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance p4, Lorg/bouncycastle/util/CollectionStore;

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->otherRevoc:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {p4, v0}, Lorg/bouncycastle/util/CollectionStore;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p3, p4}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addOtherRevocationInfo(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/util/Store;)V

    goto :goto_8

    :cond_d
    iget-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->signerInfoGen:Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->addSignerInfoGenerator(Lorg/bouncycastle/cms/SignerInfoGenerator;)V

    const-string p1, "DER"

    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/CMSProcessableByteArray;

    sget-object p4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_ct_TSTInfo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p3, p4, p1}, Lorg/bouncycastle/cms/CMSProcessableByteArray;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)V

    const/4 p1, 0x1

    invoke-virtual {p2, p3, p1}, Lorg/bouncycastle/cms/CMSSignedDataGenerator;->generate(Lorg/bouncycastle/cms/CMSTypedData;Z)Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-direct {p2, p1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/cms/CMSSignedData;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Lorg/bouncycastle/tsp/TSPException;

    const-string p3, "Exception encoding info"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v0

    move-object p1, v0

    new-instance p2, Lorg/bouncycastle/tsp/TSPException;

    const-string p3, "Error generating time-stamp token"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setAccuracyMicros(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMicros:I

    return-void
.end method

.method public setAccuracyMillis(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracyMillis:I

    return-void
.end method

.method public setAccuracySeconds(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->accuracySeconds:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setOrdering(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->ordering:Z

    return-void
.end method

.method public setResolution(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->resolution:I

    return-void
.end method

.method public setTSA(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampTokenGenerator;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-void
.end method

.class public Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final VERSION:Lorg/bouncycastle/asn1/DERTaggedObject;


# instance fields
.field private altNamePresentAndCritical:Z

.field endDate:Lorg/bouncycastle/asn1/x509/Time;

.field extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

.field serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/bouncycastle/asn1/x509/Time;

.field subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private subjectUniqueID:Lorg/bouncycastle/asn1/DERBitString;

.field validity:Lorg/bouncycastle/asn1/x509/Validity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->VERSION:Lorg/bouncycastle/asn1/DERTaggedObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generatePreTBSCertificate()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_7

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_7

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    sget-object v1, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->VERSION:Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/x509/Validity;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/Validity;-><init>(Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;)V

    :goto_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v3, v2, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_5

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x2

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v1, v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_6

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_6
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signature field should not be set in PreTBSCertificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_4

    new-instance v1, Lorg/bouncycastle/asn1/x509/TBSCertificate;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/Validity;

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/asn1/x509/Validity;-><init>(Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;)V

    :goto_0
    move-object v6, v0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-static {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    :goto_1
    move-object v7, v0

    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iget-object v9, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    iget-object v10, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    iget-object v11, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct/range {v1 .. v11}, Lorg/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Validity;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V3 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    if-eqz p1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Extension;->isCritical()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->altNamePresentAndCritical:Z

    :cond_0
    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuerUniqueID(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public setSubjectUniqueID(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->subjectUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    return-void
.end method

.method public setValidity(Lorg/bouncycastle/asn1/x509/Validity;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

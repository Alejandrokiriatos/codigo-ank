.class public Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;


# instance fields
.field endDate:Lorg/bouncycastle/asn1/x509/Time;

.field issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/bouncycastle/asn1/x509/Time;

.field subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field validity:Lorg/bouncycastle/asn1/x509/Validity;

.field version:Lorg/bouncycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lorg/bouncycastle/asn1/DERTaggedObject;

    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    if-eqz v0, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/x509/TBSCertificate;

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/Validity;

    iget-object v6, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, v6, v7}, Lorg/bouncycastle/asn1/x509/Validity;-><init>(Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;)V

    :goto_0
    move-object v6, v0

    iget-object v7, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v8, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v11}, Lorg/bouncycastle/asn1/x509/TBSCertificate;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Validity;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/ASN1BitString;Lorg/bouncycastle/asn1/x509/Extensions;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/ASN1Integer;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/ASN1UTCTime;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V

    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/x509/Time;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x500/X500Name;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubject(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-void
.end method

.method public setSubjectPublicKeyInfo(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-void
.end method

.method public setValidity(Lorg/bouncycastle/asn1/x509/Validity;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/bouncycastle/asn1/x509/Time;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/bouncycastle/asn1/x509/Time;

    return-void
.end method

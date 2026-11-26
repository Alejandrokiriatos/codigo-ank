.class public Lorg/bouncycastle/asn1/x509/Certificate;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field sig:Lorg/bouncycastle/asn1/ASN1BitString;

.field sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Certificate;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sig:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sequence wrong size for a certificate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sig:Lorg/bouncycastle/asn1/ASN1BitString;

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/Certificate;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'signature\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'signatureAlgorithm\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'tbsCertificate\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/Certificate;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/Certificate;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/Certificate;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEndDate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getIssuerUniqueId()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sig:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/Time;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSubjectUniqueId()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    return-object v0
.end method

.method public getValidity()Lorg/bouncycastle/asn1/x509/Validity;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getValidity()Lorg/bouncycastle/asn1/x509/Validity;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getVersion()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/Certificate;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

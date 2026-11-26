.class public Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final extensions:Lorg/bouncycastle/asn1/x509/Extensions;

.field private final issuer:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

.field private final subject:Lorg/bouncycastle/asn1/x500/X500Name;

.field private final subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

.field private final validity:Lorg/bouncycastle/asn1/x509/Validity;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Validity;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p6, :cond_1

    if-eqz p8, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object p5, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object p6, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object p7, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    iput-object p8, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'signatureValue\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'subjectPublicKeyInfo\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'serialNumber\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 13

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    move v5, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    instance-of v10, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v10, :cond_4

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v10

    if-eqz v10, :cond_3

    if-eq v10, v1, :cond_2

    if-eq v10, v3, :cond_1

    const/4 v11, 0x3

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v9

    goto :goto_1

    :cond_1
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/Validity;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Validity;

    move-result-object v8

    goto :goto_1

    :cond_2
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    :goto_1
    add-int/lit8 v2, v5, 0x1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    move-object v12, v5

    move v5, v2

    move-object v2, v12

    goto :goto_0

    :cond_4
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    :goto_2
    instance-of v10, v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v10, :cond_6

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v10

    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/x509/Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v3

    move-object v4, v3

    :goto_3
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    move-object v12, v5

    move v5, v3

    move-object v3, v12

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p1

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v6, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object v7, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v8, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    iput-object v9, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-void
.end method

.method private addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V
    .locals 1

    if-eqz p4, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, p3, p2, p4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static trimDeltaCertificateDescriptor(Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 11

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getValidityObject()Lorg/bouncycastle/asn1/x509/Validity;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getValidity()Lorg/bouncycastle/asn1/x509/Validity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/Validity;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v2

    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v5, v2

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v6

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v7, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v7}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v8

    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/x509/Extension;->deltaCertificateDescriptor:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v9}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p2, v9}, Lorg/bouncycastle/asn1/x509/Extensions;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/bouncycastle/asn1/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v7, v10}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/x509/Extension;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v2

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_8
    move-object v7, p1

    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->getSignatureValue()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v8

    move-object v2, v0

    new-instance v0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/Validity;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/x509/Extensions;Lorg/bouncycastle/asn1/ASN1BitString;)V

    return-object v0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSignatureValue()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getValidity()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/Validity;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getValidityObject()Lorg/bouncycastle/asn1/x509/Validity;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->serialNumber:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->issuer:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v3, v3, v1}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->validity:Lorg/bouncycastle/asn1/x509/Validity;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subject:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->subjectPublicKeyInfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->extensions:Lorg/bouncycastle/asn1/x509/Extensions;

    invoke-direct {p0, v0, v1, v3, v2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;IZLorg/bouncycastle/asn1/ASN1Object;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->signatureValue:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public trimTo(Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;->trimDeltaCertificateDescriptor(Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;Lorg/bouncycastle/asn1/x509/TBSCertificate;Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/DeltaCertificateDescriptor;

    move-result-object p1

    return-object p1
.end method

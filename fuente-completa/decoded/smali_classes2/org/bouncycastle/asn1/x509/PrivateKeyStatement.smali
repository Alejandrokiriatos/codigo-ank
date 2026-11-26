.class public Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final cert:Lorg/bouncycastle/asn1/x509/Certificate;

.field private final signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown sequence in PrivateKeyStatement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/Certificate;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/Certificate;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCert()Lorg/bouncycastle/asn1/x509/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    return-object v0
.end method

.method public getSigner()Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->signer:Lorg/bouncycastle/asn1/pkcs/IssuerAndSerialNumber;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/PrivateKeyStatement;->cert:Lorg/bouncycastle/asn1/x509/Certificate;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

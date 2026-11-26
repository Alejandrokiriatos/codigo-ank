.class public Lorg/bouncycastle/cms/KeyTransRecipientId;
.super Lorg/bouncycastle/cms/PKIXRecipientId;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/KeyTransRecipientId;

    iget-object v1, p0, Lorg/bouncycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/KeyTransRecipientId;-><init>(Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cms/KeyTransRecipientId;

    iget-object v0, p0, Lorg/bouncycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object p1, p1, Lorg/bouncycastle/cms/KeyTransRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/KeyTransRecipientInformation;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/cms/KeyTransRecipientInformation;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/KeyTransRecipientInformation;->getRID()Lorg/bouncycastle/cms/RecipientId;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/cms/PKIXRecipientId;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

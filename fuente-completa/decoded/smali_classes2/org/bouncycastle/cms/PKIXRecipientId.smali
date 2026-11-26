.class public Lorg/bouncycastle/cms/PKIXRecipientId;
.super Lorg/bouncycastle/cms/RecipientId;


# instance fields
.field protected final baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;


# direct methods
.method protected constructor <init>(ILorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, p2, p3, p4}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;[B)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-void
.end method

.method protected constructor <init>(ILorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/RecipientId;-><init>(I)V

    iput-object p2, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lorg/bouncycastle/cms/PKIXRecipientId;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/PKIXRecipientId;->getType()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/PKIXRecipientId;-><init>(ILorg/bouncycastle/cert/selector/X509CertificateHolderSelector;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/cms/PKIXRecipientId;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lorg/bouncycastle/cms/PKIXRecipientId;

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    iget-object p1, p1, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectKeyIdentifier()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->getSubjectKeyIdentifier()[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->hashCode()I

    move-result v0

    return v0
.end method

.method public match(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/PKIXRecipientId;->baseSelector:Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cert/selector/X509CertificateHolderSelector;->match(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

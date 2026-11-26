.class Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;
.super Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSEnvelopedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CMSAuthEnveSecureReadable"
.end annotation


# instance fields
.field private algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSDefaultSecureReadable;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/cms/CMSReadable;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;->algorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSEnvelopedHelper$CMSAuthEnveSecureReadable;->readable:Lorg/bouncycastle/cms/CMSReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

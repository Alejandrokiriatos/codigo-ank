.class interface abstract Lorg/bouncycastle/cms/CMSSecureReadable;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
.end method

.method public abstract getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

.method public abstract hasAdditionalData()Z
.end method

.method public abstract setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V
.end method

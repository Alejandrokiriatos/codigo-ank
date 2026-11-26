.class Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aadStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

.field final synthetic val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->aadStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->aadStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->aadStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Set;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    new-instance v0, Lorg/bouncycastle/cms/InputStreamWithMAC;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->val$authEncInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getEncryptedContent()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v2}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$100(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cms/InputStreamWithMAC;-><init>(Ljava/io/InputStream;[B)V

    return-object v0
.end method

.method public getMAC()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$100(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalData()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->aadStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedData;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedData;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedData;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAADStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedData$1;->aadStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    return-void
.end method

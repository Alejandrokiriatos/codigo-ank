.class Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private aadStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

.field final synthetic val$encInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

.field final synthetic val$readable:Lorg/bouncycastle/cms/CMSReadable;


# direct methods
.method constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;Lorg/bouncycastle/cms/CMSReadable;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->val$encInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->val$readable:Lorg/bouncycastle/cms/CMSReadable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->aadStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getAuthAttrSet()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->val$encInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfoParser;->getContentType()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->val$readable:Lorg/bouncycastle/cms/CMSReadable;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSReadable;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getMAC()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$100(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->getMAC()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public hasAdditionalData()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAADStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$1;->aadStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V
    .locals 0

    return-void
.end method

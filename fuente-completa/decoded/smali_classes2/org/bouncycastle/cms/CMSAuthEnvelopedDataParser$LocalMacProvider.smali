.class Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/MACProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalMacProvider"
.end annotation


# instance fields
.field private final authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

.field private mac:[B

.field private final parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

.field private readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    return-void
.end method


# virtual methods
.method public getMAC()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->mac:[B

    return-object v0
.end method

.method public init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->getAuthAttrs()Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$202(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;Lorg/bouncycastle/asn1/cms/AttributeTable;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v0}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$200(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$000(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;->setAuthAttrSet(Lorg/bouncycastle/asn1/ASN1Set;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    invoke-interface {v0}, Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;->getAADStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->parser:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;

    invoke-static {v1}, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;->access$200(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser;)Lorg/bouncycastle/asn1/cms/AttributeTable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/AttributeTable;->toASN1Structure()Lorg/bouncycastle/asn1/cms/Attributes;

    move-result-object v1

    const-string v2, "DER"

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/cms/Attributes;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->authEnvData:Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/AuthEnvelopedDataParser;->getMac()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->mac:[B

    return-void
.end method

.method setSecureReadable(Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataParser$LocalMacProvider;->readable:Lorg/bouncycastle/cms/CMSSecureReadableWithAAD;

    return-void
.end method

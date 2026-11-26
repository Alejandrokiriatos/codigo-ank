.class Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CMSAuthEnvelopedDataOutputStream"
.end annotation


# instance fields
.field private final _cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private final _cOut:Ljava/io/OutputStream;

.field private final _eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private final _encryptor:Lorg/bouncycastle/operator/OutputAEADEncryptor;

.field private final _envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

.field private final _octetStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/asn1/BERSequenceGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_encryptor:Lorg/bouncycastle/operator/OutputAEADEncryptor;

    iput-object p3, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_octetStream:Ljava/io/OutputStream;

    invoke-interface {p2, p3}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    iput-object p4, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p5, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iput-object p6, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;

    iget-object v0, v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_encryptor:Lorg/bouncycastle/operator/OutputAEADEncryptor;

    invoke-static {v0, v1}, Lorg/bouncycastle/cms/CMSUtils;->processAuthAttrSet(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/operator/OutputAEADEncryptor;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_octetStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_eiGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v0}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_encryptor:Lorg/bouncycastle/operator/OutputAEADEncryptor;

    invoke-interface {v2}, Lorg/bouncycastle/operator/OutputAEADEncryptor;->getMAC()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->addObject(Lorg/bouncycastle/asn1/ASN1Primitive;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    iget-object v1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->this$0:Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;

    iget-object v1, v1, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    const/4 v2, 0x2

    sget-object v3, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/cms/CMSUtils;->addAttriSetToGenerator(Lorg/bouncycastle/asn1/BERSequenceGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;ILjava/util/Map;)V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_envGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cGen:Lorg/bouncycastle/asn1/BERSequenceGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/BERSequenceGenerator;->close()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedDataStreamGenerator$CMSAuthEnvelopedDataOutputStream;->_cOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

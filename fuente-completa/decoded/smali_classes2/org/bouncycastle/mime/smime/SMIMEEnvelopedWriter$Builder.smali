.class public Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final stdHeaders:[Ljava/lang/String;

.field private static final stdValues:[Ljava/lang/String;


# instance fields
.field contentTransferEncoding:Ljava/lang/String;

.field private final envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Content-Type"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Content-Disposition"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Content-Transfer-Encoding"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "Content-Description"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdHeaders:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "application/pkcs7-mime; name=\"smime.p7m\"; smime-type=enveloped-data"

    aput-object v1, v0, v3

    const-string v1, "attachment; filename=\"smime.p7m\""

    aput-object v1, v0, v4

    const-string v1, "base64"

    aput-object v1, v0, v5

    const-string v1, "S/MIME Encrypted Message"

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdValues:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    const-string v0, "base64"

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdHeaders:[Ljava/lang/String;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    aget-object v1, v1, v0

    sget-object v3, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->stdValues:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;)Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    return-object p0
.end method


# virtual methods
.method public addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V

    return-object p0
.end method

.method public build(Ljava/io/OutputStream;Lorg/bouncycastle/operator/OutputEncryptor;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;
    .locals 2

    new-instance v0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMimeUtils;->autoBuffer(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;Lorg/bouncycastle/operator/OutputEncryptor;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$1;)V

    return-object v0
.end method

.method public setBufferSize(I)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setBufferSize(I)V

    return-object p0
.end method

.method public setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)V

    return-object p0
.end method

.method public setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->envGen:Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/CMSEnvelopedDataStreamGenerator;->setUnprotectedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object p0
.end method

.method public withHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMEEnvelopedWriter$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

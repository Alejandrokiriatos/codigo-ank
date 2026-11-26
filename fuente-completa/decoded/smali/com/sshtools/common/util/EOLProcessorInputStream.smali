.class Lcom/sshtools/common/util/EOLProcessorInputStream;
.super Ljava/io/InputStream;
.source "EOLProcessorInputStream.java"


# instance fields
.field buf:Lcom/sshtools/common/util/DynamicBuffer;

.field in:Ljava/io/InputStream;

.field processor:Lcom/sshtools/common/util/EOLProcessor;

.field tmp:[B


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    new-instance v0, Lcom/sshtools/common/util/DynamicBuffer;

    invoke-direct {v0}, Lcom/sshtools/common/util/DynamicBuffer;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    const v0, 0x8000

    .line 33
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->tmp:[B

    .line 38
    iput-object p3, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->in:Ljava/io/InputStream;

    .line 39
    new-instance p3, Lcom/sshtools/common/util/EOLProcessor;

    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    .line 41
    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p3, p1, p2, v0}, Lcom/sshtools/common/util/EOLProcessor;-><init>(IILjava/io/OutputStream;)V

    iput-object p3, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    return-void
.end method

.method private fillBuffer(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->available()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->tmp:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    invoke-virtual {p1}, Lcom/sshtools/common/util/EOLProcessor;->close()V

    .line 72
    iget-object p1, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {p1}, Lcom/sshtools/common/util/DynamicBuffer;->close()V

    return-void

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    iget-object v2, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->tmp:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/sshtools/common/util/EOLProcessor;->processBytes([BII)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/sshtools/common/util/EOLProcessorInputStream;->fillBuffer(I)V

    .line 54
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-direct {p0, p3}, Lcom/sshtools/common/util/EOLProcessorInputStream;->fillBuffer(I)V

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorInputStream;->buf:Lcom/sshtools/common/util/DynamicBuffer;

    invoke-virtual {v0}, Lcom/sshtools/common/util/DynamicBuffer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

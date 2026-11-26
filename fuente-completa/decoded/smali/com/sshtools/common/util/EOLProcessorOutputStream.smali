.class Lcom/sshtools/common/util/EOLProcessorOutputStream;
.super Ljava/io/OutputStream;
.source "EOLProcessorOutputStream.java"


# instance fields
.field processor:Lcom/sshtools/common/util/EOLProcessor;


# direct methods
.method public constructor <init>(IILjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 35
    new-instance v0, Lcom/sshtools/common/util/EOLProcessor;

    invoke-direct {v0, p1, p2, p3}, Lcom/sshtools/common/util/EOLProcessor;-><init>(IILjava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sshtools/common/util/EOLProcessorOutputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorOutputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    invoke-virtual {v0}, Lcom/sshtools/common/util/EOLProcessor;->close()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorOutputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte p1, v2, v3

    invoke-virtual {v0, v2, v3, v1}, Lcom/sshtools/common/util/EOLProcessor;->processBytes([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/sshtools/common/util/EOLProcessorOutputStream;->processor:Lcom/sshtools/common/util/EOLProcessor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/common/util/EOLProcessor;->processBytes([BII)V

    return-void
.end method

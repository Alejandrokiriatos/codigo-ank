.class Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;
.super Ljava/io/InputStream;
.source "ScpClientIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/scp/ScpClientIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScpInputStream"
.end annotation


# instance fields
.field count:J

.field engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

.field in:Ljava/io/InputStream;

.field length:J

.field progress:Lcom/sshtools/client/tasks/FileTransferProgress;

.field remoteFile:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/io/InputStream;Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;)V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 538
    iput-wide p1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    .line 539
    iput-object p3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->in:Ljava/io/InputStream;

    .line 540
    iput-object p4, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    .line 541
    iput-object p5, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    .line 542
    iput-object p6, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->remoteFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    iget-wide v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sub-long/2addr v2, v0

    long-to-int v0, v2

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    invoke-virtual {v0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->close()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 631
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
.end method

.method public getFileSize()J
    .locals 2

    .line 590
    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    iget-wide v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-nez v4, :cond_0

    return v5

    :cond_0
    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 555
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v5, :cond_4

    .line 561
    iget-wide v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    .line 563
    iget-wide v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    invoke-virtual {v1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->waitForResponse()V

    .line 565
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    invoke-virtual {v1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    .line 566
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v1, :cond_1

    .line 567
    invoke-interface {v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz v1, :cond_3

    .line 572
    invoke-interface {v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    iget-wide v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    invoke-interface {v1, v2, v3}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    return v0

    .line 573
    :cond_2
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "SCP transfer was cancelled by user"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0

    :cond_3
    return v0

    .line 558
    :cond_4
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected EOF."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_5
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of file."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    iget-wide v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    cmp-long v4, v0, v2

    const/4 v5, -0x1

    if-ltz v4, :cond_0

    return v5

    .line 599
    :cond_0
    iget-object v4, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->in:Ljava/io/InputStream;

    sub-long v6, v2, v0

    int-to-long v8, p3

    cmp-long p3, v6, v8

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    sub-long v8, v2, v0

    :goto_0
    long-to-int p3, v8

    invoke-virtual {v4, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-eq p1, v5, :cond_5

    .line 606
    iget-wide p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    .line 608
    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->length:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_2

    .line 609
    iget-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    invoke-virtual {p2}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->waitForResponse()V

    .line 610
    iget-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->engine:Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    invoke-virtual {p2}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    .line 611
    iget-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz p2, :cond_2

    .line 612
    invoke-interface {p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 615
    :cond_2
    iget-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    if-eqz p2, :cond_4

    .line 616
    invoke-interface {p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_3

    .line 621
    iget-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    iget-wide v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;->count:J

    invoke-interface {p2, v0, v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    return p1

    .line 617
    :cond_3
    new-instance p1, Lcom/sshtools/common/ssh/SshIOException;

    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "SCP transfer was cancelled by user"

    const/16 v0, 0x12

    invoke-direct {p2, p3, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, p2}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p1

    :cond_4
    return p1

    .line 603
    :cond_5
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "Unexpected EOF."

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

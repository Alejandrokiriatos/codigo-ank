.class public Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;
.super Ljava/lang/Object;
.source "ScpClientIO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/scp/ScpClientIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScpEngineIO"
.end annotation


# instance fields
.field protected buffer:[B

.field protected cmd:Ljava/lang/String;

.field protected in:Ljava/io/InputStream;

.field protected out:Ljava/io/OutputStream;

.field protected session:Lcom/sshtools/common/ssh/SessionChannel;

.field final synthetic this$0:Lcom/sshtools/client/scp/ScpClientIO;


# direct methods
.method protected constructor <init>(Lcom/sshtools/client/scp/ScpClientIO;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->this$0:Lcom/sshtools/client/scp/ScpClientIO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x8000

    .line 202
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    .line 221
    iput-object p3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->session:Lcom/sshtools/common/ssh/SessionChannel;

    .line 222
    iput-object p2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->cmd:Ljava/lang/String;

    .line 223
    invoke-virtual {p3}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->in:Ljava/io/InputStream;

    .line 224
    invoke-virtual {p3}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    .line 225
    invoke-virtual {p3, p2}, Lcom/sshtools/client/SessionChannelNG;->executeCommand(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    const-wide/16 v0, 0x2710

    .line 226
    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/ssh/RequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    .line 227
    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p3}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 229
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to execute the command "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x6

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x1f4

    .line 250
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :catchall_0
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->close()V

    return-void

    :catch_0
    move-exception v0

    .line 244
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected parseCommand(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 361
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 362
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 372
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 374
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    add-int/2addr v0, v4

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p2, v0

    return-void

    .line 367
    :cond_0
    const-string p1, "Syntax error in cmd"

    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeError(Ljava/lang/String;)V

    .line 368
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected readCompleteFile(Ljava/io/OutputStream;JLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_4

    .line 500
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    sub-long v4, p2, v0

    .line 503
    array-length v6, v3

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    array-length v4, v3

    int-to-long v4, v4

    :goto_1
    long-to-int v4, v4

    const/4 v5, 0x0

    .line 501
    invoke-virtual {v2, v3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    int-to-long v3, v2

    add-long/2addr v0, v3

    .line 511
    iget-object v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    invoke-virtual {p1, v3, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p4, :cond_0

    .line 514
    invoke-interface {p4}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 519
    invoke-interface {p4, v0, v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    goto :goto_0

    .line 515
    :cond_2
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    const-string p4, "SCP transfer was cancelled by user"

    const/16 v0, 0x12

    invoke-direct {p3, p4, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2

    .line 507
    :cond_3
    new-instance p2, Ljava/io/EOFException;

    const-string p3, "SCP received an unexpected EOF"

    invoke-direct {p2, p3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    .line 523
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 524
    throw p2

    .line 523
    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected readStreamFromRemote(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Ljava/io/InputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 300
    new-array v0, v0, [Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    :cond_0
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 344
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected cmd: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeError(Ljava/lang/String;)V

    .line 345
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "SCP unexpected cmd: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    return-object v1

    .line 324
    :pswitch_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Directories cannot be copied to a stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :pswitch_2
    invoke-virtual {p0, v2, v0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->parseCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 329
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 331
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    if-eqz p2, :cond_1

    .line 334
    invoke-interface {p2, v2, v3, p1}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 337
    :cond_1
    new-instance v1, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;

    iget-object v4, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->in:Ljava/io/InputStream;

    move-object v5, p0

    move-object v7, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;-><init>(JLjava/io/InputStream;Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;)V

    :catch_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected readString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 390
    :goto_0
    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    if-ltz v2, :cond_0

    .line 391
    iget-object v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 398
    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    if-ne v2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 415
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "GOT ZERO AT 0 INDEX"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 417
    :cond_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2

    .line 404
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    sub-int/2addr v1, v4

    invoke-direct {v2, v5, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 406
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    aget-byte v0, v1, v0

    if-ne v0, v3, :cond_4

    .line 407
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "SCP returned an unexpected error: "

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected <NL>"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public waitForResponse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 423
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->this$0:Lcom/sshtools/client/scp/ScpClientIO;

    iget-boolean v1, v1, Lcom/sshtools/client/scp/ScpClientIO;->first:Z

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->this$0:Lcom/sshtools/client/scp/ScpClientIO;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sshtools/client/scp/ScpClientIO;->first:Z

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 436
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 439
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SCP returned an unexpected error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_3
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "SCP returned unexpected EOF"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected writeCompleteFile(Ljava/io/InputStream;JLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    cmp-long v2, v0, p2

    if-gez v2, :cond_4

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    sub-long v3, p2, v0

    .line 465
    array-length v5, v2

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    goto :goto_1

    .line 466
    :cond_1
    array-length v3, v2

    int-to-long v3, v3

    :goto_1
    long-to-int v3, v3

    const/4 v4, 0x0

    .line 463
    invoke-virtual {p1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    int-to-long v5, v2

    add-long/2addr v0, v5

    .line 474
    iget-object v3, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    iget-object v5, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->buffer:[B

    invoke-virtual {v3, v5, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p4, :cond_0

    .line 478
    invoke-interface {p4}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 483
    invoke-interface {p4, v0, v1}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    goto :goto_0

    .line 479
    :cond_2
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    const-string p4, "SCP transfer was cancelled by user"

    const/16 v0, 0x12

    invoke-direct {p3, p4, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p2, p3}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2

    .line 469
    :cond_3
    new-instance p2, Ljava/io/EOFException;

    const-string p3, "SCP received an unexpected EOF"

    invoke-direct {p2, p3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p2

    .line 488
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 489
    throw p2

    .line 488
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected writeError(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 451
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method protected writeOk()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method protected writeStreamToRemote(Ljava/io/InputStream;JLjava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "C0644 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 278
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->out:Ljava/io/OutputStream;

    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/io/OutputStream;->write([B)V

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->waitForResponse()V

    .line 282
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeCompleteFile(Ljava/io/InputStream;JLcom/sshtools/client/tasks/FileTransferProgress;)V

    .line 284
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeOk()V

    .line 286
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->waitForResponse()V

    return-void
.end method

.class public abstract Lcom/sshtools/client/AbstractSessionChannel;
.super Lcom/sshtools/synergy/ssh/ChannelNG;
.source "AbstractSessionChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/synergy/ssh/ChannelNG<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXITCODE_NOT_RECEIVED:I = -0x80000000

.field public static final SSH_EXTENDED_DATA_STDERR:I = 0x1


# instance fields
.field private exitcode:I

.field private exitsignalinfo:Ljava/lang/String;

.field private flowControlEnabled:Z

.field private singleSession:Z


# direct methods
.method public constructor <init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V
    .locals 8

    .line 59
    const-string v1, "session"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/AbstractSessionChannel;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Z)V
    .locals 8

    .line 53
    new-instance v6, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v6}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    const-string v1, "session"

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/AbstractSessionChannel;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V
    .locals 0

    .line 64
    invoke-direct/range {p0 .. p7}, Lcom/sshtools/synergy/ssh/ChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    move-object p1, p0

    const/high16 p2, -0x80000000

    .line 45
    iput p2, p1, Lcom/sshtools/client/AbstractSessionChannel;->exitcode:I

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p1, Lcom/sshtools/client/AbstractSessionChannel;->singleSession:Z

    return-void
.end method


# virtual methods
.method public allocatePseudoTerminal(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 2

    const/16 v0, 0x50

    const/16 v1, 0x19

    .line 113
    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/client/AbstractSessionChannel;->allocatePseudoTerminal(Ljava/lang/String;II)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    return-object p1
.end method

.method public allocatePseudoTerminal(Ljava/lang/String;II)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 7

    const/4 v6, 0x0

    .line 117
    move-object v0, v6

    check-cast v0, Lcom/sshtools/synergy/ssh/TerminalModes;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/AbstractSessionChannel;->allocatePseudoTerminal(Ljava/lang/String;IIIILcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    return-object p1
.end method

.method public allocatePseudoTerminal(Ljava/lang/String;IIIILcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 1

    .line 187
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 191
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 193
    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 194
    invoke-virtual {v0, p4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 195
    invoke-virtual {v0, p5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    if-nez p6, :cond_0

    const/4 p1, 0x0

    .line 197
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p6}, Lcom/sshtools/synergy/ssh/TerminalModes;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 202
    :goto_0
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 203
    const-string p2, "pty-req"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p0, p2, p4, p3, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 206
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    :catch_2
    throw p1
.end method

.method public allocatePseudoTerminal(Ljava/lang/String;IILcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 121
    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/AbstractSessionChannel;->allocatePseudoTerminal(Ljava/lang/String;IIIILcom/sshtools/synergy/ssh/TerminalModes;)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    return-object p1
.end method

.method public changeTerminalDimensions(IIII)V
    .locals 1

    .line 125
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 129
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 130
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 131
    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 132
    invoke-virtual {v0, p4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 134
    const-string p1, "window-change"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 137
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    :catch_2
    throw p1
.end method

.method protected createChannel()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public executeCommand(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 4

    .line 245
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 248
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 249
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 250
    const-string v1, "exec"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 253
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 256
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 259
    :catch_2
    throw p1
.end method

.method public executeCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 3

    .line 264
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 268
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 270
    const-string p2, "exec"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v1, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 274
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 280
    :catch_2
    throw p1
.end method

.method public getExitCode()I
    .locals 1

    .line 343
    iget v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->exitcode:I

    return v0
.end method

.method public getExitSignalInfo()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->exitsignalinfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumLocalPacketLength()I
    .locals 1

    .line 369
    invoke-virtual {p0}, Lcom/sshtools/client/AbstractSessionChannel;->getLocalPacket()I

    move-result v0

    return v0
.end method

.method public getMaximumRemotePacketLength()I
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/sshtools/client/AbstractSessionChannel;->getRemotePacket()I

    move-result v0

    return v0
.end method

.method public isFlowControlEnabled()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->flowControlEnabled:Z

    return v0
.end method

.method public isSingleSession()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->singleSession:Z

    return v0
.end method

.method protected onChannelClosed()V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->singleSession:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method protected onChannelClosing()V
    .locals 0

    return-void
.end method

.method protected onChannelError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected onChannelFree()V
    .locals 0

    return-void
.end method

.method protected onChannelOpen()V
    .locals 0

    return-void
.end method

.method protected onChannelOpenConfirmation()V
    .locals 0

    return-void
.end method

.method protected onChannelRequest(Ljava/lang/String;Z[B)V
    .locals 7

    const-string p2, "Signal="

    .line 314
    :try_start_0
    const-string v0, "exit-status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 316
    invoke-static {p3, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt([BI)J

    move-result-wide v2

    long-to-int v0, v2

    iput v0, p0, Lcom/sshtools/client/AbstractSessionChannel;->exitcode:I

    .line 320
    :cond_0
    const-string v0, "exit-signal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 323
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    array-length v3, p3

    invoke-direct {v0, p3, v1, v3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 326
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " CoreDump="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, " Message="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/AbstractSessionChannel;->exitsignalinfo:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 329
    throw p1

    .line 334
    :cond_2
    :goto_1
    const-string p2, "xon-xoff"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    .line 335
    aget-byte p1, p3, v1

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/sshtools/client/AbstractSessionChannel;->flowControlEnabled:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 338
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected I/O error reading channel request"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected onLocalEOF()V
    .locals 0

    return-void
.end method

.method protected onRemoteEOF()V
    .locals 0

    return-void
.end method

.method protected openChannel([B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public setEnvironmentVariable(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 3

    .line 217
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 221
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 224
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 225
    const-string p2, "env"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2, v1, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 228
    :try_start_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 234
    :catch_2
    throw p1
.end method

.method public setSingleSession(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/sshtools/client/AbstractSessionChannel;->singleSession:Z

    return-void
.end method

.method public signal(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 4

    .line 174
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 176
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 177
    const-string v1, "signal"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 174
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startShell()Lcom/sshtools/common/ssh/RequestFuture;
    .locals 4

    .line 238
    new-instance v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    const-string v3, "shell"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V

    return-object v0
.end method

.method public startSubsystem(Ljava/lang/String;)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 4

    .line 285
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 289
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    new-instance p1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    .line 291
    const-string v1, "subsystem"

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/sshtools/client/AbstractSessionChannel;->sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 295
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 301
    :catch_2
    throw p1
.end method

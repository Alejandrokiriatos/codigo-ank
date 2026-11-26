.class public abstract Lcom/sshtools/client/tasks/AbstractSubsystemTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "AbstractSubsystemTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractSubsystemTask$PacketReturner;
    }
.end annotation


# instance fields
.field in:Ljava/io/DataInputStream;

.field taskUUID:Ljava/util/UUID;

.field protected timeout:J


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 2

    .line 55
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    const-wide/32 v0, 0xea60

    .line 50
    iput-wide v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->timeout:J

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->taskUUID:Ljava/util/UUID;

    return-void
.end method


# virtual methods
.method protected createSession()Lcom/sshtools/client/SessionChannelNG;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 74
    new-instance v0, Lcom/sshtools/client/SessionChannelNG;

    .line 75
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getMaximumPacketSize()I

    move-result v1

    .line 76
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 77
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    .line 78
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getMinimumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/client/SessionChannelNG;-><init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Z)V

    .line 81
    new-instance v1, Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;

    invoke-direct {v1, p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask$1;-><init>(Lcom/sshtools/client/tasks/AbstractSubsystemTask;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/client/SessionChannelNG;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    .line 91
    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1, v0}, Lcom/sshtools/common/ssh/SshConnection;->openChannel(Lcom/sshtools/common/ssh/Channel;)V

    .line 92
    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v1

    iget-wide v2, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->timeout:J

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open session channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract doSubsystemTask(Lcom/sshtools/client/SessionChannelNG;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method protected doTask()V
    .locals 3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->createSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->in:Ljava/io/DataInputStream;

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->doSubsystemTask(Lcom/sshtools/client/SessionChannelNG;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract getMaximumPacketSize()I
.end method

.method protected abstract getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method protected abstract getMinimumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method protected getSession()Lcom/sshtools/client/SessionChannelNG;
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SessionChannelNG;

    return-object v0
.end method

.method public nextMessage()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 113
    const-string v0, "]"

    .line 0
    const-string v1, "Invalid message length in SFTP protocol ["

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 115
    :try_start_0
    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-ltz v4, :cond_1

    .line 121
    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v5

    invoke-interface {v5}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 125
    invoke-static {}, Lcom/sshtools/synergy/ssh/ByteArrays;->getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;

    move-result-object v5

    iget-object v6, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v6}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v6

    invoke-interface {v6}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sshtools/synergy/ssh/ByteArrays;->getByteArray(I)[B

    move-result-object v5

    .line 126
    iget-object v6, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->in:Ljava/io/DataInputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    return-object v5

    .line 122
    :cond_0
    new-instance v5, Lcom/sshtools/common/ssh/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 118
    :cond_1
    new-instance v5, Lcom/sshtools/common/ssh/SshException;

    const-string v6, "Negative message length in SFTP protocol."

    invoke-direct {v5, v6, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 138
    instance-of v1, v0, Lcom/sshtools/common/ssh/SshIOException;

    if-eqz v1, :cond_2

    .line 139
    check-cast v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v0

    throw v0

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 143
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 133
    :catch_1
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 134
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "The channel unexpectedly terminated"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 130
    :catch_2
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method protected onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 149
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->in:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystemTask;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    .line 159
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->finish()V

    const/4 v1, 0x0

    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->size()I

    move-result v3

    new-instance v4, Lcom/sshtools/client/tasks/AbstractSubsystemTask$PacketReturner;

    invoke-direct {v4, p0, p1}, Lcom/sshtools/client/tasks/AbstractSubsystemTask$PacketReturner;-><init>(Lcom/sshtools/client/tasks/AbstractSubsystemTask;Lcom/sshtools/common/ssh/Packet;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sshtools/client/SessionChannelNG;->sendChannelDataAndBlock([BIILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 163
    const-string v0, "Channel I/O error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

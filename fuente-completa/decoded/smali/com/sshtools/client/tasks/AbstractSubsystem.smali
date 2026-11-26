.class public abstract Lcom/sshtools/client/tasks/AbstractSubsystem;
.super Ljava/lang/Object;
.source "AbstractSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;
    }
.end annotation


# instance fields
.field protected con:Lcom/sshtools/common/ssh/SshConnection;

.field in:Ljava/io/DataInputStream;

.field protected session:Lcom/sshtools/client/SessionChannelNG;

.field taskUUID:Ljava/util/UUID;

.field protected timeout:J


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xea60

    .line 49
    iput-wide v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->timeout:J

    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->taskUUID:Ljava/util/UUID;

    .line 56
    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 57
    new-instance v1, Lcom/sshtools/client/SessionChannelNG;

    .line 58
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getMaximumPacketSize()I

    move-result v2

    .line 59
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 61
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getMinimumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/sshtools/client/SessionChannelNG;-><init>(ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Z)V

    iput-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->session:Lcom/sshtools/client/SessionChannelNG;

    .line 64
    new-instance v0, Lcom/sshtools/client/tasks/AbstractSubsystem$1;

    invoke-direct {v0, p0}, Lcom/sshtools/client/tasks/AbstractSubsystem$1;-><init>(Lcom/sshtools/client/tasks/AbstractSubsystem;)V

    invoke-virtual {v1, v0}, Lcom/sshtools/client/SessionChannelNG;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-interface {p1, v0}, Lcom/sshtools/common/ssh/SshConnection;->openChannel(Lcom/sshtools/common/ssh/Channel;)V

    .line 75
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v1}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->in:Ljava/io/DataInputStream;

    .line 76
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v0

    iget-wide v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->timeout:J

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-interface {p1, v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not open session channel"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-object v0
.end method

.method protected abstract getMaximumPacketSize()I
.end method

.method protected abstract getMaximumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method protected abstract getMinimumWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
.end method

.method protected getSession()Lcom/sshtools/client/SessionChannelNG;
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->taskUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SessionChannelNG;

    return-object v0
.end method

.method public declared-synchronized nextMessage()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "Invalid message length in SFTP protocol ["

    const-string v1, "Invalid message length in SFTP protocol ["

    monitor-enter p0

    const/4 v2, 0x6

    const/4 v3, 0x3

    const/4 v4, -0x1

    .line 102
    :try_start_0
    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    if-ltz v4, :cond_1

    .line 108
    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v5

    invoke-interface {v5}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 112
    invoke-static {}, Lcom/sshtools/synergy/ssh/ByteArrays;->getInstance()Lcom/sshtools/synergy/ssh/ByteArrays;

    move-result-object v0

    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v5

    invoke-interface {v5}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sshtools/synergy/ssh/ByteArrays;->getByteArray(I)[B

    move-result-object v0

    .line 113
    iget-object v5, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->in:Ljava/io/DataInputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v4}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-object v0

    .line 109
    :cond_0
    :try_start_1
    new-instance v5, Lcom/sshtools/common/ssh/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "]"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 105
    :cond_1
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v5, "Negative message length in SFTP protocol."

    invoke-direct {v0, v5, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    instance-of v1, v0, Lcom/sshtools/common/ssh/SshIOException;

    if-eqz v1, :cond_2

    .line 126
    check-cast v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v0

    throw v0

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 130
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v1, v2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 120
    :catch_1
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    .line 121
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "The channel unexpectedly terminated"

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 117
    :catch_2
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected onCloseSession(Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 136
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/client/tasks/AbstractSubsystem;->in:Ljava/io/DataInputStream;

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

    .line 143
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSubsystem;->getSession()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->finish()V

    const/4 v1, 0x0

    .line 146
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->size()I

    move-result v3

    new-instance v4, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;

    invoke-direct {v4, p0, p1}, Lcom/sshtools/client/tasks/AbstractSubsystem$PacketReturner;-><init>(Lcom/sshtools/client/tasks/AbstractSubsystem;Lcom/sshtools/common/ssh/Packet;)V

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sshtools/client/SessionChannelNG;->sendChannelDataAndBlock([BIILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 148
    const-string v0, "Channel I/O error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;
.super Lcom/sshtools/synergy/ssh/SocketForwardingChannel;
.source "RemoteForwardingChannel.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/ClientConnector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/synergy/ssh/SocketForwardingChannel<",
        "TT;>;",
        "Lcom/sshtools/synergy/nio/ClientConnector;"
    }
.end annotation


# instance fields
.field protected hasConnected:Z


# direct methods
.method protected constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    .line 71
    const-string v0, "forwarded-tcpip"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;ILjava/nio/channels/SocketChannel;)V
    .locals 1

    .line 64
    const-string v0, "forwarded-tcpip"

    invoke-direct {p0, v0, p1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z

    .line 65
    iput-object p4, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 66
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    .line 67
    iput p3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;ILjava/nio/channels/SocketChannel;Lcom/sshtools/synergy/ssh/SshContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Ljava/lang/String;",
            "I",
            "Ljava/nio/channels/SocketChannel;",
            "TT;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z

    .line 83
    iput-object p5, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 84
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    .line 85
    iput p4, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    return-void
.end method


# virtual methods
.method protected createChannel()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 100
    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->checkHostPermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 106
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getUsername()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Forwarding policy has "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " from opening"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " a local forwarding channel to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 105
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 116
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "Failed to close socket channel"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot create channel because access has been denied by forwarding policy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 126
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getChannelType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "x11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 128
    iget v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 131
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->originatingHost:Ljava/lang/String;

    .line 130
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 133
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->originatingPort:I

    .line 132
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 135
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 138
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object v1

    :catchall_1
    move-exception v1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 139
    throw v1
.end method

.method protected createSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .line 238
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected createSocketChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 244
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 245
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-void
.end method

.method public declared-synchronized finishConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 6

    monitor-enter p0

    .line 257
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 258
    monitor-exit p0

    return v0

    .line 260
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z

    if-eqz p1, :cond_2

    .line 261
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    const-string p1, "Duplicate finishConnect call to {}:{} channel={}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 263
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getLocalId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 262
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    :cond_1
    monitor-exit p0

    return v0

    .line 268
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 274
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 275
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 276
    const-string p1, "Remote forwarding socket to {}:{} has connected [asynchronously] channel={} remote={}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 278
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 279
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getLocalId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getRemoteId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 276
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    :cond_4
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendChannelOpenConfirmation(Lcom/sshtools/synergy/ssh/ChannelNG;[B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 287
    :try_start_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    const-string v1, "Remote forwarding socket to {}:{} has failed \"{}\" channel={} remote={}"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 290
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 291
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getLocalId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 293
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getRemoteId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, p1, v4, v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 288
    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_5
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    const-string v1, "Connection failed."

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v2, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendChannelOpenFailure(Lcom/sshtools/synergy/ssh/ChannelNG;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 299
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;Ljava/nio/channels/SelectableChannel;)V
    .locals 0

    return-void
.end method

.method protected onChannelOpenConfirmation()V
    .locals 3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, p0, v1}, Lcom/sshtools/synergy/nio/SshEngine;->registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 152
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 153
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to register channel with a selector"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onChannelOpenFailure()V
    .locals 1

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onRegistrationComplete()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getLocalId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Registration Complete channel={}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected openChannel([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    .line 160
    const-string v0, ":"

    .line 0
    const-string v1, "Forwarding policy has "

    .line 160
    new-instance v2, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v2, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 163
    :try_start_0
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 165
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->originatingHost:Ljava/lang/String;

    .line 166
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->originatingPort:I

    .line 170
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v4

    const-string v5, "remoteForwards"

    invoke-virtual {v4, v5}, Lcom/sshtools/synergy/ssh/Connection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/RemoteForward;

    const/4 v3, 0x1

    if-eqz p1, :cond_6

    .line 178
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/RemoteForward;->getHostToConnect()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/RemoteForward;->getPortToConnect()I

    move-result p1

    iput p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 181
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;

    move-result-object p1

    .line 182
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v6, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 181
    invoke-virtual {p1, v4, v5, v6}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->checkHostPermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z

    move-result p1

    .line 185
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_0

    .line 187
    const-string v4, "authorized"

    goto :goto_0

    :cond_0
    const-string v4, "denied"

    :goto_0
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 188
    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getUsername()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_1

    .line 189
    const-string v6, " to open"

    goto :goto_1

    :cond_1
    const-string v6, " from opening"

    .line 190
    :goto_1
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getChannelType()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v9, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " a "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " forwarding channel to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 186
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->createSocketChannel()V

    .line 204
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->createSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 205
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 206
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 207
    const-string p1, "Remote forwarding socket to {}:{} has connected [synchronously] channel={} remote={}"

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->portToConnect:I

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 210
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getLocalId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 211
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->getRemoteId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v1, v4, v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :cond_3
    iput-boolean v3, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->hasConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    const/4 p1, 0x0

    return-object p1

    .line 219
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1, p0, v0}, Lcom/sshtools/synergy/nio/SshEngine;->registerConnector(Lcom/sshtools/synergy/nio/ClientConnector;Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 234
    new-instance p1, Lcom/sshtools/common/nio/WriteOperationRequest;

    invoke-direct {p1}, Lcom/sshtools/common/nio/WriteOperationRequest;-><init>()V

    throw p1

    .line 195
    :cond_5
    :try_start_2
    new-instance p1, Lcom/sshtools/common/ssh/ChannelOpenException;

    const-string v0, "User does not have permission"

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/ChannelOpenException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 175
    :cond_6
    new-instance p1, Lcom/sshtools/common/ssh/ChannelOpenException;

    const-string v0, "Remote forwarding not available"

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/ChannelOpenException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 223
    :try_start_3
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/Closeable;)V

    .line 224
    new-instance v0, Lcom/sshtools/common/ssh/ChannelOpenException;

    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/sshtools/common/ssh/ChannelOpenException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 228
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 229
    throw p1
.end method

.class public Lcom/sshtools/synergy/ssh/LocalForwardingChannel;
.super Lcom/sshtools/synergy/ssh/SocketForwardingChannel;
.source "LocalForwardingChannel.java"

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
.field hasConnected:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hasConnected:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;ILjava/nio/channels/SocketChannel;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hasConnected:Z

    .line 71
    iput-object p5, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 72
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    .line 73
    iput p4, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    return-void
.end method


# virtual methods
.method protected checkPermissions()Z
    .locals 4

    .line 190
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getForwardingPolicy()Lcom/sshtools/common/forwarding/ForwardingPolicy;

    move-result-object v0

    .line 191
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 190
    invoke-virtual {v0, v1, v2, v3}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->checkHostPermitted(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected createChannel()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 87
    iget v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 88
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 89
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->originatingHost:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 92
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    iput v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->originatingPort:I

    .line 91
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 94
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 98
    throw v1
.end method

.method protected createSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .line 178
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected createSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 185
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    return-object v0
.end method

.method public declared-synchronized finishConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 6

    monitor-enter p0

    .line 216
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 217
    monitor-exit p0

    return v0

    .line 219
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hasConnected:Z

    if-eqz p1, :cond_2

    .line 220
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 221
    const-string p1, "Duplicate finishConnect call to {}:{} channel={}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getLocalId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 221
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    :cond_1
    monitor-exit p0

    return v0

    .line 227
    :cond_2
    :try_start_2
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hasConnected:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 233
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 234
    const-string p1, "Local forwarding socket to {}:{} has connected channel={}"

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getLocalId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 234
    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->onConnectionComplete()V

    .line 240
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendChannelOpenConfirmation(Lcom/sshtools/synergy/ssh/ChannelNG;[B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 243
    :try_start_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 244
    const-string v1, "Local forwarding socket to {}:{} has failed: {} channel={}"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 248
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 249
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getLocalId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 244
    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->onConnectionError(Ljava/io/IOException;)V

    .line 253
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    const-string v1, "Connection failed."

    const/4 v2, 0x2

    invoke-virtual {p1, p0, v2, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendChannelOpenFailure(Lcom/sshtools/synergy/ssh/ChannelNG;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 257
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

.method protected declared-synchronized onChannelOpenConfirmation()V
    .locals 3

    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 275
    invoke-virtual {v0, p0, v1}, Lcom/sshtools/synergy/nio/SshEngine;->registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 277
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "Failed to register the protocol handler for local forwarding channel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected onChannelOpenFailure()V
    .locals 1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onConnectionComplete()V
    .locals 0

    return-void
.end method

.method protected onConnectionError(Ljava/io/IOException;)V
    .locals 0

    return-void
.end method

.method protected declared-synchronized onRegistrationComplete()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "Registration Complete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected openChannel([B)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    const-string v0, "Forwarding policy has "

    .line 113
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 116
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->readForwarding(Lcom/sshtools/common/util/ByteArrayReader;)V

    .line 118
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->checkPermissions()Z

    move-result p1

    .line 120
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_0

    .line 122
    const-string v2, "authorized"

    goto :goto_0

    :cond_0
    const-string v2, "denied"

    :goto_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 123
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    .line 124
    const-string v4, " to open"

    goto :goto_1

    :cond_1
    const-string v4, " from opening"

    .line 125
    :goto_1
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getChannelType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v7, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " a "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " forwarding channel to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 121
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 135
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->createSocketChannel()Ljava/nio/channels/SocketChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 136
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->createSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 137
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 138
    const-string p1, "Local forwarding socket to {}:{} has connected channel={}"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v3, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getLocalId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 138
    invoke-static {p1, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_3
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hasConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    const/4 p1, 0x0

    return-object p1

    .line 145
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 146
    const-string p1, "Deferring socket connection on {}:{} channel={}"

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    iget v2, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->getLocalId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    :cond_5
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 151
    invoke-virtual {p1, p0, v0}, Lcom/sshtools/synergy/nio/SshEngine;->registerConnector(Lcom/sshtools/synergy/nio/ClientConnector;Ljava/nio/channels/SocketChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 167
    new-instance p1, Lcom/sshtools/common/nio/WriteOperationRequest;

    invoke-direct {p1}, Lcom/sshtools/common/nio/WriteOperationRequest;-><init>()V

    throw p1

    .line 130
    :cond_6
    :try_start_2
    new-instance p1, Lcom/sshtools/common/ssh/ChannelOpenException;

    const-string v2, "User does not have permission"

    invoke-direct {p1, v2, v0}, Lcom/sshtools/common/ssh/ChannelOpenException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 155
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/Closeable;)V

    .line 157
    new-instance v0, Lcom/sshtools/common/ssh/ChannelOpenException;

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lcom/sshtools/common/ssh/ChannelOpenException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 161
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 162
    throw p1
.end method

.method protected readForwarding(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->hostToConnect:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->portToConnect:I

    .line 173
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->originatingHost:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcom/sshtools/synergy/ssh/LocalForwardingChannel;->originatingPort:I

    return-void
.end method

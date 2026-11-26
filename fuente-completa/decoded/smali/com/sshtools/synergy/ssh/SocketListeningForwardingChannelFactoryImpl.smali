.class public abstract Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;
.super Lcom/sshtools/synergy/nio/ClientAcceptor;
.source "SocketListeningForwardingChannelFactoryImpl.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/synergy/nio/ClientAcceptor;",
        "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected activeRemoteForwardings:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected addr:Ljava/net/SocketAddress;

.field protected addressToBind:Ljava/lang/String;

.field protected channelType:Ljava/lang/String;

.field protected connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected portToBind:I

.field protected socketChannel:Ljava/nio/channels/ServerSocketChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Lcom/sshtools/synergy/nio/ClientAcceptor;-><init>(Lcom/sshtools/synergy/nio/ListeningInterface;)V

    .line 58
    new-instance v0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;

    invoke-direct {v0}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->activeRemoteForwardings:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;

    return-void
.end method


# virtual methods
.method public belongsTo(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)Z"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->getChannelType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->addressToBind:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->portToBind:I

    .line 81
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 82
    iput-object p4, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->channelType:Ljava/lang/String;

    .line 84
    new-instance p4, Ljava/net/InetSocketAddress;

    invoke-direct {p4, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->addr:Ljava/net/SocketAddress;

    .line 86
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    const/4 p2, 0x0

    .line 89
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 90
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->setReuseAddress(Z)V

    .line 91
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getReceiveBufferSize()I

    move-result p1

    if-lez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    .line 93
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/synergy/ssh/SshContext;->getReceiveBufferSize()I

    move-result p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->addr:Ljava/net/SocketAddress;

    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sshtools/synergy/ssh/SshContext;->getMaximumSocketsBacklogPerRemotelyForwardedConnection()I

    move-result p4

    invoke-virtual {p1, p2, p4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V

    .line 98
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getEngine()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1, p0, p2}, Lcom/sshtools/synergy/nio/SshEngine;->registerAcceptor(Lcom/sshtools/synergy/nio/ClientAcceptor;Ljava/nio/channels/ServerSocketChannel;)V

    .line 100
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->portToBind:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 103
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-static {p2}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/Closeable;)V

    .line 104
    throw p1
.end method

.method protected abstract createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;ILjava/nio/channels/SocketChannel;Lcom/sshtools/synergy/ssh/SshContext;)Lcom/sshtools/synergy/ssh/ForwardingChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Ljava/lang/String;",
            "I",
            "Ljava/nio/channels/SocketChannel;",
            "TT;)",
            "Lcom/sshtools/synergy/ssh/ForwardingChannel<",
            "TT;>;"
        }
    .end annotation
.end method

.method public finishAccept(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/ListeningInterface;)Z
    .locals 8

    .line 110
    const-string p1, ":"

    const/4 p2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 114
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->channelType:Ljava/lang/String;

    .line 116
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v3

    check-cast v3, Ljava/net/InetSocketAddress;

    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " forwarding socket accepted from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p2, [Ljava/lang/Object;

    .line 115
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_0
    invoke-virtual {v6, p2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 123
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getReceiveBufferSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 124
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getReceiveBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getSendBufferSize()I

    move-result v0

    if-lez v0, :cond_2

    .line 127
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getSendBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 129
    :cond_2
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getSocketOptionKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 130
    invoke-virtual {v6}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getSocketOptionTcpNoDelay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 132
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->channelType:Ljava/lang/String;

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 133
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->addressToBind:Ljava/lang/String;

    iget v5, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->portToBind:I

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 137
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    .line 132
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->createChannel(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;ILjava/nio/channels/SocketChannel;Lcom/sshtools/synergy/ssh/SshContext;)Lcom/sshtools/synergy/ssh/ForwardingChannel;

    move-result-object v0

    .line 139
    iget-object v2, v1, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->activeRemoteForwardings:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;

    invoke-virtual {v0, v2}, Lcom/sshtools/synergy/ssh/ForwardingChannel;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    .line 141
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ForwardingChannel;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v2

    new-instance v3, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;

    invoke-direct {v3, p0, v6}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$1;-><init>(Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;Ljava/nio/channels/SocketChannel;)V

    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->addFutureListener(Lcom/sshtools/common/ssh/RequestFutureListener;)V

    .line 155
    iget-object v2, v1, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v2, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->openChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    .line 158
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    const-string v0, "FORWARDING accept event fired but no socket was accepted"

    new-array v2, p2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    .line 164
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    iget-object v2, v1, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->addressToBind:Ljava/lang/String;

    iget v3, v1, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->portToBind:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Accept operation failed on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 169
    :cond_4
    :goto_1
    iget-object p1, v1, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public getActiveTunnelManager()Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager<",
            "TT;>;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->activeRemoteForwardings:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;

    return-object v0
.end method

.method public stopAccepting()V
    .locals 3

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 189
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Error closing listening socket"

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopListening(Z)V
    .locals 0

    .line 177
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->stopAccepting()V

    if-eqz p1, :cond_0

    .line 180
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;->activeRemoteForwardings:Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->killAllTunnels()V

    :cond_0
    return-void
.end method

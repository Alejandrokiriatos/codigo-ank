.class Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;
.super Lcom/sshtools/synergy/nio/ClientAcceptor;
.source "SshEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/nio/SshEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProtocolClientAcceptor"
.end annotation


# instance fields
.field li:Lcom/sshtools/synergy/nio/ListeningInterface;

.field socketChannel:Ljava/nio/channels/ServerSocketChannel;

.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/nio/ListeningInterface;Ljava/nio/channels/ServerSocketChannel;)V
    .locals 0

    .line 1080
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    .line 1081
    invoke-direct {p0, p2}, Lcom/sshtools/synergy/nio/ClientAcceptor;-><init>(Lcom/sshtools/synergy/nio/ListeningInterface;)V

    .line 1082
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->li:Lcom/sshtools/synergy/nio/ListeningInterface;

    .line 1083
    iput-object p3, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    return-void
.end method


# virtual methods
.method public finishAccept(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/ListeningInterface;)Z
    .locals 9

    const-string v0, "WARNING: TCP send buffer could not be set to "

    const-string v1, "WARNING: TCP receive buffer could not be set to "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1093
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v5

    new-instance v6, Lcom/sshtools/common/events/Event;

    const/high16 v7, -0x1000000

    invoke-direct {v6, p0, v7, v2}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v7, "IP"

    .line 1096
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v8

    check-cast v8, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v8}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v8

    .line 1097
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 1095
    invoke-virtual {v6, v7, v8}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v6

    .line 1093
    invoke-interface {v5, v6}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 1099
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v5

    check-cast v5, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v5}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1103
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ListeningInterface;->getContextFactory()Lcom/sshtools/synergy/nio/ProtocolContextFactory;

    move-result-object p2

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v5, v5, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-interface {p2, v5, v3}, Lcom/sshtools/synergy/nio/ProtocolContextFactory;->createContext(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/nio/channels/SocketChannel;)Lcom/sshtools/synergy/nio/ProtocolContext;

    move-result-object p2

    .line 1105
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 1106
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSocketOptionKeepAlive()Z

    move-result v6

    .line 1105
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 1107
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 1108
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSocketOptionTcpNoDelay()Z

    move-result v6

    .line 1107
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 1110
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSendBufferSize()I

    move-result v5

    if-lez v5, :cond_0

    .line 1111
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 1112
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSendBufferSize()I

    move-result v6

    .line 1111
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 1115
    :cond_0
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getReceiveBufferSize()I

    move-result v5

    if-lez v5, :cond_1

    .line 1116
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    .line 1117
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getReceiveBufferSize()I

    move-result v6

    .line 1116
    invoke-virtual {v5, v6}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 1120
    :cond_1
    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 1122
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, ". The socket reported a size of "

    if-eqz v5, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getReceiveBufferSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 1123
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v5

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getReceiveBufferSize()I

    move-result v7

    if-eq v5, v7, :cond_2

    .line 1125
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getReceiveBufferSize()I

    move-result v5

    .line 1127
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    .line 1124
    invoke-static {v1, v5}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1131
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSendBufferSize()I

    move-result v1

    if-lez v1, :cond_3

    .line 1132
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v1

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSendBufferSize()I

    move-result v5

    if-eq v1, v5, :cond_3

    .line 1134
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSendBufferSize()I

    move-result v1

    .line 1136
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    .line 1133
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    :cond_3
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/ProtocolContext;->getSocketConnectionFactory()Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v1, v1, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 1143
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v5

    .line 1144
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v6

    .line 1141
    invoke-interface {v0, v1, v5, v6}, Lcom/sshtools/synergy/nio/SocketConnectionFactory;->createSocketConnection(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    .line 1145
    new-instance v1, Lcom/sshtools/synergy/nio/ConnectRequestFuture;

    invoke-direct {v1}, Lcom/sshtools/synergy/nio/ConnectRequestFuture;-><init>()V

    invoke-virtual {p2, v1}, Lcom/sshtools/synergy/nio/ProtocolContext;->createEngine(Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;

    move-result-object p2

    .line 1146
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-interface {v0, p2, v1, v3}, Lcom/sshtools/synergy/nio/SocketHandler;->initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;Ljava/nio/channels/SelectableChannel;)V

    .line 1147
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {p2, v0, v3}, Lcom/sshtools/synergy/nio/SshEngine;->registerHandler(Lcom/sshtools/synergy/nio/SocketHandler;Ljava/nio/channels/SelectableChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1151
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p2

    check-cast p2, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p2}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    xor-int/2addr p1, v2

    return p1

    :catchall_0
    move-exception p2

    move v0, v2

    goto :goto_0

    .line 1153
    :cond_4
    :try_start_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1154
    const-string p2, "Accept event fired but no socket was accepted"

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    return v2

    :catchall_1
    move-exception p2

    move v0, v4

    .line 1159
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1160
    const-string v1, "SSH client acceptor failed to accept"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, p2, v4}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v3, :cond_7

    if-nez v0, :cond_7

    .line 1165
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1169
    :catch_0
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1174
    :catch_1
    :cond_7
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object p1

    check-cast p1, Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/ServerSocketChannel;->isOpen()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1
.end method

.method public stopAccepting()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$ProtocolClientAcceptor;->socketChannel:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/ServerSocketChannel;->close()V

    return-void
.end method

.class public Lcom/sshtools/synergy/nio/SocketConnection;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SocketHandler;


# static fields
.field private static final SOCKET_QUEUE:Ljava/lang/Integer;


# instance fields
.field protected closed:Z

.field currentInterestedOps:I

.field protected daemon:Lcom/sshtools/synergy/nio/SshEngine;

.field protected daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

.field hasInterestedOps:Z

.field protected key:Ljava/nio/channels/SelectionKey;

.field private localAddress:Ljava/net/SocketAddress;

.field private localPort:I

.field opsLock:Ljava/lang/Object;

.field pendingIncludeOps:I

.field pendingRemoveOps:I

.field protected protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

.field private remoteAddress:Ljava/net/SocketAddress;

.field private remotePort:I

.field protected selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

.field protected socketChannel:Ljava/nio/channels/SocketChannel;

.field protected socketDataIn:Ljava/nio/ByteBuffer;

.field protected socketDataOut:Ljava/nio/ByteBuffer;

.field socketWriteCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/synergy/nio/SocketWriteCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-string v0, "SocketConnection.in"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/synergy/nio/SocketConnection;->SOCKET_QUEUE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->hasInterestedOps:Z

    const/4 v1, 0x5

    .line 62
    iput v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->currentInterestedOps:I

    .line 63
    iput v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->pendingRemoveOps:I

    .line 64
    iput v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->pendingIncludeOps:I

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->opsLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->getExecutor()Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    move-result-object v0

    sget-object v1, Lcom/sshtools/synergy/nio/SocketConnection;->SOCKET_QUEUE:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public closeConnection()V
    .locals 1

    const/4 v0, 0x1

    .line 136
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection(Z)V

    return-void
.end method

.method public closeConnection(Z)V
    .locals 3

    .line 141
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->closed:Z

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string v0, "Closing socket"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz p1, :cond_3

    .line 153
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    const-string p1, "Closing protocol engine"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {p1}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketClose()V

    :cond_3
    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->closed:Z

    :cond_4
    return-void
.end method

.method public flagWrite()V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    new-instance v1, Lcom/sshtools/synergy/nio/SocketConnection$1;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/nio/SocketConnection$1;-><init>(Lcom/sshtools/synergy/nio/SocketConnection;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/nio/SelectorThread;->addSelectorOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "+",
            "Lcom/sshtools/synergy/ssh/SshContext;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/sshtools/synergy/ssh/SshContext;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    return-object v0
.end method

.method public getDaemonContext()Lcom/sshtools/synergy/nio/SshEngineContext;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    return-object v0
.end method

.method public getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThread;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object v0

    return-object v0
.end method

.method public getInitialOps()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->localPort:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->remotePort:I

    return v0
.end method

.method public getProtocolEngine()Lcom/sshtools/synergy/nio/ProtocolEngine;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getSelectorThread()Lcom/sshtools/synergy/nio/SelectorThread;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    return-object v0
.end method

.method public getSocketChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    return-object v0
.end method

.method public getThread()Lcom/sshtools/synergy/nio/SelectorThread;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    return-object v0
.end method

.method public initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;Ljava/nio/channels/SelectableChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    .line 92
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    .line 93
    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 94
    check-cast p3, Ljava/nio/channels/SocketChannel;

    iput-object p3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 95
    invoke-virtual {p3}, Ljava/nio/channels/SocketChannel;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->localAddress:Ljava/net/SocketAddress;

    .line 96
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getLocalPort()I

    move-result p1

    iput p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->localPort:I

    .line 97
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->remoteAddress:Ljava/net/SocketAddress;

    .line 98
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result p1

    iput p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->remotePort:I

    return-void
.end method

.method protected isConnected()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelectorThread()Z
    .locals 2

    .line 231
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized processReadEvent()Z
    .locals 8

    const-string v0, "There is "

    const-string v1, "Read "

    const-string v2, "Connection closed on socket read: "

    monitor-enter p0

    .line 265
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 266
    const-string v3, "Processing socket READ event"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 271
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->isConnected()Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    .line 323
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 326
    iput-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 272
    :cond_2
    :goto_0
    monitor-exit p0

    return v3

    .line 276
    :cond_3
    :try_start_3
    iget-object v6, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-nez v6, :cond_4

    .line 277
    iget-object v6, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v6}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 280
    :cond_4
    iget-object v6, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v7, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v6

    .line 282
    iget-object v7, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 284
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " bytes from socket"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v7}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v1, -0x1

    if-ne v6, v1, :cond_9

    .line 290
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    const-string v0, "Received EOF from remote host"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    :try_start_4
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 326
    iput-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 328
    :cond_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 294
    :cond_8
    :goto_1
    monitor-exit p0

    return v3

    .line 297
    :cond_9
    :try_start_5
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 298
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v6}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 301
    :cond_a
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 302
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes left to process on socket"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    :cond_b
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 306
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 307
    const-string v0, "Connection is closed, cancelling selectors"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_c
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    xor-int/2addr v0, v3

    .line 323
    :try_start_6
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_e

    .line 324
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_d

    .line 325
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 326
    iput-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 328
    :cond_d
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 311
    :cond_e
    :goto_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 313
    :try_start_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 314
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    :cond_f
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 317
    const-string v1, "Trace: "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 319
    :cond_10
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 323
    :try_start_8
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_12

    .line 324
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_11

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 326
    iput-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 328
    :cond_11
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 320
    :cond_12
    :goto_3
    monitor-exit p0

    return v3

    :catchall_1
    move-exception v0

    .line 323
    :try_start_9
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_14

    .line 324
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_13

    .line 325
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 326
    iput-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 328
    :cond_13
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 331
    :cond_14
    :goto_4
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method public declared-synchronized processWriteEvent()Z
    .locals 6

    const-string v0, "Written "

    monitor-enter p0

    .line 341
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 342
    const-string v1, "Processing socket WRITE event"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_c

    .line 348
    :cond_1
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :cond_2
    const/4 v1, 0x0

    .line 355
    :try_start_1
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    .line 356
    invoke-interface {v4}, Lcom/sshtools/synergy/nio/ProtocolEngine;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 357
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-interface {v4, v5}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 359
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 362
    :cond_3
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 365
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_9

    .line 397
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 398
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_5

    .line 399
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 400
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 402
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_0

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 410
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 411
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 412
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 413
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_2

    .line 415
    :cond_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 366
    :cond_8
    :goto_2
    monitor-exit p0

    return v3

    .line 368
    :cond_9
    :try_start_3
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 369
    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v4

    .line 370
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " bytes to socket"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_a
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_b

    .line 377
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 378
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 382
    :cond_b
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->isConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/2addr v0, v3

    .line 397
    :try_start_4
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_e

    .line 398
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_d

    .line 399
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 400
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 402
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v3}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_3

    .line 405
    :cond_c
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_4

    .line 407
    :cond_d
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 410
    :cond_e
    :goto_4
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_10

    .line 411
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_f

    .line 412
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 413
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 415
    :cond_f
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 382
    :cond_10
    :goto_5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 385
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 386
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 387
    const-string v4, "Connection closed on socket write"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    :cond_11
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 390
    const-string v4, "Connection error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 393
    :cond_12
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    :try_start_6
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_15

    .line 398
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_14

    .line 399
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 400
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 402
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 403
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_6

    .line 405
    :cond_13
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_7

    .line 407
    :cond_14
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 410
    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_17

    .line 411
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_16

    .line 412
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 413
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_8

    .line 415
    :cond_16
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 394
    :cond_17
    :goto_8
    monitor-exit p0

    return v3

    :catchall_1
    move-exception v0

    .line 397
    :try_start_7
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1a

    .line 398
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_19

    .line 399
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 400
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 402
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v3}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_9

    .line 405
    :cond_18
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_a

    .line 407
    :cond_19
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 410
    :cond_1a
    :goto_a
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1c

    .line 411
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 412
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 413
    iput-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 415
    :cond_1b
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 418
    :cond_1c
    :goto_b
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 345
    :cond_1d
    :goto_c
    monitor-exit p0

    return v3

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iput-object p3, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    .line 115
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SocketConnection;->key:Ljava/nio/channels/SelectionKey;

    .line 116
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {p1, p0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketConnect(Lcom/sshtools/synergy/nio/SocketConnection;)V

    return-void
.end method

.method public setProtocolEngine(Lcom/sshtools/synergy/nio/ProtocolEngine;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    return-void
.end method

.method public setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->key:Ljava/nio/channels/SelectionKey;

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->hasInterestedOps:Z

    return-void
.end method

.method public setThread(Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    return-void
.end method

.method public wantsRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized wantsWrite()Z
    .locals 1

    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->wantsToWrite()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.class public Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;
.super Lcom/sshtools/synergy/nio/SocketConnection;
.source "SSLSocketConnection.java"


# static fields
.field private static cipherSuites:[Ljava/lang/String;

.field private static protocols:[Ljava/lang/String;


# instance fields
.field allowClientCertificate:Z

.field destinationBuffer:Ljava/nio/ByteBuffer;

.field private dummy:Ljava/nio/ByteBuffer;

.field private engine:Ljavax/net/ssl/SSLEngine;

.field private hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

.field private initialHandshake:Z

.field requireClientCertificate:Z

.field private session:Ljavax/net/ssl/SSLSession;

.field socketWriteCallbacks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/synergy/nio/SocketWriteCallback;",
            ">;"
        }
    .end annotation
.end field

.field sourceBuffer:Ljava/nio/ByteBuffer;

.field sslContext:Ljavax/net/ssl/SSLContext;

.field private status:Ljavax/net/ssl/SSLEngineResult$Status;

.field private wantsWrite:Z


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;-><init>(Ljavax/net/ssl/SSLContext;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;ZZ)V
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SocketConnection;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    .line 72
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    .line 85
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 86
    iput-boolean p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->allowClientCertificate:Z

    .line 87
    iput-boolean p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->requireClientCertificate:Z

    return-void
.end method

.method private doHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 356
    :goto_0
    sget-object v0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 403
    :pswitch_0
    const-string v0, "doHandshake has caught a NOT_HANDSHAKING state.. This is impossible!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    .line 396
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    return-void

    .line 387
    :pswitch_2
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    return-void

    .line 374
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 362
    :pswitch_4
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->finishInitialHandshake()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishInitialHandshake()V
    .locals 2

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    .line 341
    const-string v1, "Completed handshake"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v0, p0}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketConnect(Lcom/sshtools/synergy/nio/SocketConnection;)V

    return-void
.end method

.method private flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 417
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 419
    :catch_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->closeConnection()V

    :cond_0
    return-void
.end method

.method public static setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0

    .line 554
    sput-object p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public static setEnabledProtocols([Ljava/lang/String;)V
    .locals 0

    .line 549
    sput-object p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocols:[Ljava/lang/String;

    return-void
.end method

.method private shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 161
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 162
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->closeConnection()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method public processReadEvent()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->isConnected()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 318
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 327
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_1
    return v1

    .line 182
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 183
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 191
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 198
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_4
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    if-lez v3, :cond_16

    .line 205
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_7

    .line 206
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 209
    :cond_7
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 210
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move v5, v0

    .line 221
    :cond_8
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 223
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ne v4, v7, :cond_b

    add-int/2addr v5, v1

    const/16 v7, 0x32

    if-le v5, v7, :cond_c

    .line 226
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_9
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_a

    goto/16 :goto_0

    :cond_a
    return v1

    .line 231
    :cond_b
    :try_start_3
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move v5, v0

    .line 234
    :cond_c
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 236
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    if-nez v7, :cond_d

    .line 237
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 239
    :cond_d
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v7, v8, :cond_e

    .line 243
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v7, v8, :cond_e

    .line 245
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    if-eqz v7, :cond_8

    .line 260
    :cond_e
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-ne v7, v3, :cond_10

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 261
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 262
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 264
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 266
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    if-nez v7, :cond_f

    .line 267
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 269
    :cond_f
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 275
    :cond_10
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    iput-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 276
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 281
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_13

    .line 282
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_11

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_11

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_11
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_12

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_12

    goto/16 :goto_0

    :cond_12
    return v1

    .line 289
    :cond_13
    :try_start_4
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v7, :cond_14

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v7, :cond_14

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_15

    .line 292
    :cond_14
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->doHandshake()V

    .line 294
    :cond_15
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_8

    .line 299
    :cond_16
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 303
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->isConnected()Z

    .line 307
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->isConnected()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    xor-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    .line 319
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_17

    .line 320
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_17
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_18

    .line 325
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_18

    .line 326
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 327
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_18
    return v0

    :catchall_0
    move-exception v3

    .line 310
    :try_start_5
    const-string v4, "An error occured whilst trying to read from the socket"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->closeConnection()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 318
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_19

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_19

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_19
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1a

    .line 325
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_1a

    .line 326
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 327
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_1a
    return v1

    :catchall_1
    move-exception v0

    .line 318
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1b

    .line 319
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_1b

    .line 320
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 321
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 324
    :cond_1b
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1c

    .line 325
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_1c

    .line 326
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 327
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 330
    :cond_1c
    throw v0
.end method

.method public processWriteEvent()Z
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    .line 519
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 520
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 524
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 521
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 522
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 527
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 528
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 537
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v1

    .line 529
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 530
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 532
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_3

    .line 535
    :cond_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_8
    return v1

    .line 449
    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    if-eqz v3, :cond_b

    .line 455
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_a

    .line 456
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->dummy:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 458
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 459
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->flush()V

    .line 462
    :cond_a
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->doHandshake()V

    .line 464
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v4, :cond_10

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v4, :cond_10

    .line 466
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    goto/16 :goto_5

    .line 473
    :cond_b
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_c

    .line 474
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    .line 475
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 479
    :cond_c
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    .line 480
    invoke-interface {v3}, Lcom/sshtools/synergy/nio/ProtocolEngine;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 482
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 484
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 487
    :cond_d
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 489
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 491
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    iput-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 492
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 495
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 497
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->flush()V

    .line 499
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v3}, Lcom/sshtools/synergy/nio/ProtocolEngine;->wantsToWrite()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 502
    :cond_e
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    goto :goto_5

    .line 500
    :cond_f
    :goto_4
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    .line 508
    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v0, v1

    .line 519
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_13

    .line 520
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_11

    goto :goto_6

    .line 524
    :cond_11
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 521
    :cond_12
    :goto_6
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 522
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 527
    :cond_13
    :goto_7
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    .line 528
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_14

    goto :goto_8

    .line 537
    :cond_14
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v0

    .line 529
    :cond_15
    :goto_8
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 530
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 532
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_9

    .line 535
    :cond_16
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_17
    return v0

    :catchall_0
    move-exception v3

    .line 511
    :try_start_2
    const-string v4, "An error occured whilst trying to write to the socket"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->closeConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 519
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1a

    .line 520
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_18

    goto :goto_a

    .line 524
    :cond_18
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 521
    :cond_19
    :goto_a
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 522
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 527
    :cond_1a
    :goto_b
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e

    .line 528
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_1b

    goto :goto_c

    .line 537
    :cond_1b
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_e

    .line 529
    :cond_1c
    :goto_c
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 530
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 532
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 533
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_d

    .line 535
    :cond_1d
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1e
    :goto_e
    return v1

    :catchall_1
    move-exception v0

    .line 519
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_21

    .line 520
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_1f

    goto :goto_f

    .line 524
    :cond_1f
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 521
    :cond_20
    :goto_f
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 522
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 527
    :cond_21
    :goto_10
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_25

    .line 528
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_22

    goto :goto_11

    .line 537
    :cond_22
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_13

    .line 529
    :cond_23
    :goto_11
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 530
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 532
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_12

    .line 535
    :cond_24
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 539
    :cond_25
    :goto_13
    throw v0

    :cond_26
    :goto_14
    return v1
.end method

.method public registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 101
    check-cast p1, Ljava/nio/channels/SocketChannel;

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 102
    iput-object p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    .line 103
    iput-object p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->key:Ljava/nio/channels/SelectionKey;

    .line 108
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    .line 110
    sget-object p2, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->protocols:[Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 112
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setEnabledProtocols([Ljava/lang/String;)V

    .line 115
    :cond_0
    sget-object p1, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->cipherSuites:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 117
    iget-object p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p2, p1}, Ljavax/net/ssl/SSLEngine;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 123
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-boolean p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->allowClientCertificate:Z

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 124
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-boolean p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->requireClientCertificate:Z

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 127
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->session:Ljavax/net/ssl/SSLSession;

    .line 128
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 129
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->initialHandshake:Z

    .line 134
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->dummy:Ljava/nio/ByteBuffer;

    .line 137
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 140
    :catch_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->closeConnection()V

    return-void
.end method

.method public wantsWrite()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLSocketConnection;->wantsWrite:Z

    return v0
.end method

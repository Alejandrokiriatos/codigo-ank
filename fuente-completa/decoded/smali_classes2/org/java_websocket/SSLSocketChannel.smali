.class public Lorg/java_websocket/SSLSocketChannel;
.super Ljava/lang/Object;
.source "SSLSocketChannel.java"

# interfaces
.implements Lorg/java_websocket/WrappedByteChannel;
.implements Ljava/nio/channels/ByteChannel;
.implements Lorg/java_websocket/interfaces/ISSLChannel;


# instance fields
.field private final engine:Ljavax/net/ssl/SSLEngine;

.field private executor:Ljava/util/concurrent/ExecutorService;

.field private final log:Lorg/slf4j/Logger;

.field private myAppData:Ljava/nio/ByteBuffer;

.field private myNetData:Ljava/nio/ByteBuffer;

.field private peerAppData:Ljava/nio/ByteBuffer;

.field private peerNetData:Ljava/nio/ByteBuffer;

.field private final socketChannel:Ljava/nio/channels/SocketChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/util/concurrent/ExecutorService;Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-class v0, Lorg/java_websocket/SSLSocketChannel;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 133
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    if-eq v0, p3, :cond_2

    .line 137
    iput-object p1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 138
    iput-object p2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    .line 139
    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    .line 140
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p3

    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    .line 142
    invoke-virtual {p2}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 143
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_1

    .line 145
    invoke-virtual {p4}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p4, p1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    return-void

    .line 149
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 151
    iget-object p2, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string p3, "Exception during the closing of the channel"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 134
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "parameter must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private closeConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 473
    :try_start_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->doHandshake()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :catch_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    return-void
.end method

.method private doHandshake()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    .line 274
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    .line 275
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 276
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 277
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 279
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 282
    sget-object v4, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_11

    const-string v5, "Invalid SSL status: "

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v4, v8, :cond_a

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_1

    const/4 v3, 0x5

    if-ne v4, v3, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 385
    :cond_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 341
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->myAppData:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v9}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    sget-object v9, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v3, :cond_8

    if-eq v9, v8, :cond_7

    if-eq v9, v7, :cond_6

    if-ne v9, v6, :cond_5

    .line 366
    :try_start_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 367
    :goto_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 368
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2

    .line 371
    :cond_4
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 373
    :catch_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 377
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_6
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 362
    :cond_7
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_8
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 351
    :goto_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_3

    :cond_9
    :goto_4
    move-object v0, v4

    goto/16 :goto_0

    .line 344
    :catch_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 345
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 291
    :cond_a
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-gez v0, :cond_c

    .line 292
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    .line 296
    :cond_b
    :try_start_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 300
    :catch_2
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 302
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 305
    :cond_c
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 307
    :try_start_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v9, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4, v9}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 308
    iget-object v4, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 309
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 315
    sget-object v9, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v10

    aget v9, v9, v10

    if-eq v9, v3, :cond_9

    if-eq v9, v8, :cond_10

    if-eq v9, v7, :cond_f

    if-ne v9, v6, :cond_e

    .line 327
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_d

    return v1

    .line 330
    :cond_d
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 331
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 335
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_f
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    .line 324
    :cond_10
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    .line 311
    :catch_3
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 312
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto/16 :goto_0

    .line 284
    :cond_11
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    if-nez v2, :cond_12

    return v3

    .line 288
    :cond_12
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move v2, v4

    goto/16 :goto_0

    :cond_13
    return v3
.end method

.method private enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 416
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 430
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 431
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 433
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    .line 406
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method private handleBufferUnderflow(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    .line 450
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p1

    .line 453
    :cond_0
    invoke-direct {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 454
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 455
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private handleEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    :try_start_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    :catch_0
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "This engine was forced to close inbound, without having received the proper SSL/TLS close notification message from the peer, due to end of stream."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 496
    :goto_0
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    return-void
.end method

.method public getSSLEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isNeedRead()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 527
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Invalid SSL status: "

    monitor-enter p0

    .line 158
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 159
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 161
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 163
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 165
    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 167
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-gtz v1, :cond_3

    .line 171
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    if-gez v1, :cond_8

    .line 201
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->handleEndOfStream()V

    goto/16 :goto_1

    .line 172
    :cond_3
    :goto_0
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 173
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    iget-object v1, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->peerNetData:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :try_start_4
    sget-object v2, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 193
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 197
    :cond_4
    :try_start_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 190
    :cond_5
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lorg/java_websocket/SSLSocketChannel;->enlargeApplicationBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return p1

    .line 187
    :cond_6
    :try_start_6
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 188
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return p1

    .line 184
    :cond_7
    :try_start_7
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 185
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    .line 179
    :try_start_8
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->log:Lorg/slf4j/Logger;

    const-string v1, "SSLException during unwrap"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    throw p1

    .line 203
    :cond_8
    :goto_1
    iget-object v0, p0, Lorg/java_websocket/SSLSocketChannel;->peerAppData:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lorg/java_websocket/util/ByteBufferUtils;->transferByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 204
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method

.method public readMore(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 516
    invoke-virtual {p0, p1}, Lorg/java_websocket/SSLSocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized write(Ljava/nio/ByteBuffer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 210
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 213
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 214
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 215
    sget-object v3, Lorg/java_websocket/SSLSocketChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    const/4 p1, 0x4

    if-ne v3, p1, :cond_1

    .line 229
    invoke-direct {p0}, Lorg/java_websocket/SSLSocketChannel;->closeConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    monitor-exit p0

    return v0

    .line 232
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid SSL status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :cond_2
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lorg/java_websocket/SSLSocketChannel;->enlargePacketBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 226
    :cond_3
    new-instance p1, Ljavax/net/ssl/SSLException;

    const-string v0, "Buffer underflow occurred after a wrap. I don\'t think we should ever get here."

    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 217
    :cond_4
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 218
    :goto_1
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lorg/java_websocket/SSLSocketChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Lorg/java_websocket/SSLSocketChannel;->myNetData:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v2

    goto :goto_1

    .line 235
    :cond_5
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public writeMore()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.class public Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;
.super Lcom/sshtools/synergy/nio/SocketConnection;
.source "SSLContextConnection.java"


# static fields
.field static sslContext:Ljavax/net/ssl/SSLContext;


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

.field private status:Ljavax/net/ssl/SSLEngineResult$Status;

.field private wantsWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SocketConnection;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    .line 88
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->allowClientCertificate:Z

    .line 89
    iput-boolean p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->requireClientCertificate:Z

    return-void
.end method

.method private doHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 418
    :goto_0
    sget-object v0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 468
    :pswitch_0
    const-string v0, "doHandshake has caught a NOT_HANDSHAKING state.. This is impossible!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    .line 461
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    return-void

    .line 451
    :pswitch_2
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    return-void

    .line 436
    :goto_1
    :pswitch_3
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 424
    :pswitch_4
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->finishInitialHandshake()V

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

    .line 402
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    .line 403
    const-string v1, "Completed handshake"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

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

    .line 480
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 484
    :catch_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->closeConnection()V

    :cond_0
    return-void
.end method

.method public static getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    return-object v0

    .line 144
    :cond_0
    invoke-static {}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initializeSSL()V

    .line 145
    sget-object v0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public static initializeSSL()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    const-string v0, "SunX509"

    const-string v1, "TLS"

    const-string v2, "JKS"

    :try_start_0
    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const-string v4, ""

    if-nez v3, :cond_0

    move-object v3, v4

    .line 165
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 168
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 169
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "javax.net.ssl.keyStore"

    invoke-static {v7, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 173
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    sput-object v6, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 176
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v6

    .line 177
    invoke-virtual {v6, v5, v3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 180
    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v4

    .line 187
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 190
    const-string v5, "javax.net.ssl.trustStore"

    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 192
    invoke-static {v4}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 193
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 194
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 195
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 199
    :goto_0
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 200
    invoke-virtual {v6}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v7

    :goto_1
    invoke-virtual {v1, v2, v0, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSL initialization failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    .line 224
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 225
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->closeConnection()V

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    return v0

    .line 216
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

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->isConnected()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 380
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 389
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_1
    return v1

    .line 245
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_3

    .line 246
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 254
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    .line 261
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 382
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    if-lez v3, :cond_14

    .line 268
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_7

    .line 269
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 272
    :cond_7
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 274
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move v5, v0

    .line 285
    :cond_8
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 287
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ne v4, v7, :cond_b

    add-int/2addr v5, v1

    const/16 v7, 0x32

    if-le v5, v7, :cond_c

    .line 290
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_9

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_9

    .line 382
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_9
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_a

    .line 387
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_a

    goto/16 :goto_0

    :cond_a
    return v1

    .line 295
    :cond_b
    :try_start_3
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    move v5, v0

    .line 298
    :cond_c
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 300
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    if-nez v7, :cond_d

    .line 301
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 303
    :cond_d
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 305
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v7, v8, :cond_e

    .line 307
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v7

    sget-object v8, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v7, v8, :cond_e

    .line 309
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v7

    if-eqz v7, :cond_8

    .line 324
    :cond_e
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    if-ne v7, v3, :cond_10

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 325
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 326
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7, v8}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v6

    .line 328
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    check-cast v7, Ljava/nio/ByteBuffer;

    .line 330
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    if-nez v7, :cond_f

    .line 331
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v8, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v7, v8}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketRead(Ljava/nio/ByteBuffer;)Z

    .line 333
    :cond_f
    iget-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 339
    :cond_10
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v7

    iput-object v7, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 340
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 345
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_11

    .line 346
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->shutdown()V

    .line 351
    :cond_11
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v7, :cond_12

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v6, v7, :cond_12

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v6, v7, :cond_13

    .line 354
    :cond_12
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->doHandshake()V

    .line 356
    :cond_13
    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v7, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v6, v7, :cond_8

    .line 361
    :cond_14
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 365
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->isConnected()Z

    .line 369
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->isConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    xor-int/2addr v0, v1

    .line 380
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_15

    .line 381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_15

    .line 382
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_15
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_16

    .line 387
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_16

    .line 388
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 389
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_16
    return v0

    :catchall_0
    move-exception v3

    .line 372
    :try_start_4
    const-string v4, "An error occured whilst trying to read from the socket"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->closeConnection()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 380
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_17

    .line 381
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_17

    .line 382
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_17
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_18

    .line 387
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_18

    .line 388
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 389
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    :cond_18
    return v1

    :catchall_1
    move-exception v0

    .line 380
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_19

    .line 381
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_19

    .line 382
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 383
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->destinationBuffer:Ljava/nio/ByteBuffer;

    .line 386
    :cond_19
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1a

    .line 387
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_1a

    .line 388
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 389
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataIn:Ljava/nio/ByteBuffer;

    .line 392
    :cond_1a
    throw v0
.end method

.method public processWriteEvent()Z
    .locals 6

    .line 501
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_14

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 511
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_9

    .line 582
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 583
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 584
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 585
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 590
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 591
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 600
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v1

    .line 592
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 593
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 595
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_3

    .line 598
    :cond_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_8
    return v1

    .line 514
    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    if-eqz v3, :cond_b

    .line 520
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v3, v4, :cond_a

    .line 521
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->dummy:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 522
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 523
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 524
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->flush()V

    .line 527
    :cond_a
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->doHandshake()V

    .line 529
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v4, :cond_10

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-eq v3, v4, :cond_10

    .line 531
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    goto/16 :goto_5

    .line 538
    :cond_b
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_c

    .line 539
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v3

    .line 540
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 544
    :cond_c
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    .line 545
    invoke-interface {v3}, Lcom/sshtools/synergy/nio/ProtocolEngine;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 547
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v3, v4}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketWrite(Ljava/nio/ByteBuffer;)Lcom/sshtools/synergy/nio/SocketWriteCallback;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 549
    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 552
    :cond_d
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 554
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    .line 556
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    iput-object v4, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->status:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 557
    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 560
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 562
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->flush()V

    .line 564
    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v3}, Lcom/sshtools/synergy/nio/ProtocolEngine;->wantsToWrite()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_4

    .line 567
    :cond_e
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    goto :goto_5

    .line 565
    :cond_f
    :goto_4
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    .line 571
    :cond_10
    :goto_5
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->isConnected()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/2addr v0, v1

    .line 582
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_13

    .line 583
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_11

    goto :goto_6

    .line 587
    :cond_11
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_7

    .line 584
    :cond_12
    :goto_6
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 585
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 590
    :cond_13
    :goto_7
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_17

    .line 591
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_14

    goto :goto_8

    .line 600
    :cond_14
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return v0

    .line 592
    :cond_15
    :goto_8
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 593
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 595
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 596
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_9

    .line 598
    :cond_16
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_17
    return v0

    :catchall_0
    move-exception v3

    .line 574
    :try_start_2
    const-string v4, "An error occured whilst trying to write to the socket"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v3, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 575
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->closeConnection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 582
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1a

    .line 583
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_18

    goto :goto_a

    .line 587
    :cond_18
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_b

    .line 584
    :cond_19
    :goto_a
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 585
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 590
    :cond_1a
    :goto_b
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1e

    .line 591
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v0, v3, :cond_1b

    goto :goto_c

    .line 600
    :cond_1b
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_e

    .line 592
    :cond_1c
    :goto_c
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 593
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 595
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_d

    .line 598
    :cond_1d
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_1e
    :goto_e
    return v1

    :catchall_1
    move-exception v0

    .line 582
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_21

    .line 583
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_1f

    goto :goto_f

    .line 587
    :cond_1f
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_10

    .line 584
    :cond_20
    :goto_f
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 585
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->sourceBuffer:Ljava/nio/ByteBuffer;

    .line 590
    :cond_21
    :goto_10
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_25

    .line 591
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ne v1, v3, :cond_22

    goto :goto_11

    .line 600
    :cond_22
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    goto :goto_13

    .line 592
    :cond_23
    :goto_11
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->daemonContext:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    iget-object v3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    .line 593
    iput-object v2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketDataOut:Ljava/nio/ByteBuffer;

    .line 595
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 596
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SocketWriteCallback;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/SocketWriteCallback;->completedWrite()V

    goto :goto_12

    .line 598
    :cond_24
    iget-object v1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketWriteCallbacks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 602
    :cond_25
    :goto_13
    throw v0

    :cond_26
    :goto_14
    return v1
.end method

.method public registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 103
    check-cast p1, Ljava/nio/channels/SocketChannel;

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 104
    iput-object p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    .line 105
    iput-object p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->key:Ljava/nio/channels/SelectionKey;

    .line 110
    :try_start_0
    invoke-static {}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    const/4 p2, 0x0

    .line 113
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 115
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-boolean p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->allowClientCertificate:Z

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 116
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    iget-boolean p3, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->requireClientCertificate:Z

    invoke-virtual {p1, p3}, Ljavax/net/ssl/SSLEngine;->setNeedClientAuth(Z)V

    .line 118
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->session:Ljavax/net/ssl/SSLSession;

    .line 119
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 120
    iget-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->hsStatus:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    const/4 p1, 0x1

    .line 121
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->initialHandshake:Z

    .line 125
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->dummy:Ljava/nio/ByteBuffer;

    .line 128
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 131
    :catch_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->closeConnection()V

    return-void
.end method

.method public wantsWrite()Z
    .locals 1

    .line 607
    invoke-super {p0}, Lcom/sshtools/synergy/nio/SocketConnection;->wantsWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/ssl/SSLContextConnection;->wantsWrite:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

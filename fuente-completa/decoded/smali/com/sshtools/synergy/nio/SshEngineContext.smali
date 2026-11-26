.class public Lcom/sshtools/synergy/nio/SshEngineContext;
.super Ljava/lang/Object;
.source "SshEngineContext.java"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

.field bufferPoolArraySize:I

.field daemon:Lcom/sshtools/synergy/nio/SshEngine;

.field idleServicePeriod:I

.field inactivePeriodsPerIdleEvent:I

.field interfacesToBind:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/nio/ListeningInterface;",
            ">;"
        }
    .end annotation
.end field

.field ipv6WorkaroundBindAddress:Ljava/lang/String;

.field ipv6WorkaroundPort:I

.field maximumChannelsPerThread:I

.field maximumConnections:I

.field permanentAcceptThreads:I

.field permanentConnectThreads:I

.field permanentTransferThreads:I

.field product:Ljava/lang/String;

.field selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

.field tooManyConnectionsText:Ljava/lang/String;

.field useDirectByteBuffers:Z


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "SSHD"

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->product:Ljava/lang/String;

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumConnections:I

    .line 45
    const-string v0, "Too many connections"

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->tooManyConnectionsText:Ljava/lang/String;

    const/4 v0, 0x1

    .line 49
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentAcceptThreads:I

    .line 50
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentConnectThreads:I

    const/4 v1, 0x2

    .line 51
    iput v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentTransferThreads:I

    const/16 v1, 0x3e8

    .line 52
    iput v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumChannelsPerThread:I

    .line 53
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->idleServicePeriod:I

    .line 54
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->inactivePeriodsPerIdleEvent:I

    .line 55
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->useDirectByteBuffers:Z

    const v1, 0x11000

    .line 56
    iput v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPoolArraySize:I

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x8

    const v3, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    const v0, 0xea76

    .line 59
    iput v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundPort:I

    .line 60
    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundBindAddress:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->attributes:Ljava/util/Map;

    .line 68
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-void
.end method

.method public static addEventListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    .line 470
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sshtools/common/events/EventService;->addListener(Lcom/sshtools/common/events/EventListener;)V

    return-void
.end method

.method public static removeEventListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    .line 474
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sshtools/common/events/EventService;->removeListener(Lcom/sshtools/common/events/EventListener;)V

    return-void
.end method


# virtual methods
.method public addListeningInterface(Ljava/lang/String;ILcom/sshtools/synergy/nio/ProtocolContextFactory;Z)Lcom/sshtools/synergy/nio/ListeningInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;Z)",
            "Lcom/sshtools/synergy/nio/ListeningInterface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sshtools/synergy/nio/SshEngineContext;->addListeningInterface(Ljava/net/InetAddress;ILcom/sshtools/synergy/nio/ProtocolContextFactory;Z)Lcom/sshtools/synergy/nio/ListeningInterface;

    move-result-object p1

    return-object p1
.end method

.method public addListeningInterface(Ljava/net/InetAddress;ILcom/sshtools/synergy/nio/ProtocolContextFactory;Z)Lcom/sshtools/synergy/nio/ListeningInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            "I",
            "Lcom/sshtools/synergy/nio/ProtocolContextFactory<",
            "*>;Z)",
            "Lcom/sshtools/synergy/nio/ListeningInterface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 226
    new-instance p1, Lcom/sshtools/synergy/nio/ListeningInterface;

    invoke-direct {p1, v0, p3}, Lcom/sshtools/synergy/nio/ListeningInterface;-><init>(Ljava/net/InetSocketAddress;Lcom/sshtools/synergy/nio/ProtocolContextFactory;)V

    .line 227
    invoke-virtual {p1, p4}, Lcom/sshtools/synergy/nio/ListeningInterface;->setSocketOptionReuseAddress(Z)V

    .line 229
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/SshEngine;->isStarted()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {p2}, Lcom/sshtools/synergy/nio/SshEngine;->isStarting()Z

    move-result p2

    if-nez p2, :cond_1

    .line 232
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {p2, p1}, Lcom/sshtools/synergy/nio/SshEngine;->startListeningInterface(Lcom/sshtools/synergy/nio/ListeningInterface;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/ListeningInterface;->getAddressToBind()Ljava/net/InetSocketAddress;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to start interface "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TK;)TK;"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_0
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;
    .locals 3

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/sshtools/common/util/ByteBufferPool;

    iget v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPoolArraySize:I

    iget-boolean v2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->useDirectByteBuffers:Z

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/ByteBufferPool;-><init>(IZ)V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getEngine()Lcom/sshtools/synergy/nio/SshEngine;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-object v0
.end method

.method public getIdleServiceRunPeriod()I
    .locals 1

    .line 431
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->idleServicePeriod:I

    return v0
.end method

.method public getInactiveServiceRunsPerIdleEvent()I
    .locals 1

    .line 452
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->inactivePeriodsPerIdleEvent:I

    return v0
.end method

.method public getIpv6WorkaroundBindAddress()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundBindAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6WorkaroundPort()I
    .locals 1

    .line 478
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundPort:I

    return v0
.end method

.method public getListeningInterfaces()[Lcom/sshtools/synergy/nio/ListeningInterface;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    .line 310
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sshtools/synergy/nio/ListeningInterface;

    .line 309
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/synergy/nio/ListeningInterface;

    return-object v0
.end method

.method public getMaximumChannelsPerThread()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumChannelsPerThread:I

    return v0
.end method

.method public getMaximumConnections()I
    .locals 1

    .line 102
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumConnections:I

    return v0
.end method

.method public getPermanentAcceptThreads()I
    .locals 1

    .line 319
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentAcceptThreads:I

    return v0
.end method

.method public getPermanentConnectThreads()I
    .locals 1

    .line 349
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentConnectThreads:I

    return v0
.end method

.method public getPermanentTransferThreads()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentTransferThreads:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectorProvider()Ljava/nio/channels/spi/SelectorProvider;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    return-object v0
.end method

.method public getTooManyConnectionsText()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->tooManyConnectionsText:Ljava/lang/String;

    return-object v0
.end method

.method public isUsingDirectBuffers()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->useDirectByteBuffers:Z

    return v0
.end method

.method public removeListeningInterface(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeListeningInterface(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 264
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/synergy/nio/SshEngineContext;->removeListeningInterface(Ljava/net/InetAddress;I)V

    return-void
.end method

.method public removeListeningInterface(Ljava/net/InetAddress;I)V
    .locals 1

    .line 247
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 248
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->interfacesToBind:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/nio/ListeningInterface;

    if-eqz p1, :cond_0

    .line 250
    iget-object p2, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {p2, p1}, Lcom/sshtools/synergy/nio/SshEngine;->removeAcceptor(Lcom/sshtools/synergy/nio/ListeningInterface;)V

    :cond_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBufferPoolArraySize(I)V
    .locals 1

    const v0, 0x88b8

    if-lt p1, v0, :cond_0

    .line 191
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->bufferPoolArraySize:I

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The buffer pool must have an array size of at least 35000 bytes (the maximum packet size supported)"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIdleServiceRunPeriod(I)V
    .locals 0

    .line 440
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->idleServicePeriod:I

    return-void
.end method

.method public setInactiveServiceRunsPerIdleEvent(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->inactivePeriodsPerIdleEvent:I

    return-void
.end method

.method public setIpv6WorkaroundBindAddress(Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundBindAddress:Ljava/lang/String;

    return-void
.end method

.method public setIpv6WorkaroundPort(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->ipv6WorkaroundPort:I

    return-void
.end method

.method public setMaximumChannelsPerThread(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 418
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumChannelsPerThread:I

    return-void

    .line 415
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must have at least 1 selector per thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumConnections(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->maximumConnections:I

    return-void
.end method

.method public setPermanentAcceptThreads(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 340
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentAcceptThreads:I

    return-void

    .line 337
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least one permanent ACCEPT thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPermanentConnectThreads(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 366
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentConnectThreads:I

    return-void

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least one permanent CONNECT thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPermanentTransferThreads(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 393
    iput p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->permanentTransferThreads:I

    return-void

    .line 390
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "There must be at least one permanent TRANSFER thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->product:Ljava/lang/String;

    return-void
.end method

.method public setSelectorProvider(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    return-void
.end method

.method public setTooManyConnectionsText(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->tooManyConnectionsText:Ljava/lang/String;

    return-void
.end method

.method public setUsingDirectBuffers(Z)V
    .locals 0

    .line 177
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/SshEngineContext;->useDirectByteBuffers:Z

    return-void
.end method

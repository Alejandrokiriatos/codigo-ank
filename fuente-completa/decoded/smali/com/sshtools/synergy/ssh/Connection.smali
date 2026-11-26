.class public Lcom/sshtools/synergy/ssh/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/sshtools/common/events/EventTrigger;
.implements Lcom/sshtools/common/ssh/SshConnection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/events/EventTrigger;",
        "Lcom/sshtools/common/ssh/SshConnection;"
    }
.end annotation


# instance fields
.field closed:Z

.field connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;"
        }
    .end annotation
.end field

.field context:Lcom/sshtools/synergy/ssh/SshContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/events/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field localAddress:Ljava/net/InetSocketAddress;

.field locale:Ljava/util/Locale;

.field properties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field remoteAddress:Ljava/net/InetSocketAddress;

.field startTime:Ljava/util/Date;

.field transport:Lcom/sshtools/synergy/ssh/TransportProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "+",
            "Lcom/sshtools/common/ssh/Context;",
            ">;"
        }
    .end annotation
.end field

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/SshContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/Connection;->closed:Z

    .line 61
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->startTime:Ljava/util/Date;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->listeners:Ljava/util/List;

    .line 71
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    .line 72
    new-instance p1, Lcom/sshtools/synergy/ssh/Connection$1;

    invoke-direct {p1, p0}, Lcom/sshtools/synergy/ssh/Connection$1;-><init>(Lcom/sshtools/synergy/ssh/Connection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addEventListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)Lcom/sshtools/common/ssh/ConnectionAwareTask;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object p1
.end method

.method public addTask(Ljava/lang/Runnable;)Lcom/sshtools/common/ssh/ConnectionAwareTask;
    .locals 1

    .line 137
    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    .line 138
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/Connection;->closed:Z

    .line 273
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public containsProperty(Ljava/lang/String;)Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public disconnect()V
    .locals 1

    .line 199
    const-string v0, "By Application"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/Connection;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method public disconnect(ILjava/lang/String;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/Connection;->closed:Z

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TR;>;)",
            "Ljava/util/concurrent/Future<",
            "TR;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized fireEvent(Lcom/sshtools/common/events/Event;)V
    .locals 5

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/events/EventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-interface {v2, p1}, Lcom/sshtools/common/events/EventListener;->processEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 103
    :try_start_2
    instance-of v3, v2, Lcom/sshtools/common/events/EventException;

    if-eqz v3, :cond_1

    .line 104
    check-cast v2, Lcom/sshtools/common/events/EventException;

    move-object v1, v2

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "Caught exception from event listener"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :cond_3
    :try_start_3
    throw v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public bridge synthetic getAuthenticatedFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object v0

    return-object v0
.end method

.method public getCipherInUseCS()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getCipherCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCipherInUseSC()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getCipherSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionInUseCS()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getCompressionCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompressionInUseSC()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getCompressionSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/common/ssh/Context;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/sshtools/synergy/ssh/SshContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    return-object v0
.end method

.method public getDisconnectFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnectFuture:Lcom/sshtools/synergy/nio/DisconnectRequestFuture;

    return-object v0
.end method

.method public getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getHostKeyAlgorithm()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getHostKeyAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostKeyInUse()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getHostKeyInUse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyExchangeInUse()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getKeyExchangeInUse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIPAddress()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalIdentification()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getLocalIdentification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->localAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->locale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getMacInUseCS()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getMacCS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacInUseSC()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getMacSC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCiphersCS()[Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteCiphersCS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCiphersSC()[Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteCiphersSC()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCompressionsCS()[Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteCompressionsCS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteCompressionsSC()[Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteCompressionsSC()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIPAddress()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteIdentification()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteKeyExchanges()[Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteKeyExchanges()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMacsCS()[Ljava/lang/String;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteMacsCS()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMacsSC()[Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteMacsSC()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    return v0
.end method

.method public getRemotePublicKeys()[Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemotePublicKeys()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 1

    .line 314
    invoke-static {}, Lcom/sshtools/synergy/nio/SshEngine;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCount()I
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getActiveChannels()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 300
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTotalBytesIn()J
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-wide v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->incomingBytes:J

    return-wide v0
.end method

.method public getTotalBytesOut()J
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    iget-wide v0, v0, Lcom/sshtools/synergy/ssh/TransportProtocol;->outgoingBytes:J

    return-wide v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isDisconnected()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/Connection;->getDisconnectFuture()Lcom/sshtools/common/ssh/AbstractRequestFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->isDone()Z

    move-result v0

    return v0
.end method

.method public isDisconnecting()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isDisonnecting()Z

    move-result v0

    return v0
.end method

.method public openChannel(Lcom/sshtools/common/ssh/Channel;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    if-eqz v0, :cond_0

    .line 322
    check-cast p1, Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->openChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    return-void

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized removeEventListener(Lcom/sshtools/common/events/EventListener;)V
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeProperty(Ljava/lang/String;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;)V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;)V

    return-void
.end method

.method public sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 408
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {p2, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;)V

    return-void
.end method

.method public sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V

    return-void
.end method

.method public setLocalAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/Connection;->localAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->properties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRemoteAddress(Ljava/net/InetSocketAddress;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/Connection;->remoteAddress:Ljava/net/InetSocketAddress;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/Connection;->username:Ljava/lang/String;

    return-void
.end method

.method public startLogging()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->startLogging(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

.method public startLogging(Lcom/sshtools/common/logger/Log$Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->context:Lcom/sshtools/synergy/ssh/SshContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionManager;->startLogging(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

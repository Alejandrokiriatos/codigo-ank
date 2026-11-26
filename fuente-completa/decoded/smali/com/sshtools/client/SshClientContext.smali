.class public Lcom/sshtools/client/SshClientContext;
.super Lcom/sshtools/synergy/ssh/SshContext;
.source "SshClientContext.java"


# static fields
.field static defaultConnectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field static defaultForwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ForwardingManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field private static verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field authenticationClient:Lcom/sshtools/client/AuthenticationProtocolClient;

.field authenticators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field bannerDisplay:Lcom/sshtools/client/BannerDisplay;

.field channelFactory:Lcom/sshtools/synergy/ssh/ChannelFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field connectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field forwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ForwardingManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field globalRequestHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private hkv:Lcom/sshtools/common/knownhosts/HostKeyVerification;

.field private preferKeyboardInteractiveOverPassword:Z

.field socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

.field stateListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/sshtools/client/ClientStateListener;",
            ">;"
        }
    .end annotation
.end field

.field subsystemCacheSize:I

.field protected transport:Lcom/sshtools/client/TransportProtocolClient;

.field username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/sshtools/synergy/ssh/ForwardingManager;

    invoke-direct {v0}, Lcom/sshtools/synergy/ssh/ForwardingManager;-><init>()V

    sput-object v0, Lcom/sshtools/client/SshClientContext;->defaultForwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    .line 90
    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionManager;

    const-string v1, "client"

    invoke-direct {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sshtools/client/SshClientContext;->defaultConnectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;

    .line 94
    sget-object v0, Lcom/sshtools/client/SshClientContext;->defaultForwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    new-instance v1, Lcom/sshtools/client/SshClientContext$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/client/SshClientContext$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ForwardingManager;->setForwardingFactory(Lcom/sshtools/synergy/ssh/ForwardingFactory;)V

    .line 95
    sget-object v0, Lcom/sshtools/client/SshClientContext;->defaultForwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    new-instance v1, Lcom/sshtools/client/DefaultRemoteForwardRequestHandler;

    invoke-direct {v1}, Lcom/sshtools/client/DefaultRemoteForwardRequestHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ForwardingManager;->addRemoteForwardRequestHandler(Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-direct {p0, v0}, Lcom/sshtools/client/SshClientContext;-><init>(Lcom/sshtools/common/ssh/SecurityLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 120
    invoke-static {}, Lcom/sshtools/synergy/nio/SshEngine;->getDefaultInstance()Lcom/sshtools/synergy/nio/SshEngine;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sshtools/client/SshClientContext;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/SecurityLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 112
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    sget-object v1, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-direct {p0, p1, v0, v1}, Lcom/sshtools/client/SshClientContext;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/sshtools/client/SshClientContext;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 107
    invoke-direct {p0, p2, p3}, Lcom/sshtools/synergy/ssh/SshContext;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;Lcom/sshtools/common/ssh/SecurityLevel;)V

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->authenticators:Ljava/util/List;

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->stateListeners:Ljava/util/Collection;

    const p2, 0x9fff6

    .line 70
    iput p2, p0, Lcom/sshtools/client/SshClientContext;->subsystemCacheSize:I

    .line 72
    new-instance p2, Lcom/sshtools/client/DefaultClientChannelFactory;

    invoke-direct {p2}, Lcom/sshtools/client/DefaultClientChannelFactory;-><init>()V

    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->channelFactory:Lcom/sshtools/synergy/ssh/ChannelFactory;

    .line 74
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-static {p2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->globalRequestHandlers:Ljava/util/Map;

    .line 77
    new-instance p2, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;

    invoke-direct {p2}, Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;-><init>()V

    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    const/4 p2, 0x0

    .line 80
    iput-object p2, p0, Lcom/sshtools/client/SshClientContext;->hkv:Lcom/sshtools/common/knownhosts/HostKeyVerification;

    const/4 p2, 0x1

    .line 98
    iput-boolean p2, p0, Lcom/sshtools/client/SshClientContext;->preferKeyboardInteractiveOverPassword:Z

    .line 108
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
    .locals 1

    .line 94
    new-instance v0, Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/LocalForwardingChannelFactoryImpl;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public addAuthenticator(Lcom/sshtools/client/ClientAuthenticator;)Lcom/sshtools/client/SshClientContext;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->authenticators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGlobalRequestHandler(Lcom/sshtools/synergy/ssh/GlobalRequestHandler;)Lcom/sshtools/client/SshClientContext;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)",
            "Lcom/sshtools/client/SshClientContext;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 306
    :goto_0
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;->supportedRequests()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sshtools/client/SshClientContext;->globalRequestHandlers:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;->supportedRequests()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public addStateListener(Lcom/sshtools/client/ClientStateListener;)Lcom/sshtools/client/SshClientContext;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->stateListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected declared-synchronized configureKeyExchanges()V
    .locals 3

    monitor-enter p0

    .line 183
    :try_start_0
    sget-object v0, Lcom/sshtools/client/SshClientContext;->verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lcom/sshtools/client/SshClientContext;->verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    iput-object v0, p0, Lcom/sshtools/client/SshClientContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    const-string v0, "Initializing client key exchanges"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_1
    new-instance v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    iget-object v1, p0, Lcom/sshtools/client/SshClientContext;->componentManager:Lcom/sshtools/common/ssh/components/ComponentManager;

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;-><init>(Lcom/sshtools/common/ssh/components/ComponentManager;)V

    sput-object v0, Lcom/sshtools/client/SshClientContext;->verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    .line 193
    const-class v0, Lcom/sshtools/client/SshKeyExchangeClientFactory;

    .line 194
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/client/SshKeyExchangeClientFactory;

    .line 195
    invoke-virtual {p0, v1}, Lcom/sshtools/client/SshClientContext;->testClientKeyExchangeAlgorithm(Lcom/sshtools/client/SshKeyExchangeClientFactory;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 196
    sget-object v2, Lcom/sshtools/client/SshClientContext;->verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v2, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->add(Lcom/sshtools/common/ssh/components/ComponentInstanceFactory;)V

    goto :goto_0

    .line 199
    :cond_3
    sget-object v0, Lcom/sshtools/client/SshClientContext;->verifiedKeyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/ComponentFactory;

    iput-object v0, p0, Lcom/sshtools/client/SshClientContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public createEngine(Lcom/sshtools/synergy/nio/ConnectRequestFuture;)Lcom/sshtools/synergy/nio/ProtocolEngine;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/sshtools/client/TransportProtocolClient;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/TransportProtocolClient;-><init>(Lcom/sshtools/client/SshClientContext;Lcom/sshtools/synergy/nio/ConnectRequestFuture;)V

    iput-object v0, p0, Lcom/sshtools/client/SshClientContext;->transport:Lcom/sshtools/client/TransportProtocolClient;

    return-object v0
.end method

.method public getAuthenticationClient()Lcom/sshtools/client/AuthenticationProtocolClient;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->authenticationClient:Lcom/sshtools/client/AuthenticationProtocolClient;

    return-object v0
.end method

.method public getAuthenticators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/client/ClientAuthenticator;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->authenticators:Ljava/util/List;

    return-object v0
.end method

.method public getBannerDisplay()Lcom/sshtools/client/BannerDisplay;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->bannerDisplay:Lcom/sshtools/client/BannerDisplay;

    return-object v0
.end method

.method public getChannelFactory()Lcom/sshtools/synergy/ssh/ChannelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->channelFactory:Lcom/sshtools/synergy/ssh/ChannelFactory;

    return-object v0
.end method

.method public getConnectionManager()Lcom/sshtools/synergy/ssh/ConnectionManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->connectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sshtools/client/SshClientContext;->defaultConnectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;

    :cond_0
    return-object v0
.end method

.method public getDaemonContext()Lcom/sshtools/synergy/nio/SshEngineContext;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngine;->getContext()Lcom/sshtools/synergy/nio/SshEngineContext;

    move-result-object v0

    return-object v0
.end method

.method public final getEngine()Lcom/sshtools/synergy/nio/SshEngine;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->daemon:Lcom/sshtools/synergy/nio/SshEngine;

    return-object v0
.end method

.method public getForwardingManager()Lcom/sshtools/synergy/ssh/ForwardingManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ForwardingManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->forwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sshtools/client/SshClientContext;->defaultForwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    :cond_0
    return-object v0
.end method

.method public getGlobalRequestHandler(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/GlobalRequestHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->globalRequestHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;

    return-object p1
.end method

.method public getHostKeyVerification()Lcom/sshtools/common/knownhosts/HostKeyVerification;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->hkv:Lcom/sshtools/common/knownhosts/HostKeyVerification;

    return-object v0
.end method

.method public getPreferKeyboardInteractiveOverPassword()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/sshtools/client/SshClientContext;->preferKeyboardInteractiveOverPassword:Z

    return v0
.end method

.method public getPreferredPublicKey()Ljava/lang/String;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->prefPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSocketConnectionFactory()Lcom/sshtools/synergy/nio/SocketConnectionFactory;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->socketConnectionFactory:Lcom/sshtools/synergy/nio/SocketConnectionFactory;

    return-object v0
.end method

.method public getStateListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/client/ClientStateListener;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->stateListeners:Ljava/util/Collection;

    return-object v0
.end method

.method public getSubsystemCacheSize()I
    .locals 1

    .line 283
    iget v0, p0, Lcom/sshtools/client/SshClientContext;->subsystemCacheSize:I

    return v0
.end method

.method public getSupportedPublicKeys()Ljava/lang/String;
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/sshtools/client/SshClientContext;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->toArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/SshClientContext;->listPublicKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->username:Ljava/lang/String;

    return-object v0
.end method

.method public keysExchanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/sshtools/client/SshClientContext;->transport:Lcom/sshtools/client/TransportProtocolClient;

    new-instance v0, Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v1, p0, Lcom/sshtools/client/SshClientContext;->transport:Lcom/sshtools/client/TransportProtocolClient;

    iget-object v2, p0, Lcom/sshtools/client/SshClientContext;->username:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2}, Lcom/sshtools/client/AuthenticationProtocolClient;-><init>(Lcom/sshtools/client/TransportProtocolClient;Lcom/sshtools/client/SshClientContext;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sshtools/client/SshClientContext;->authenticationClient:Lcom/sshtools/client/AuthenticationProtocolClient;

    invoke-virtual {p1, v0}, Lcom/sshtools/client/TransportProtocolClient;->startService(Lcom/sshtools/synergy/ssh/Service;)V

    :cond_0
    return-void
.end method

.method public setBannerDisplay(Lcom/sshtools/client/BannerDisplay;)Lcom/sshtools/client/SshClientContext;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->bannerDisplay:Lcom/sshtools/client/BannerDisplay;

    return-object p0
.end method

.method public setChannelFactory(Lcom/sshtools/synergy/ssh/ChannelFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelFactory<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->channelFactory:Lcom/sshtools/synergy/ssh/ChannelFactory;

    return-void
.end method

.method public setConnectionManager(Lcom/sshtools/synergy/ssh/ConnectionManager;)Lcom/sshtools/client/SshClientContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)",
            "Lcom/sshtools/client/SshClientContext;"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->connectionManager:Lcom/sshtools/synergy/ssh/ConnectionManager;

    return-object p0
.end method

.method public setForwardingManager(Lcom/sshtools/synergy/ssh/ForwardingManager;)Lcom/sshtools/client/SshClientContext;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ForwardingManager<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)",
            "Lcom/sshtools/client/SshClientContext;"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->forwardingManager:Lcom/sshtools/synergy/ssh/ForwardingManager;

    return-object p0
.end method

.method public setHostKeyVerification(Lcom/sshtools/common/knownhosts/HostKeyVerification;)Lcom/sshtools/client/SshClientContext;
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->hkv:Lcom/sshtools/common/knownhosts/HostKeyVerification;

    return-object p0
.end method

.method public setPreferKeyboardInteractiveOverPassword(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/sshtools/client/SshClientContext;->preferKeyboardInteractiveOverPassword:Z

    return-void
.end method

.method public setPreferredPublicKey(Ljava/lang/String;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->prefPublicKey:Ljava/lang/String;

    return-void
.end method

.method public setSubsystemCacheSize(I)Lcom/sshtools/client/SshClientContext;
    .locals 0

    .line 287
    iput p1, p0, Lcom/sshtools/client/SshClientContext;->subsystemCacheSize:I

    return-object p0
.end method

.method public setUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClientContext;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/sshtools/client/SshClientContext;->username:Ljava/lang/String;

    return-object p0
.end method

.method public supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/ssh/components/ComponentFactory<",
            "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
            "*>;>;"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sshtools/client/SshClientContext;->keyExchanges:Lcom/sshtools/common/ssh/components/ComponentFactory;

    return-object v0
.end method

.method public testClientKeyExchangeAlgorithm(Lcom/sshtools/client/SshKeyExchangeClientFactory;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/SshKeyExchangeClientFactory<",
            "+",
            "Lcom/sshtools/client/SshKeyExchangeClient;",
            ">;)Z"
        }
    .end annotation

    .line 204
    const-string v0, "   "

    .line 0
    const-string v1, "Hash algorithm "

    .line 204
    invoke-interface {p1}, Lcom/sshtools/client/SshKeyExchangeClientFactory;->getKeys()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x0

    .line 209
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/client/SshKeyExchangeClientFactory;->create()Lcom/sshtools/common/ssh/components/Component;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v4

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->test()V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " is not supported"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-object v4, p1

    :catchall_1
    move-object p1, v4

    .line 227
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/components/SshKeyExchange;->getProvider()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client) will be supported using JCE Provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    .line 228
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 217
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (client) will not be supported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return v3
.end method

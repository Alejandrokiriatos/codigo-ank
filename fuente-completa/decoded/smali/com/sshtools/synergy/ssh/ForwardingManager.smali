.class public Lcom/sshtools/synergy/ssh/ForwardingManager;
.super Ljava/lang/Object;
.source "ForwardingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/ForwardingManager$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final REMOTE_FORWARDS_KEY:Ljava/lang/String; = "remoteForwards"


# instance fields
.field private forwardingFactory:Lcom/sshtools/synergy/ssh/ForwardingFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ForwardingFactory<",
            "TT;",
            "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field protected listeningPorts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private portsByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private remoteForwardRequestHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addRemoteForwardRequestHandler(Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFactory(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;

    return-object p1
.end method

.method public getForwardingFactory()Lcom/sshtools/synergy/ssh/ForwardingFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/ForwardingFactory<",
            "TT;",
            "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->forwardingFactory:Lcom/sshtools/synergy/ssh/ForwardingFactory;

    return-object v0
.end method

.method public getRemoteForwardRequestHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler<",
            "TT;>;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized isListening(I)Z
    .locals 5

    const-string v0, "::"

    const-string v1, "0.0.0.0:"

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 96
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public removeRemoteForwardRequestHandler(Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setForwardingFactory(Lcom/sshtools/synergy/ssh/ForwardingFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ForwardingFactory<",
            "TT;",
            "Lcom/sshtools/synergy/ssh/ForwardingChannelFactory<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->forwardingFactory:Lcom/sshtools/synergy/ssh/ForwardingFactory;

    return-void
.end method

.method public declared-synchronized startListening(Ljava/lang/String;ILcom/sshtools/synergy/ssh/Connection;Ljava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "Listening for new connections on "

    const-string v1, "Failed to start listening socket on "

    const-string v2, ":"

    const-string v3, "Port "

    monitor-enter p0

    .line 188
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v4, 0xe

    if-lez p2, :cond_1

    .line 190
    invoke-virtual {p0, p2}, Lcom/sshtools/synergy/ssh/ForwardingManager;->isListening(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " already in use"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, v4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 194
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->forwardingFactory:Lcom/sshtools/synergy/ssh/ForwardingFactory;

    invoke-interface {v3, p4, p5}, Lcom/sshtools/synergy/ssh/ForwardingFactory;->createChannelFactory(Ljava/lang/String;I)Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;

    move-result-object p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p5, 0x0

    .line 198
    :try_start_1
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v3

    .line 199
    invoke-interface {p4}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->getChannelType()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-interface {p4, p1, p2, v3, v5}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)I

    move-result p2

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    invoke-interface {v5, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 205
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v5, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object v3

    new-instance v5, Lcom/sshtools/common/events/Event;

    .line 211
    invoke-interface {p4}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->getStartedEventCode()I

    move-result p4

    const/4 v6, 0x1

    invoke-direct {v5, p0, p4, v6}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string p4, "CONNECTION"

    .line 212
    invoke-virtual {v5, p4, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string p4, "FORWARDING_TUNNEL_ENTRANCE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    invoke-virtual {p3, p4, v5}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    .line 211
    invoke-interface {v3, p3}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 216
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 217
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, p5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :cond_3
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p3

    .line 225
    :try_start_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 226
    const-string p4, "Could not instantiate forwarding channel factory"

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p4, p3, p5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p3

    .line 222
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 223
    const-string p4, "Exception caught on socket bind"

    new-array p5, p5, [Ljava/lang/Object;

    invoke-static {p4, p3, p5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 229
    :cond_4
    :goto_1
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    if-lez p2, :cond_5

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_5
    const-string p2, ""

    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, v4}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public startRemoteForwarding(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 167
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 169
    invoke-interface/range {v3 .. v8}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->isHandled(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 170
    invoke-interface/range {v3 .. v8}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->startRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I

    move-result p1

    .line 172
    invoke-virtual {v8}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p2

    const-string p3, "remoteForwards"

    invoke-virtual {p2, p3}, Lcom/sshtools/synergy/ssh/Connection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 174
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-virtual {v8}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p3

    const-string p4, "remoteForwards"

    invoke-virtual {p3, p4, p2}, Lcom/sshtools/synergy/ssh/Connection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/sshtools/synergy/ssh/RemoteForward;

    invoke-direct {p4, v6, v7}, Lcom/sshtools/synergy/ssh/RemoteForward;-><init>(Ljava/lang/String;I)V

    invoke-interface {p2, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    monitor-exit v1

    return p1

    :cond_1
    move-object p1, v4

    move p2, v5

    move-object p3, v6

    move p4, v7

    move-object p5, v8

    goto :goto_0

    .line 182
    :cond_2
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Nothing handled the remote forwarding request."

    const/4 p3, 0x5

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 183
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startX11Forwarding(ZLjava/lang/String;[BILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[BI",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public stopForwarding(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;)V"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0, v1, v2, p1}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopListening(Ljava/lang/String;ZLcom/sshtools/synergy/ssh/Connection;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stopForwarding(Ljava/lang/String;Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 248
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 249
    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopListening(Ljava/lang/String;ZLcom/sshtools/synergy/ssh/Connection;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized stopListening(Ljava/lang/String;IZLcom/sshtools/synergy/ssh/Connection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 271
    invoke-virtual {p0, p1, p3, p4}, Lcom/sshtools/synergy/ssh/ForwardingManager;->stopListening(Ljava/lang/String;ZLcom/sshtools/synergy/ssh/Connection;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized stopListening(Ljava/lang/String;ZLcom/sshtools/synergy/ssh/Connection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "Stopped listening on "

    const-string v1, "Failed to stop listening on "

    const-string v2, "Forwarding cancelled for address "

    monitor-enter p0

    .line 277
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;

    .line 284
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->belongsTo(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 285
    invoke-interface {v1, p2}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->stopListening(Z)V

    .line 286
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->portsByConnection:Ljava/util/Map;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->listeningPorts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lcom/sshtools/common/events/EventServiceImplementation;->getInstance()Lcom/sshtools/common/events/EventService;

    move-result-object p2

    new-instance v2, Lcom/sshtools/common/events/Event;

    invoke-interface {v1}, Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;->getStoppedEventCode()I

    move-result v1

    invoke-direct {v2, p0, v1, v3}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v1, "CONNECTION"

    .line 289
    invoke-virtual {v2, v1, p3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    const-string v1, "FORWARDING_TUNNEL_ENTRANCE"

    invoke-virtual {p3, v1, p1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object p3

    .line 288
    invoke-interface {p2, p3}, Lcom/sshtools/common/events/EventService;->fireEvent(Lcom/sshtools/common/events/Event;)V

    .line 292
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 293
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    :cond_1
    monitor-exit p0

    return v3

    .line 299
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 300
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_3
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stopRemoteForwarding(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 100
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    monitor-enter v1

    .line 102
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "Canceling all remote forwarding for connection"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    const-string v3, "remoteForwards"

    invoke-virtual {v0, v3}, Lcom/sshtools/synergy/ssh/Connection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz v3, :cond_4

    .line 111
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 112
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 113
    aget-object v8, v6, v2

    .line 114
    array-length v7, v6

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v9, v6

    goto :goto_0

    :cond_2
    move v9, v2

    .line 115
    :goto_0
    iget-object v6, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;

    .line 116
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sshtools/synergy/ssh/RemoteForward;

    invoke-virtual {v10}, Lcom/sshtools/synergy/ssh/RemoteForward;->getHostToConnect()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sshtools/synergy/ssh/RemoteForward;

    invoke-virtual {v11}, Lcom/sshtools/synergy/ssh/RemoteForward;->getPortToConnect()I

    move-result v11

    move-object v12, p1

    invoke-interface/range {v7 .. v12}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->isHandled(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 118
    :try_start_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/RemoteForward;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/RemoteForward;->getHostToConnect()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/RemoteForward;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/RemoteForward;->getPortToConnect()I

    move-result v11

    invoke-interface/range {v7 .. v12}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->stopRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v0, p1

    :cond_3
    :goto_2
    move-object p1, v12

    goto :goto_1

    :cond_4
    move-object v12, p1

    .line 126
    :try_start_2
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 127
    invoke-virtual {v12}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    const-string v2, "remoteForwards"

    invoke-virtual {p1, v2}, Lcom/sshtools/synergy/ssh/Connection;->removeProperty(Ljava/lang/String;)V

    if-nez v0, :cond_5

    .line 131
    monitor-exit v1

    return-void

    .line 129
    :cond_5
    throw v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 131
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public stopRemoteForwarding(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const-string v0, "No known remote forward for "

    const-string v1, "Canceling remote forwarding from "

    .line 135
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    monitor-enter v2

    .line 137
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_0
    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    const-string v3, "remoteForwards"

    invoke-virtual {v1, v3}, Lcom/sshtools/synergy/ssh/Connection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 144
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    .line 150
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/ssh/RemoteForward;

    .line 152
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ForwardingManager;->remoteForwardRequestHandlers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;

    .line 153
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/RemoteForward;->getHostToConnect()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/RemoteForward;->getPortToConnect()I

    move-result v9

    move-object v6, p1

    move v7, p2

    move-object v10, p3

    invoke-interface/range {v5 .. v10}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->isHandled(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/RemoteForward;->getHostToConnect()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/RemoteForward;->getPortToConnect()I

    move-result v9

    invoke-interface/range {v5 .. v10}, Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;->stopRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {v10}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    const-string p2, "remoteForwards"

    invoke-virtual {p1, p2}, Lcom/sshtools/synergy/ssh/Connection;->removeProperty(Ljava/lang/String;)V

    .line 158
    :cond_2
    monitor-exit v2

    return-void

    :cond_3
    move-object p1, v6

    move p2, v7

    move-object p3, v10

    goto :goto_0

    .line 161
    :cond_4
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Nothing handled closing the remote forward."

    const/4 p3, 0x5

    invoke-direct {p1, p3, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    move-object v6, p1

    move v7, p2

    .line 145
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :cond_6
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 162
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

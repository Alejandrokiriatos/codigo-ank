.class public Lcom/sshtools/synergy/ssh/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/sshtools/common/ssh/SshConnectionManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/SshConnectionManager;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "default"

.field static currentConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/ConnectionManager<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private activeConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

.field final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->instances:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->currentConnection:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 56
    invoke-static {}, Lcom/sshtools/common/logger/Log;->getDefaultContext()Lcom/sshtools/common/logger/RootLoggerContext;

    move-result-object v0

    const-string v1, "maverick.log.connection.level"

    const-string v2, "NONE"

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/logger/RootLoggerContext;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/sshtools/common/logger/Log$Level;->valueOf(Ljava/lang/String;)Lcom/sshtools/common/logger/Log$Level;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionManager;-><init>(Ljava/lang/String;Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/logger/Log$Level;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    .line 61
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->name:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->instances:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-direct {p1, p2, p0}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;-><init>(Lcom/sshtools/common/logger/Log$Level;Lcom/sshtools/synergy/ssh/ConnectionManager;)V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    return-void

    .line 62
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is already a connection manager registered named %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static getConnection(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ConnectionManager;

    .line 107
    invoke-virtual {v1, p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getConnectionById(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCurrentConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 102
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/SshConnection;

    return-object v0
.end method

.method public static searchConnectionsById(Ljava/lang/String;)Lcom/sshtools/common/ssh/SshConnection;
    .locals 2

    .line 70
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->instances:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ConnectionManager;

    .line 71
    invoke-virtual {v1, p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getConnectionById(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    .line 72
    invoke-static {v1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public clearConnection()V
    .locals 1

    .line 97
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 98
    invoke-static {}, Lcom/sshtools/common/logger/Log;->clearCurrentContext()V

    return-void
.end method

.method public declared-synchronized getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
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

.method public bridge synthetic getConnectionById(Ljava/lang/String;)Lcom/sshtools/common/ssh/SshConnection;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getConnectionById(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionById(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/Connection;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLoggedOnUsers()[Ljava/lang/String;
    .locals 4

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 189
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/ssh/Connection;

    .line 191
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/Connection;->isAuthenticated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/Connection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 196
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfConnections()Ljava/lang/Integer;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized registerConnection(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "Connection {} is now authenticated"

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getSessionIdentifier()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getSessionIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/ssh/Connection;

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 126
    iput-object p1, v0, Lcom/sshtools/synergy/ssh/Connection;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 128
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    const-string p1, "Notifying future that authentication is complete"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-object v0

    .line 123
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set connection instance on non-existent transport!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerTransport(Lcom/sshtools/synergy/ssh/TransportProtocol;Lcom/sshtools/synergy/ssh/SshContext;)Lcom/sshtools/synergy/ssh/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>;TT;)",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/synergy/ssh/Connection;-><init>(Lcom/sshtools/synergy/ssh/SshContext;)V

    .line 148
    iput-object p1, v0, Lcom/sshtools/synergy/ssh/Connection;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    .line 149
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    iput-object v1, v0, Lcom/sshtools/synergy/ssh/Connection;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 150
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iput-object p1, v0, Lcom/sshtools/synergy/ssh/Connection;->localAddress:Ljava/net/InetSocketAddress;

    .line 151
    invoke-virtual {p2}, Lcom/sshtools/synergy/ssh/SshContext;->getEventListener()Lcom/sshtools/common/events/EventListener;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p2}, Lcom/sshtools/synergy/ssh/SshContext;->getEventListener()Lcom/sshtools/common/events/EventListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/Connection;->addEventListener(Lcom/sshtools/common/events/EventListener;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 157
    const-string p1, "There {} now {} active connections on {} connection manager"

    .line 158
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    const-string p2, "are"

    goto :goto_0

    :cond_1
    const-string p2, "is"

    :goto_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    .line 159
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionManager;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p2, v1, v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->open(Lcom/sshtools/synergy/ssh/Connection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 166
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setupConnection(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1

    .line 92
    sget-object v0, Lcom/sshtools/synergy/ssh/ConnectionManager;->currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 93
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-static {p1}, Lcom/sshtools/common/logger/Log;->setupCurrentContext(Lcom/sshtools/common/logger/LoggerContext;)V

    return-void
.end method

.method public startLogging(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->startLogging(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

.method public startLogging(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/logger/Log$Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->startLogging(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/logger/Log$Level;)V

    return-void
.end method

.method public declared-synchronized unregisterTransport(Lcom/sshtools/synergy/ssh/TransportProtocol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->activeConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/Connection;

    .line 174
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->close()V

    .line 176
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionManager;->ctx:Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionLoggingContext;->close(Lcom/sshtools/synergy/ssh/Connection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
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

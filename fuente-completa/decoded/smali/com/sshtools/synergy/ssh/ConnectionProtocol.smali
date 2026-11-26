.class public abstract Lcom/sshtools/synergy/ssh/ConnectionProtocol;
.super Lcom/sshtools/common/ssh/ExecutorOperationSupport;
.source "ConnectionProtocol.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;,
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;,
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;,
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;,
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestSuccess;,
        Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/common/ssh/ExecutorOperationSupport<",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">;",
        "Lcom/sshtools/synergy/ssh/Service;"
    }
.end annotation


# static fields
.field private static final CHANNEL_DATA_IN:Ljava/lang/Integer;

.field public static final SERVICE_NAME:Ljava/lang/String; = "ssh-connection"

.field static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field static final SSH_MSG_GLOBAL_REQUEST_FAILURE:I = 0x52

.field static final SSH_MSG_GLOBAL_REQUEST_SUCCESS:I = 0x51


# instance fields
.field activeChannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field channeIdPool:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected con:Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation
.end field

.field currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

.field globalRequestHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field transport:Lcom/sshtools/synergy/ssh/TransportProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-string v0, "ConnectionProtocol.channelDataIn"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->CHANNEL_DATA_IN:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/ssh/TransportProtocol;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 92
    const-string v0, "connection-protocol"

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->globalRequestHandlers:Ljava/util/Map;

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 93
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->username:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    .line 95
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    const/4 p2, 0x0

    move v0, p2

    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/SshContext;->getChannelLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/SshContext;->getChannelLimit()I

    move-result p1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initialized MaxChannels="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/Object;

    .line 102
    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private processChannelRequestResponse(Z[B)V
    .locals 3

    .line 385
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 386
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 388
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p2, v1

    .line 391
    invoke-virtual {p0, p2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v1

    if-nez v1, :cond_0

    .line 393
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 394
    const-string p1, "Channel response received with invalid channel id {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 397
    :cond_0
    invoke-virtual {v1, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->processChannelRequestResponse(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 401
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 404
    throw p1
.end method


# virtual methods
.method public addGlobalRequestHandler(Lcom/sshtools/synergy/ssh/GlobalRequestHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/GlobalRequestHandler<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;->supportedRequests()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->globalRequestHandlers:Ljava/util/Map;

    aget-object v3, v0, v1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method allocateChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;)I"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, -0x1

    .line 182
    monitor-exit v0

    return p1

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 185
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 186
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 188
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method close(ILjava/lang/String;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->disconnect(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract createChannel(Ljava/lang/String;Lcom/sshtools/synergy/ssh/Connection;)Lcom/sshtools/synergy/ssh/ChannelNG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;)",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/UnsupportedChannelException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 2

    const/16 v0, 0xb

    .line 258
    const-string v1, "User Disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->close(ILjava/lang/String;)V

    return-void
.end method

.method freeChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "Freeing channel="

    .line 192
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 194
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 198
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->channeIdPool:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getActiveChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;>;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;"
        }
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/synergy/ssh/ChannelNG;

    return-object p1
.end method

.method public getConnection()Lcom/sshtools/synergy/ssh/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "TT;>;"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

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

    .line 928
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    return-object v0
.end method

.method public getIdleLog()Ljava/lang/String;
    .locals 2

    .line 1150
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d channels currently open"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdleTimeoutSeconds()I
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getKeepAliveInterval()I

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMaxChannels()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSshContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getChannelLimit()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getQueueSizes()I

    move-result v0

    return v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getSessionIdentifier()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/TransportProtocol<",
            "TT;>;"
        }
    .end annotation

    .line 937
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    return-object v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 1089
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getSessionIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->username:Ljava/lang/String;

    return-object v0
.end method

.method public idle()Z
    .locals 7

    .line 1098
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 1100
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log()V

    .line 1103
    :cond_1
    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getTimeout()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLastActivity()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 1104
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1105
    const-string v3, "Closing idle channel channel={} remote={}"

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getRemoteId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 v3, 0x1

    .line 1107
    invoke-virtual {v1, v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1110
    const-string v3, "Error processing channel idle"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1114
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SshContext;->getIdleConnectionTimeoutSeconds()I

    move-result v0

    if-nez v0, :cond_4

    .line 1119
    sget-object v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->CALLBACKS:Ljava/lang/Integer;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    new-instance v4, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;

    invoke-direct {v4, p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$5;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    invoke-direct {v1, v3, v4}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    :cond_4
    return v2
.end method

.method protected abstract isClient()Z
.end method

.method isConnected()Z
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->isConnected()Z

    move-result v0

    return v0
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public openChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;)V"
        }
    .end annotation

    .line 206
    invoke-virtual {p1, p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->init(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    .line 208
    monitor-enter p1

    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->allocateChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 214
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "Failed to allocate channel {}"

    .line 216
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 215
    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 223
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v3, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;

    .line 224
    invoke-virtual {p1, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->create(I)[B

    move-result-object v1

    invoke-direct {v3, p0, p1, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/synergy/ssh/ChannelNG;[B)V

    .line 223
    invoke-virtual {v2, v3}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 230
    :try_start_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const-string v2, "Failed to open channel {}"

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 233
    :cond_2
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    .line 235
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method processChannelClose([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 589
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 591
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v1

    if-nez v1, :cond_0

    .line 594
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    const-string v1, "Channel close received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 603
    :cond_0
    sget-object v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->CHANNEL_DATA_IN:Ljava/lang/Integer;

    new-instance v3, Lcom/sshtools/synergy/ssh/ConnectionProtocol$4;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {v3, p0, v4, p1, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$4;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;ILcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-virtual {p0, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 617
    throw p1
.end method

.method processChannelData([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 478
    new-instance v4, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v4, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 481
    :try_start_0
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result p1

    .line 482
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 483
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v3, :cond_1

    .line 486
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 487
    const-string p1, "Channel data received with invalid channel id {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v1, p0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    goto :goto_3

    :cond_1
    const/16 v0, 0x5e

    if-ne p1, v0, :cond_2

    .line 492
    :try_start_2
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v0

    long-to-int v5, v0

    .line 493
    sget-object p1, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->CHANNEL_DATA_IN:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v1, p0

    :try_start_3
    invoke-direct/range {v0 .. v5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$1;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/common/util/ByteArrayReader;I)V

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, p0

    goto :goto_0

    :cond_2
    move-object v1, p0

    .line 500
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int p1, v5

    .line 501
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int v6, v5

    .line 502
    sget-object v7, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->CHANNEL_DATA_IN:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;

    iget-object v2, v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, v4

    move v4, p1

    :try_start_4
    invoke-direct/range {v0 .. v6}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$2;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/synergy/ssh/ChannelNG;ILcom/sshtools/common/util/ByteArrayReader;I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v4, v5

    :try_start_5
    invoke-virtual {p0, v7, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_0
    move-object p1, v0

    .line 511
    :try_start_6
    const-string v0, "Error processing channel data"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 515
    :goto_1
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_3
    move-exception v0

    move-object v1, p0

    :goto_2
    move-object p1, v0

    :goto_3
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 516
    throw p1
.end method

.method processChannelEOF([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 548
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 551
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int p1, v1

    .line 553
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v1

    if-nez v1, :cond_0

    .line 556
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    const-string v1, "Channel EOF received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 561
    :cond_0
    sget-object v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->CHANNEL_DATA_IN:Ljava/lang/Integer;

    new-instance v3, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {v3, p0, v4, p1, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;ILcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-virtual {p0, v2, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 575
    throw p1
.end method

.method processChannelOpen([B)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 700
    const-string v1, "<null>"

    .line 0
    const-string v0, "No permission for "

    const-string v2, "Unknown channel type "

    const-string v3, "Received SSH_MSG_CHANNEL_OPEN channeltype="

    .line 700
    new-instance v4, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v4, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v5, 0x1

    .line 701
    invoke-virtual {v4, v5, v6}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 704
    :try_start_0
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int v9, v5

    .line 706
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v11

    .line 707
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int v10, v5

    .line 709
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    if-lez v5, :cond_0

    .line 710
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 711
    invoke-virtual {v4, v5}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v12, v5

    .line 714
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 715
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " remote="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " remotepacket="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " window="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v3, 0x1000

    const/4 v5, 0x1

    if-ge v10, v3, :cond_2

    .line 720
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    const-string v1, "Maximum remote packet size must be >= 4096 bytes"

    invoke-direct {v0, p0, v9, v5, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 776
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 729
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {p0, p1, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->createChannel(Ljava/lang/String;Lcom/sshtools/synergy/ssh/Connection;)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v7
    :try_end_1
    .catch Lcom/sshtools/common/ssh/UnsupportedChannelException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sshtools/common/ssh/ChannelOpenException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    :try_start_2
    invoke-virtual {v7, p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->init(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V

    .line 750
    invoke-virtual {p0, v7}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->allocateChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, -0x1

    if-le v8, p1, :cond_4

    .line 754
    :try_start_3
    invoke-virtual/range {v7 .. v12}, Lcom/sshtools/synergy/ssh/ChannelNG;->open(IIILcom/sshtools/common/util/UnsignedInteger32;[B)[B

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendChannelOpenConfirmation(Lcom/sshtools/synergy/ssh/ChannelNG;[B)V

    .line 758
    invoke-virtual {v7}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelOpen()V
    :try_end_3
    .catch Lcom/sshtools/common/ssh/ChannelOpenException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sshtools/common/nio/WriteOperationRequest; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 776
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 762
    :try_start_4
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    .line 763
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getReason()I

    move-result v3

    .line 764
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, p0, v9, v3, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    .line 762
    invoke-virtual {v0, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    goto :goto_2

    .line 770
    :cond_4
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    const-string v1, "Maximum number of open channels exceeded"

    const/4 v2, 0x4

    invoke-direct {v0, p0, v9, v2, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 776
    :catch_1
    :goto_2
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_2
    move-exception v0

    move-object p1, v0

    .line 742
    :try_start_5
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    .line 743
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getReason()I

    move-result v3

    .line 744
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ChannelOpenException;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-direct {v2, p0, v9, v3, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    .line 742
    invoke-virtual {v0, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 776
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 737
    :catch_3
    :try_start_6
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p0, v9, v5, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 776
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 732
    :catch_4
    :try_start_7
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    invoke-direct {v1, p0, v9, v2, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 776
    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 777
    throw p1
.end method

.method processChannelOpenConfirmation([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received SSH_MSG_CHANNEL_OPEN_CONFIRMATION channel="

    .line 621
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 622
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 625
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int p1, v2

    .line 627
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v2

    if-nez v2, :cond_0

    .line 630
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    const-string v0, "Channel confirmation received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    :cond_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 636
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 637
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int v5, v5

    .line 639
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v6

    if-lez v6, :cond_1

    .line 640
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v6

    new-array v6, v6, [B

    .line 641
    invoke-virtual {v1, v6}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 644
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 645
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " remote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " remotepacket="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " remotewindow="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/16 p1, 0x1000

    if-ge v5, p1, :cond_3

    .line 650
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    const-string v2, "Maximum remote packet size must be >= 4096 bytes"

    const/4 v4, 0x1

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 663
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 656
    :cond_3
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    :try_start_2
    invoke-virtual {v2, v3, v4, v5}, Lcom/sshtools/synergy/ssh/ChannelNG;->confirmOpen(ILcom/sshtools/common/util/UnsignedInteger32;I)V

    .line 659
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 659
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 663
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 664
    throw p1
.end method

.method processChannelOpenFailure([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received SSH_MSG_CHANNEL_OPEN_FAILURE channel="

    .line 668
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 669
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 672
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int p1, v2

    .line 674
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v2

    if-nez v2, :cond_0

    .line 677
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    const-string v0, "Channel open failure received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    :try_start_1
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->fail()V

    .line 689
    invoke-virtual {p0, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->freeChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    .line 690
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 690
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 693
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 694
    throw p1
.end method

.method processChannelRequest([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received SSH_MSG_CHANNEL_REQUEST \'"

    .line 887
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 888
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 891
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int p1, v2

    .line 892
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 895
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    if-lez v5, :cond_1

    .line 896
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 897
    invoke-virtual {v1, v5}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 900
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 904
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 905
    iget v7, v6, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\' channel="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  remote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    :cond_2
    invoke-virtual {v6, v2, v3, v5}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelRequest(Ljava/lang/String;Z[B)V

    goto :goto_2

    .line 912
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    const-string v0, "Channel request received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 918
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 919
    throw p1
.end method

.method processChannelWindowAdjust([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received SSH_MSG_CHANNEL_WINDOW_ADJUST channel="

    .line 520
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 521
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 524
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int p1, v2

    .line 525
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 527
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getChannel(I)Lcom/sshtools/synergy/ssh/ChannelNG;

    move-result-object v3

    if-nez v3, :cond_0

    .line 530
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    const-string v0, "Channel window adjust received with invalid channel id {}"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    iget v4, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " remote="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " adjust="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    :cond_1
    invoke-virtual {v3, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->adjustWindow(Lcom/sshtools/common/util/UnsignedInteger32;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 542
    throw p1
.end method

.method processGlobalRequest([B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Received SSH_MSG_GLOBAL_REQUEST request="

    .line 409
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v2, 0x1

    .line 412
    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 414
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 417
    :goto_0
    new-instance v5, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v5}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 419
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " wantReply="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    :cond_1
    const-string v0, "tcpip-forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {p0, v1, v5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processTCPIPForward(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    move v3, v4

    goto :goto_2

    .line 429
    :cond_2
    const-string v0, "cancel-tcpip-forward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 430
    invoke-virtual {p0, v1, v5}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processTCPIPCancel(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 433
    :cond_3
    const-string v0, "ping@sshtools.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 444
    :cond_4
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/SshContext;->getGlobalRequestHandler(Ljava/lang/String;)Lcom/sshtools/synergy/ssh/GlobalRequestHandler;

    move-result-object v0

    if-nez v0, :cond_5

    .line 447
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->globalRequestHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;

    :cond_5
    if-eqz v0, :cond_6

    .line 450
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v4

    new-array v4, v4, [B

    .line 451
    invoke-virtual {v1, v4}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 452
    new-instance v6, Lcom/sshtools/common/ssh/GlobalRequest;

    iget-object v7, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-direct {v6, p1, v7, v4}, Lcom/sshtools/common/ssh/GlobalRequest;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    invoke-interface {v0, v6, p0, v2, v5}, Lcom/sshtools/synergy/ssh/GlobalRequestHandler;->processGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;Lcom/sshtools/synergy/ssh/ConnectionProtocol;ZLcom/sshtools/common/util/ByteArrayWriter;)Z

    move-result v3
    :try_end_1
    .catch Lcom/sshtools/synergy/ssh/GlobalRequestHandler$GlobalRequestHandlerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_6
    :goto_2
    if-eqz v2, :cond_8

    if-eqz v3, :cond_7

    .line 463
    :try_start_2
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestSuccess(Ljava/lang/String;[B)V

    goto :goto_3

    .line 465
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendGlobalRequestFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :cond_8
    :goto_3
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 470
    throw p1
.end method

.method protected processGlobalRequestFailure([B)V
    .locals 5

    const-string p1, "Received SSH_MSG_GLOBAL_REQUEST_FAILURE for "

    .line 363
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    monitor-enter v0

    const/4 v2, 0x0

    .line 366
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {p1, v1}, Lcom/sshtools/common/ssh/GlobalRequest;->complete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :try_start_1
    iput-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 373
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 371
    iput-object v2, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 372
    throw p1

    :catchall_1
    move-exception p1

    .line 373
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 375
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 376
    const-string p1, "Received SSH_MSG_GLOBAL_REQUEST_FAILURE but there was no request object waiting. Did the request timeout?"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected processGlobalRequestSuccess([B)V
    .locals 6

    const-string v0, "Unexpected error reading global request "

    const-string v1, "Received SSH_MSG_GLOBAL_REQUEST_SUCCESS for "

    .line 323
    new-instance v2, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v2, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v3, 0x1

    .line 324
    invoke-virtual {v2, v3, v4}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 326
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 327
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 328
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_0
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 332
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v1

    new-array v1, v1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readFully([B)V

    .line 335
    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v4, v1}, Lcom/sshtools/common/ssh/GlobalRequest;->setData([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 337
    :catch_0
    :try_start_3
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/GlobalRequest;->setData([B)V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/GlobalRequest;->complete(Z)V

    .line 344
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 347
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 348
    const-string p1, "Received SSH_MSG_GLOBAL_REQUEST_SUCCESS but there was no request object waiting. Did the request timeout?"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 354
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 355
    throw p1
.end method

.method public processMessage([B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    return v0

    .line 310
    :pswitch_0
    invoke-direct {p0, v0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelRequestResponse(Z[B)V

    return v2

    .line 307
    :pswitch_1
    invoke-direct {p0, v2, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelRequestResponse(Z[B)V

    return v2

    .line 280
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelRequest([B)V

    return v2

    .line 295
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelClose([B)V

    return v2

    .line 292
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelEOF([B)V

    return v2

    .line 286
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelData([B)V

    return v2

    .line 283
    :pswitch_6
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelData([B)V

    return v2

    .line 289
    :pswitch_7
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelWindowAdjust([B)V

    return v2

    .line 277
    :pswitch_8
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelOpenFailure([B)V

    return v2

    .line 274
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelOpenConfirmation([B)V

    return v2

    .line 271
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelOpen([B)V

    return v2

    .line 301
    :pswitch_b
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processGlobalRequestFailure([B)V

    return v2

    .line 304
    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processGlobalRequestSuccess([B)V

    return v2

    .line 298
    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processGlobalRequest([B)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract processTCPIPCancel(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract processTCPIPForward(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/util/ByteArrayWriter;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public sendChannelOpenConfirmation(Lcom/sshtools/synergy/ssh/ChannelNG;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;[B)V"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelOpenConfirmationMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/synergy/ssh/ChannelNG;[B)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 868
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->confirmOpen()V

    return-void
.end method

.method public sendChannelOpenFailure(Lcom/sshtools/synergy/ssh/ChannelNG;ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->getRemoteId()I

    move-result v2

    invoke-direct {v1, p0, v2, p2, p3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$ChannelFailureMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 874
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->freeChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    return-void
.end method

.method public sendGlobalRequest(Lcom/sshtools/common/ssh/GlobalRequest;)V
    .locals 3

    .line 783
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Sending SSH_MSG_GLOBAL_REQUEST request={} wantReply=false"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/GlobalRequest;Z)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public declared-synchronized sendGlobalRequestAndWait(Lcom/sshtools/common/ssh/GlobalRequest;J)V
    .locals 4

    monitor-enter p0

    .line 797
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 800
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_0

    .line 801
    const-string v1, "Request to send {} will override an existing request {}!"

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 803
    :cond_0
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 805
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const-string v1, "Sending SSH_MSG_GLOBAL_REQUEST request={} wantReply=true"

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/GlobalRequest;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestMessage;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/GlobalRequest;Z)V

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 811
    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/ssh/GlobalRequest;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 813
    :try_start_2
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 815
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 817
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p2

    .line 813
    :try_start_3
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->currentRequest:Lcom/sshtools/common/ssh/GlobalRequest;

    .line 814
    throw p2

    :catchall_1
    move-exception p2

    .line 815
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method sendGlobalRequestFailure(Ljava/lang/String;)V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;

    invoke-direct {v1, p0, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestFailure;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method sendGlobalRequestSuccess(Ljava/lang/String;[B)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestSuccess;

    invoke-direct {v1, p0, p1, p2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol$GlobalRequestSuccess;-><init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/TransportProtocol;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public start()V
    .locals 0

    .line 946
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->onStart()V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 157
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 160
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "Cleaning up connection protocol references"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->activeChannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/ssh/ChannelNG;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    .line 166
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->close(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 170
    :cond_1
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

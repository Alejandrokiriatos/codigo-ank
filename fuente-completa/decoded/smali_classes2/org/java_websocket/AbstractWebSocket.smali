.class public abstract Lorg/java_websocket/AbstractWebSocket;
.super Lorg/java_websocket/WebSocketAdapter;
.source "AbstractWebSocket.java"


# static fields
.field protected static DEFAULT_READ_BUFFER_SIZE:I = 0x10000


# instance fields
.field private connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

.field private connectionLostTimeout:J

.field private daemon:Z

.field private final log:Lorg/slf4j/Logger;

.field private receiveBufferSize:I

.field private reuseAddr:Z

.field private final syncConnectionLost:Ljava/lang/Object;

.field private tcpNoDelay:Z

.field private websocketRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 43
    invoke-direct {p0}, Lorg/java_websocket/WebSocketAdapter;-><init>()V

    .line 50
    const-class v0, Lorg/java_websocket/AbstractWebSocket;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 98
    iput-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->daemon:Z

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    .line 110
    iput v0, p0, Lorg/java_websocket/AbstractWebSocket;->receiveBufferSize:I

    return-void
.end method

.method static synthetic access$000(Lorg/java_websocket/AbstractWebSocket;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lorg/java_websocket/AbstractWebSocket;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/java_websocket/AbstractWebSocket;Lorg/java_websocket/WebSocket;J)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/java_websocket/AbstractWebSocket;->executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V

    return-void
.end method

.method private cancelConnectionLostTimer()V
    .locals 3

    .line 276
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 278
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 281
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 282
    iput-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method private executeConnectionLostDetection(Lorg/java_websocket/WebSocket;J)V
    .locals 2

    .line 245
    instance-of v0, p1, Lorg/java_websocket/WebSocketImpl;

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    check-cast p1, Lorg/java_websocket/WebSocketImpl;

    .line 249
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->getLastPong()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-gez p2, :cond_1

    .line 250
    iget-object p2, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string p3, "Closing connection due to no pong received: {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 p2, 0x3ee

    .line 251
    const-string p3, "The connection was closed because the other endpoint did not respond with a pong in time. For more information check: https://github.com/TooTallNate/Java-WebSocket/wiki/Lost-connection-detection"

    invoke-virtual {p1, p2, p3}, Lorg/java_websocket/WebSocketImpl;->closeConnection(ILjava/lang/String;)V

    return-void

    .line 254
    :cond_1
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 255
    invoke-virtual {p1}, Lorg/java_websocket/WebSocketImpl;->sendPing()V

    return-void

    .line 257
    :cond_2
    iget-object p2, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string p3, "Trying to ping a non open connection: {}"

    invoke-interface {p2, p3, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private restartConnectionLostTimer()V
    .locals 8

    .line 202
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 203
    new-instance v0, Lorg/java_websocket/util/NamedThreadFactory;

    const-string v1, "connectionLostChecker"

    iget-boolean v2, p0, Lorg/java_websocket/AbstractWebSocket;->daemon:Z

    invoke-direct {v0, v1, v2}, Lorg/java_websocket/util/NamedThreadFactory;-><init>(Ljava/lang/String;Z)V

    .line 204
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 205
    new-instance v2, Lorg/java_websocket/AbstractWebSocket$1;

    invoke-direct {v2, p0}, Lorg/java_websocket/AbstractWebSocket$1;-><init>(Lorg/java_websocket/AbstractWebSocket;)V

    .line 231
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v3, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v5, v3

    .line 232
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public getConnectionLostTimeout()I
    .locals 4

    .line 124
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v1, v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 126
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract getConnections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/java_websocket/WebSocket;",
            ">;"
        }
    .end annotation
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 359
    iget v0, p0, Lorg/java_websocket/AbstractWebSocket;->receiveBufferSize:I

    return v0
.end method

.method public isDaemon()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->daemon:Z

    return v0
.end method

.method public isReuseAddr()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 293
    iget-boolean v0, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .locals 5

    .line 137
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_0

    .line 140
    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v1, "Connection lost timer stopped"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 142
    monitor-exit v0

    return-void

    .line 144
    :cond_0
    iget-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v1, "Connection lost timer restarted"

    invoke-interface {p1, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :try_start_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/java_websocket/AbstractWebSocket;->getConnections()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/java_websocket/WebSocket;

    .line 151
    instance-of v2, v1, Lorg/java_websocket/WebSocketImpl;

    if-eqz v2, :cond_1

    .line 152
    check-cast v1, Lorg/java_websocket/WebSocketImpl;

    .line 153
    invoke-virtual {v1}, Lorg/java_websocket/WebSocketImpl;->updateLastPong()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 157
    :try_start_2
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Exception during connection lost restart"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    :cond_2
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 161
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setDaemon(Z)V
    .locals 0

    .line 349
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->daemon:Z

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 373
    iput p1, p0, Lorg/java_websocket/AbstractWebSocket;->receiveBufferSize:I

    return-void

    .line 371
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buffer size < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReuseAddr(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->reuseAddr:Z

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 305
    iput-boolean p1, p0, Lorg/java_websocket/AbstractWebSocket;->tcpNoDelay:Z

    return-void
.end method

.method protected startConnectionLostTimer()V
    .locals 5

    .line 185
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    iget-wide v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostTimeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 187
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer deactivated"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 188
    monitor-exit v0

    return-void

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer started"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 191
    iput-boolean v1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 192
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->restartConnectionLostTimer()V

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected stopConnectionLostTimer()V
    .locals 3

    .line 170
    iget-object v0, p0, Lorg/java_websocket/AbstractWebSocket;->syncConnectionLost:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->connectionLostCheckerFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lorg/java_websocket/AbstractWebSocket;->websocketRunning:Z

    .line 173
    iget-object v1, p0, Lorg/java_websocket/AbstractWebSocket;->log:Lorg/slf4j/Logger;

    const-string v2, "Connection lost timer stopped"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lorg/java_websocket/AbstractWebSocket;->cancelConnectionLostTimer()V

    .line 176
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

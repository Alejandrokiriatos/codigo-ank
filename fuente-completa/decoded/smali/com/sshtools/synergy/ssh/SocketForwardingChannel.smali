.class public abstract Lcom/sshtools/synergy/ssh/SocketForwardingChannel;
.super Lcom/sshtools/synergy/ssh/ForwardingChannel;
.source "SocketForwardingChannel.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SocketHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Lcom/sshtools/synergy/ssh/ForwardingChannel<",
        "TT;>;",
        "Lcom/sshtools/synergy/nio/SocketHandler;"
    }
.end annotation


# static fields
.field public static final LOCAL_FORWARDING_CHANNEL_TYPE:Ljava/lang/String; = "direct-tcpip"

.field public static final REMOTE_FORWARDING_CHANNEL_TYPE:Ljava/lang/String; = "forwarded-tcpip"

.field private static final SOCKET_QUEUE:I = -0xf100000

.field public static final X11_FORWARDING_CHANNEL_TYPE:Ljava/lang/String; = "x11"


# instance fields
.field closePending:Z

.field protected key:Ljava/nio/channels/SelectionKey;

.field protected selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

.field protected socketChannel:Ljava/nio/channels/SocketChannel;

.field socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

.field totalIn:J

.field totalOut:J


# direct methods
.method static bridge synthetic -$$Nest$mchangeInterestedOps(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->changeInterestedOps()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 7

    .line 79
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->getForwardingMaxPacketSize()I

    move-result v3

    .line 80
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->getForwardingMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 81
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->getForwardingMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    .line 82
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {v0}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->getForwardingMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 78
    invoke-direct/range {v1 .. v6}, Lcom/sshtools/synergy/ssh/ForwardingChannel;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->closePending:Z

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    new-instance p1, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object p2

    const-class v0, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-interface {p2, v0}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/forwarding/ForwardingPolicy;

    invoke-virtual {p2}, Lcom/sshtools/common/forwarding/ForwardingPolicy;->getForwardingMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;-><init>(I)V

    iput-object p1, v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    return-void
.end method

.method private changeInterestedOps()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    new-instance v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$1;-><init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/nio/SelectorThread;->addSelectorOperation(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 3

    .line 527
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    const/high16 v1, -0xf100000

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getLocalId()I

    move-result v2

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method protected declared-synchronized canClose()Z
    .locals 3

    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "Not closing due to socket cache"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 221
    :cond_0
    monitor-exit p0

    return v1

    .line 224
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    :try_start_2
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isLocalEOF()Z

    move-result v2

    if-nez v2, :cond_3

    .line 226
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "Not closing due to channel cache"

    invoke-virtual {p0, v2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 229
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    .line 231
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 233
    :try_start_4
    invoke-super {p0}, Lcom/sshtools/synergy/ssh/ForwardingChannel;->canClose()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 231
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected declared-synchronized cleanupSocket()V
    .locals 4

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_4

    .line 197
    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "Closing SocketChannel"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 201
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 202
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    :try_start_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "Socket is closed channel={} remote={}"

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getLocalId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getRemoteId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 204
    :try_start_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "Closing SocketChannel caused Exception"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "Socket is closed channel={} remote={}"

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getLocalId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getRemoteId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string v1, "Socket is closed channel={} remote={}"

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getLocalId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getRemoteId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_2
    throw v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method protected createCache(I)Lcom/sshtools/synergy/ssh/CachingDataWindow;
    .locals 1

    .line 87
    new-instance v0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    invoke-direct {v0, p1}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;-><init>(I)V

    return-object v0
.end method

.method protected abstract createChannel()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected declared-synchronized evaluateClosure()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 241
    :try_start_0
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->closePending:Z

    .line 242
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->canClose()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isRemoteEOF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected evaluateWindowSpace(I)V
    .locals 0

    return-void
.end method

.method public getInitialOps()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getChannelType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorThread()Lcom/sshtools/synergy/nio/SelectorThread;
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    return-object v0
.end method

.method public initialize(Lcom/sshtools/synergy/nio/ProtocolEngine;Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 0

    return-void
.end method

.method log()V
    .locals 8

    .line 516
    invoke-super {p0}, Lcom/sshtools/synergy/ssh/ForwardingChannel;->log()V

    .line 517
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->remaining()I

    move-result v1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->closePending:Z

    .line 520
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalIn:J

    .line 521
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalOut:J

    .line 522
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 518
    const-string v1, "socketCache={} channelCache={} closePending={} connected={} in={} out={}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected onChannelClosed()V
    .locals 0

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->shutdownSocket()V

    return-void
.end method

.method protected onChannelClosing()V
    .locals 0

    return-void
.end method

.method protected onChannelData(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/sshtools/synergy/ssh/ForwardingChannel;->onChannelData(Ljava/nio/ByteBuffer;)V

    .line 141
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->changeInterestedOps()V

    .line 143
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->canClose()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->close()V

    :cond_0
    return-void
.end method

.method protected onChannelFree()V
    .locals 0

    return-void
.end method

.method protected onChannelOpen()V
    .locals 0

    return-void
.end method

.method protected abstract onChannelOpenConfirmation()V
.end method

.method protected onChannelRequest(Ljava/lang/String;Z[B)V
    .locals 0

    const/4 p1, 0x0

    .line 150
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->sendRequestResponse(Z)V

    return-void
.end method

.method protected onExtendedData(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 113
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Extended data is not supported on forwarding channels"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected onLocalEOF()V
    .locals 0

    .line 289
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return-void
.end method

.method protected abstract onRegistrationComplete()V
.end method

.method protected onRemoteClose()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 299
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return-void
.end method

.method protected onRemoteEOF()V
    .locals 0

    .line 307
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return-void
.end method

.method protected abstract openChannel([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation
.end method

.method public processReadEvent()Z
    .locals 7

    const-string v0, "Processing FORWARDING READ read="

    .line 325
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    const-string v1, "Processing FORWARDING READ"

    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v2, 0x1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 338
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v3}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->read(Ljava/nio/channels/SocketChannel;)I

    move-result v1

    .line 341
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 342
    const-string v3, "Processed FORWARDING READ read=%d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    :cond_2
    if-gtz v1, :cond_4

    const/4 v0, -0x1

    if-ne v1, v0, :cond_6

    .line 349
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 350
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 351
    const-string v0, "Received EOF from forwarding socket"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 353
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    new-instance v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v1, p0, v3}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;-><init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addOutgoingTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return v2

    :cond_4
    if-lez v1, :cond_6

    .line 368
    iget-wide v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalIn:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalIn:J

    .line 370
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 373
    :cond_5
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    new-instance v3, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v3, p0, v4, v1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;-><init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;I)V

    invoke-virtual {v0, v3}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addOutgoingTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v2

    :cond_8
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 377
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 378
    const-string v1, "processReadEvent() failed to read from socket"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    :cond_9
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 382
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    new-instance v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {v1, p0, v3}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$4;-><init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addOutgoingTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return v2

    .line 330
    :cond_a
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 331
    const-string v0, "Forwarding socket is closed"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    :cond_b
    return v2
.end method

.method public processWriteEvent()Z
    .locals 7

    .line 401
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const-string v0, "Processing FORWARDING WRITE"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 414
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 415
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 416
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    check-cast v2, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v3}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->write(Ljava/nio/channels/SocketChannel;)I

    move-result v2

    .line 418
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    const-string v3, "Processed FORWARDING WRITE written=%d"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 422
    :cond_2
    iget-wide v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalOut:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->totalOut:J

    .line 426
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    const-string v2, "Completed FORWARDING WRITE"

    invoke-virtual {p0, v2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 430
    :cond_4
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->isAdjustRequired()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->sendWindowAdjust()V

    .line 433
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :try_start_2
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->closePending:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->canClose()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 436
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 453
    :cond_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    return v1

    :cond_8
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v2

    .line 433
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 443
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 445
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 446
    const-string v2, "processWriteEvent() failed to write to socket"

    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 449
    :cond_9
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return v1

    .line 406
    :cond_a
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 407
    const-string v0, "Forwarding socket is closed"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    :cond_b
    return v1
.end method

.method public registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 123
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    const-string p1, "Forwarding channel selector thread registration completed"

    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 126
    :cond_0
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    .line 127
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    .line 129
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->onRegistrationComplete()V

    return-void
.end method

.method public setSelectionKey(Ljava/nio/channels/SelectionKey;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->key:Ljava/nio/channels/SelectionKey;

    return-void
.end method

.method public setThread(Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    return-void
.end method

.method protected shutdownSocket()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "Adding Socket close operation to selector"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    new-instance v1, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$2;-><init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/nio/SelectorThread;->addSelectorOperation(Ljava/lang/Runnable;)V

    .line 269
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    const-string v0, "Waking up selector"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->selectorThread:Lcom/sshtools/synergy/nio/SelectorThread;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThread;->wakeup()V

    return-void

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_4

    .line 273
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 274
    const-string v0, "Socket is not attached to selector so closing now"

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 275
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cleanupSocket()V

    :cond_4
    return-void
.end method

.method public wantsRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public wantsWrite()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->hasRemaining()Z

    move-result v0

    return v0
.end method

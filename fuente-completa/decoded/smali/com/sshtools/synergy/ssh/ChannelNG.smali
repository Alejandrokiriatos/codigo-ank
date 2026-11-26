.class public abstract Lcom/sshtools/synergy/ssh/ChannelNG;
.super Ljava/lang/Object;
.source "ChannelNG.java"

# interfaces
.implements Lcom/sshtools/common/ssh/Channel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;,
        Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;,
        Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;,
        Lcom/sshtools/synergy/ssh/ChannelNG$ChannelClose;,
        Lcom/sshtools/synergy/ssh/ChannelNG$ChannelEOF;,
        Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;,
        Lcom/sshtools/synergy/ssh/ChannelNG$RequestFailure;,
        Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/Channel;"
    }
.end annotation


# static fields
.field static final CHANNEL_CLOSED:I = 0x2

.field static final CHANNEL_OPEN:I = 0x1

.field static final CHANNEL_UNINITIALIZED:I

.field static sequence:I


# instance fields
.field attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private autoConsume:Z

.field protected cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

.field private channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>.ChannelInputStream;"
        }
    .end annotation
.end field

.field private channelOut:Lcom/sshtools/synergy/ssh/ChannelOutputStream;

.field channelid:I

.field channeltype:Ljava/lang/String;

.field closeFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

.field closingError:Ljava/lang/Throwable;

.field completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected con:Lcom/sshtools/common/ssh/SshConnection;

.field protected connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;"
        }
    .end annotation
.end field

.field eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/sshtools/common/ssh/ChannelEventListener;",
            ">;"
        }
    .end annotation
.end field

.field forcedClose:Z

.field haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

.field isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field lastActivity:J

.field protected localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

.field openFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

.field protected paused:Z

.field receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

.field remoteid:I

.field requests:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/sshtools/common/ssh/ChannelRequestFuture;",
            ">;"
        }
    .end annotation
.end field

.field sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

.field sentEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field state:I

.field timeout:I


# direct methods
.method static bridge synthetic -$$Nest$fgetchannelIn(Lcom/sshtools/synergy/ssh/ChannelNG;)Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcompleteClose(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->completeClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfree(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0

    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->free()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 8

    .line 170
    new-instance v6, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v6}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/synergy/ssh/ChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->lastActivity:J

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->timeout:I

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->attributes:Ljava/util/Map;

    .line 80
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->forcedClose:Z

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closingError:Ljava/lang/Throwable;

    .line 87
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    iput v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->state:I

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 99
    new-instance v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->openFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->requests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 105
    new-instance v0, Lcom/sshtools/synergy/ssh/ChannelOutputStream;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/ChannelOutputStream;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelOut:Lcom/sshtools/synergy/ssh/ChannelOutputStream;

    .line 124
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channeltype:Ljava/lang/String;

    .line 125
    new-instance p1, Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-direct {p1, p3, p4, p5, p2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;-><init>(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;I)V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    new-instance p6, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {p6}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    :goto_0
    iput-object p6, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closeFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    .line 127
    iput-boolean p7, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->autoConsume:Z

    if-nez p7, :cond_1

    .line 129
    invoke-virtual {p4}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->createCache(I)Lcom/sshtools/synergy/ssh/CachingDataWindow;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    :cond_1
    return-void
.end method

.method private completeClose()V
    .locals 5

    .line 878
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    sget-object v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->CALLBACKS:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    new-instance v4, Lcom/sshtools/synergy/ssh/ChannelNG$1;

    invoke-direct {v4, p0}, Lcom/sshtools/synergy/ssh/ChannelNG$1;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-direct {v2, v3, v4}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void
.end method

.method private free()V
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    if-eqz v0, :cond_0

    .line 922
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    const-string v0, "Freeing"

    const-string v1, "channel"

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/InputStream;)Z

    const/4 v0, 0x0

    .line 932
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    .line 933
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelOut:Lcom/sshtools/synergy/ssh/ChannelOutputStream;

    .line 935
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 936
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->disposeCache(Lcom/sshtools/synergy/ssh/CachingDataWindow;)V

    .line 939
    :cond_2
    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    .line 941
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelFree()V

    .line 943
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method adjustWindow(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->adjust(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 389
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->onWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 393
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 394
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Lcom/sshtools/common/ssh/ChannelEventListener;->onWindowAdjust(Lcom/sshtools/common/ssh/Channel;J)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 389
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized canClose()Z
    .locals 1

    monitor-enter p0

    .line 1049
    monitor-exit p0

    const/4 v0, 0x1

    return v0
.end method

.method protected checkWindowSpace()Z
    .locals 6

    .line 1380
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 1382
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v3}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " cached="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Checking window space on channel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " window="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 1381
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    int-to-long v4, v0

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public clearIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object v0

    .line 225
    invoke-virtual {v0, p1}, Lcom/sshtools/common/nio/IdleStateManager;->remove(Lcom/sshtools/common/nio/IdleStateListener;)V

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->close(Z)V

    return-void
.end method

.method public close(Ljava/lang/Throwable;)V
    .locals 0

    .line 799
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closingError:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 800
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->close(Z)V

    return-void
.end method

.method protected close(Z)V
    .locals 5

    .line 808
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "Checking"

    .line 810
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "close state force="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " channelType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 815
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->canClose()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_2
    :goto_0
    move v2, v1

    .line 816
    :goto_1
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 818
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 822
    invoke-interface {v2, p0}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelClosing(Lcom/sshtools/common/ssh/Channel;)V

    goto :goto_2

    .line 825
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelClosing()V

    .line 827
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 828
    const-string v0, "Adding"

    const-string v2, "our close message to queue"

    invoke-virtual {p0, v0, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x2

    .line 831
    iput v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->state:I

    .line 833
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    move v0, v1

    .line 836
    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    .line 838
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 839
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelClose;

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelClose;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Z)V

    invoke-virtual {v0, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 842
    :cond_6
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_7

    goto :goto_3

    .line 862
    :cond_7
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 863
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 864
    const-string p1, "We\'ve"

    const-string v0, "already received the remote close message"

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_8
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 867
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 868
    const-string p1, "We\'ve"

    const-string v0, "already sent our close message"

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_9
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->completeClose()V

    :cond_a
    return-void

    .line 843
    :cond_b
    :goto_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 844
    const-string v0, "Requesting"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 845
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->isConnected()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "to complete the close operation connected="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " forceClose="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-virtual {p0, v0, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_10

    .line 851
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->forcedClose:Z

    .line 852
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 853
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closingError:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    goto :goto_5

    .line 854
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Channel has been forced to close"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 853
    :goto_5
    invoke-interface {v0, p0, v1}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelError(Lcom/sshtools/common/ssh/Channel;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 857
    :cond_e
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closingError:Ljava/lang/Throwable;

    if-eqz p1, :cond_f

    goto :goto_6

    .line 858
    :cond_f
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Channel has been forced to close"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 857
    :goto_6
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelError(Ljava/lang/Throwable;)V

    .line 861
    :cond_10
    invoke-direct {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->completeClose()V

    return-void

    .line 836
    :goto_7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method confirmOpen()V
    .locals 2

    const/4 v0, 0x1

    .line 358
    iput v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->state:I

    .line 359
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->openFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelOpenConfirmation()V

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 363
    invoke-interface {v1, p0}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelOpen(Lcom/sshtools/common/ssh/Channel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method confirmOpen(ILcom/sshtools/common/util/UnsignedInteger32;I)V
    .locals 1

    .line 369
    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    .line 370
    new-instance p1, Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    sget-object v0, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-direct {p1, p2, p2, v0, p3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;-><init>(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;I)V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 371
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->confirmOpen()V

    return-void
.end method

.method consumeWindowSpace(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Data length of "

    .line 432
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v1

    .line 434
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 441
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0, v4, v5}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->consume(J)V

    .line 443
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "Consumed"

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 445
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 446
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " bytes local window space before="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " after="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-virtual {p0, v0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    monitor-exit v1

    return-void

    .line 435
    :cond_1
    new-instance v2, Ljava/io/IOException;

    .line 436
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 438
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes exceeded available window space of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " bytes."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p1

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method create(I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 947
    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    .line 948
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->createChannel()[B

    move-result-object p1

    return-object p1
.end method

.method protected createCache(I)Lcom/sshtools/synergy/ssh/CachingDataWindow;
    .locals 2

    .line 134
    new-instance v0, Lcom/sshtools/synergy/ssh/CachingDataWindow;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sshtools/synergy/ssh/CachingDataWindow;-><init>(IZ)V

    return-object v0
.end method

.method protected abstract createChannel()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected disposeCache(Lcom/sshtools/synergy/ssh/CachingDataWindow;)V
    .locals 0

    .line 138
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->close()V

    return-void
.end method

.method protected evaluateWindowSpace()V
    .locals 7

    const-string v0, " cached="

    const-string v1, "Checking window space on channel="

    .line 1013
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v2

    .line 1014
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v3

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 1016
    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v5}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " window="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 1015
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->isAdjustRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1019
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendWindowAdjust()V

    .line 1021
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fail()V
    .locals 2

    .line 762
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->openFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelOpenFailure()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channeltype:Ljava/lang/String;

    return-object v0
.end method

.method public getCloseFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->closeFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    return-object v0
.end method

.method public bridge synthetic getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    return-object v0
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

    .line 418
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

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

    .line 427
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    return-object v0
.end method

.method public bridge synthetic getContext()Lcom/sshtools/common/ssh/Context;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

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

    .line 639
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    return-object v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-direct {v0, p0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/synergy/ssh/CachingDataWindow;)V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelIn:Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;

    return-object v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel is not configured to auto consume input, therefore, ChannelInputStream is not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Channel is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastActivity()J
    .locals 2

    .line 406
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->lastActivity:J

    return-wide v0
.end method

.method public getLocalId()I
    .locals 1

    .line 317
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    return v0
.end method

.method public getLocalPacket()I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumPacketSize()I

    move-result v0

    return v0
.end method

.method public getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getMaxiumRemotePacketSize()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumPacketSize()I

    move-result v0

    return v0
.end method

.method public getMaxiumRemoteWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->openFuture:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelOut:Lcom/sshtools/synergy/ssh/ChannelOutputStream;

    return-object v0
.end method

.method public getRemoteId()I
    .locals 1

    .line 326
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    return v0
.end method

.method public getRemotePacket()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumPacketSize()I

    move-result v0

    return v0
.end method

.method public getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    return-object v0
.end method

.method public getSessionIdentifier()Ljava/lang/String;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getSessionIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .line 414
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->timeout:I

    return v0
.end method

.method public haltIncomingData()V
    .locals 3

    .line 1367
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v0

    .line 1368
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1369
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method init(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    .line 198
    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-void
.end method

.method public final isAutoConsume()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->autoConsume:Z

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 181
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isIncomingDataHalted()Z
    .locals 2

    .line 1361
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v0

    .line 1362
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1363
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLocalEOF()Z
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected isOpen()Z
    .locals 2

    .line 1063
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRemoteEOF()Z
    .locals 1

    .line 1350
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method log()V
    .locals 10

    .line 1354
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "maverick.channelDebug"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getChannelType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v7, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->completedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 1355
    const-string v1, "Channel id={} type={} localEOF={} remoteEOF={} sentClose={} receivedClose={} completedClose={} remoteWindow={} localWindow={}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 4

    .line 1280
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    .line 1282
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    .line 1283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 1284
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 1285
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    if-nez v3, :cond_0

    const-string v3, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    :goto_0
    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1280
    const-string v0, "{} channel={} remote={} localWindow={} remoteWindow={}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1266
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .line 1270
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    .line 1273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    .line 1274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 1275
    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    .line 1276
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p1

    .line 1270
    const-string p2, "{} {} channel={} remote={} localWindow={} remoteWindow={}"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 1289
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    .line 1292
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    .line 1293
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 1294
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    .line 1295
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    if-nez v3, :cond_0

    const-string v3, "<null>"

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    :goto_0
    filled-new-array {p1, v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1289
    const-string v0, "{} channel={} remote={} localWindow={} remoteWindow={}"

    invoke-static {v0, p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method protected logMessage(Ljava/lang/String;)V
    .locals 3

    .line 1262
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getRemoteWindow()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    const-string v2, "Sent"

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected logMessage(Ljava/lang/String;J)V
    .locals 1

    .line 1258
    const-string v0, "Sent"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method protected abstract onChannelClosed()V
.end method

.method protected abstract onChannelClosing()V
.end method

.method protected onChannelData(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 453
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelDataIn(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->paused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->autoConsume:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->put(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 459
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Attempt to write data to channel cache failed because the cache is closed"

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 460
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->close()V

    return-void

    .line 464
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->evaluateWindowSpace()V

    return-void
.end method

.method protected onChannelError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method protected abstract onChannelFree()V
.end method

.method protected abstract onChannelOpen()V
.end method

.method protected abstract onChannelOpenConfirmation()V
.end method

.method protected onChannelOpenFailure()V
    .locals 0

    return-void
.end method

.method protected abstract onChannelRequest(Ljava/lang/String;Z[B)V
.end method

.method protected onExtendedData(Ljava/nio/ByteBuffer;I)V
    .locals 2

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 688
    invoke-interface {v1, p0, p1, p2}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelExtendedData(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->cache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    .line 691
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->evaluateWindowSpace()V

    :cond_1
    return-void
.end method

.method protected abstract onLocalEOF()V
.end method

.method protected onRemoteClose()V
    .locals 0

    .line 782
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->close()V

    return-void
.end method

.method protected abstract onRemoteEOF()V
.end method

.method protected onWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    return-void
.end method

.method open(IIILcom/sshtools/common/util/UnsignedInteger32;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    .line 349
    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->channelid:I

    .line 350
    iput p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    .line 352
    new-instance p1, Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    sget-object p2, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-direct {p1, p4, p4, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;-><init>(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;I)V

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    .line 354
    invoke-virtual {p0, p5}, Lcom/sshtools/synergy/ssh/ChannelNG;->openChannel([B)[B

    move-result-object p1

    return-object p1
.end method

.method protected abstract openChannel([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/nio/WriteOperationRequest;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation
.end method

.method processChannelClose()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->receivedClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 708
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onRemoteClose()V

    return-void
.end method

.method processChannelData(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->lastActivity:J

    .line 476
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->consumeWindowSpace(I)V

    .line 478
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SSH_MSG_CHANNEL_DATA len=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->onChannelData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method processChannelEOF()V
    .locals 2

    .line 697
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 698
    invoke-interface {v1, p0}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelEOF(Lcom/sshtools/common/ssh/Channel;)V

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 702
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onRemoteEOF()V

    return-void
.end method

.method protected processChannelRequestResponse(Z)V
    .locals 3

    .line 752
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->requests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    .line 754
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 755
    const-string v1, "SSH_MSG_CHANNEL_SUCCESS"

    goto :goto_0

    :cond_0
    const-string v1, "SSH_MSG_CHANNEL_FAILURE"

    :goto_0
    const-string v2, "Received"

    invoke-virtual {p0, v2, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    return-void
.end method

.method processExtendedData(ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SSH_MSG_CHANNEL_EXTENDED_DATA len=%d type=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->consumeWindowSpace(I)V

    .line 678
    invoke-virtual {p0, p2, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->onExtendedData(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method protected registerExtendedDataType(Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public removeEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iget-object v0, v0, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->transport:Lcom/sshtools/synergy/ssh/TransportProtocol;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p1}, Lcom/sshtools/common/nio/IdleStateManager;->register(Lcom/sshtools/common/nio/IdleStateListener;)V

    return-void
.end method

.method public resumeIncomingData()V
    .locals 3

    .line 1373
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v0

    .line 1374
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->haltIncomingData:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1375
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->evaluateWindowSpace()V

    .line 1376
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendChannelDataAndBlock(Ljava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 520
    invoke-virtual {p0, p1, v0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock(Ljava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-void
.end method

.method public sendChannelDataAndBlock(Ljava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->getTransport()Lcom/sshtools/synergy/ssh/TransportProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/TransportProtocol;->getSocketConnection()Lcom/sshtools/synergy/nio/SocketConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SocketConnection;->isSelectorThread()Z

    move-result v0

    if-nez v0, :cond_11

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->lastActivity:J

    .line 542
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "Queue Buffer rem={} pos={} limit={} capacity={}"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    .line 550
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v1

    if-nez v1, :cond_10

    .line 554
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v6

    .line 556
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumPacketSize()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-le v1, v2, :cond_1

    .line 557
    :try_start_1
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto/16 :goto_9

    .line 559
    :cond_1
    :try_start_2
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getMaximumPacketSize()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 562
    :goto_1
    sget-object v2, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v2, :cond_3

    .line 563
    :try_start_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 564
    const-string v1, "Waiting"

    const-string v2, "for %d bytes of remote window"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    const-wide/16 v1, 0x1388

    .line 567
    :try_start_4
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    move-object v3, p0

    move v5, p2

    goto/16 :goto_3

    .line 574
    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->consume(J)V

    .line 576
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 577
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 578
    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 579
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 581
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_4

    .line 582
    :try_start_6
    const-string v1, "Sliced Buffer rem={} pos={} limit={} capacity={}"

    .line 583
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 584
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v2, v3, v5, v8}, [Ljava/lang/Object;

    move-result-object v2

    .line 582
    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 586
    :cond_4
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v2, :cond_5

    :try_start_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 587
    invoke-interface {v2, p0, v4}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelDataOut(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 589
    :cond_5
    :try_start_9
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v3, p0

    move v5, p2

    :try_start_a
    invoke-direct/range {v2 .. v7}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/nio/ByteBuffer;IJ)V

    invoke-virtual {v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    :goto_3
    move-object v4, p1

    move-object v2, v0

    goto :goto_5

    :cond_6
    move-object v3, p0

    move v5, p2

    .line 592
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 593
    const-string p2, "Final Buffer rem={} pos={} limit={}, capacity={}"

    .line 594
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 593
    invoke-static {p2, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->eventListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/ChannelEventListener;

    .line 597
    invoke-interface {v0, p0, p1}, Lcom/sshtools/common/ssh/ChannelEventListener;->onChannelDataOut(Lcom/sshtools/common/ssh/Channel;Ljava/nio/ByteBuffer;)V

    goto :goto_4

    .line 599
    :cond_8
    iget-object p2, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/nio/ByteBuffer;IJ)V

    invoke-virtual {p2, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 603
    :goto_5
    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v2, :cond_f

    .line 605
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 607
    invoke-static {v2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v2, :cond_d

    .line 608
    monitor-enter v2

    .line 609
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 610
    :catch_1
    :goto_6
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->isMessageSent()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, p1

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_a

    .line 611
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 612
    const-string v0, "Waiting for sent data notification"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_9
    const-wide/16 v0, 0x3e8

    .line 615
    :try_start_c
    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    .line 619
    :cond_a
    :try_start_d
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->isMessageSent()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 622
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 623
    const-string p1, "Received sent data notification"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    :cond_b
    monitor-exit v2

    goto :goto_7

    .line 620
    :cond_c
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getLocalId()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Timeout waiting for data to be sent on channel "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 625
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw p1

    :cond_d
    :goto_7
    if-eqz p3, :cond_e

    .line 629
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object p1

    sget-object p2, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->CALLBACKS:Ljava/lang/Integer;

    new-instance v0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;

    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    :cond_e
    return-void

    :cond_f
    move-object v0, v2

    move-object p1, v4

    move p2, v5

    goto/16 :goto_0

    :cond_10
    move-object v3, p0

    .line 551
    :try_start_e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Channel has been closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception v0

    move-object v3, p0

    :goto_8
    move-object p1, v0

    .line 605
    :goto_9
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw p1

    :catchall_3
    move-exception v0

    goto :goto_8

    :cond_11
    move-object v3, p0

    .line 535
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You appear to be calling sendChannelData on a selector thread. Use TransportProtocol.addOutgoingTask to place on the outgoing message queue."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendChannelDataAndBlock(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, p1, v0, p2}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock(Ljava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-void
.end method

.method public sendChannelDataAndBlock([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock([BLjava/lang/Runnable;)V

    return-void
.end method

.method public sendChannelDataAndBlock([BIILjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->lastActivity:J

    .line 511
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock(Ljava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendChannelDataAndBlock([BLjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 501
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock([BIILjava/lang/Runnable;)V

    return-void
.end method

.method public sendChannelRequest(Ljava/lang/String;Z[B)V
    .locals 2

    if-eqz p2, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->requests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/lang/String;Z[B)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public sendChannelRequest(Ljava/lang/String;Z[BLcom/sshtools/common/ssh/ChannelRequestFuture;)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 735
    invoke-virtual {p4, v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->done(Z)V

    goto :goto_0

    .line 737
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->requests:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 739
    :goto_0
    iget-object p4, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelRequest;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/lang/String;Z[B)V

    invoke-virtual {p4, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method public sendData([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock([BIILjava/lang/Runnable;)V

    return-void
.end method

.method public sendEOF()V
    .locals 2

    .line 1035
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->sentClose:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->isLocalEOF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1037
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->close()V

    .line 1038
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v1, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelEOF;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelEOF;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 1039
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/ChannelNG;->onLocalEOF()V

    :cond_0
    return-void
.end method

.method protected sendExtendedData([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 652
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendExtendedData([BIII)V

    return-void
.end method

.method protected sendExtendedData([BIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 667
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p4, p2}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendChannelDataAndBlock(Ljava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-void
.end method

.method protected sendRequestResponse(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1073
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void

    .line 1075
    :cond_0
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v0, Lcom/sshtools/synergy/ssh/ChannelNG$RequestFailure;

    invoke-direct {v0, p0}, Lcom/sshtools/synergy/ssh/ChannelNG$RequestFailure;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    return-void
.end method

.method protected sendWindowAdjust()V
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v0

    .line 1087
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getAdjustCount()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 1088
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 9

    const-string v0, "window space by "

    .line 1092
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v1

    .line 1093
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 1094
    :try_start_1
    const-string v2, "Increasing"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p0

    goto :goto_2

    .line 1096
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->connection:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    new-instance v2, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v5

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v3, p0

    :try_start_3
    invoke-direct/range {v2 .. v8}, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;-><init>(Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/synergy/ssh/ChannelNG;JJ)V

    invoke-virtual {v0, v2}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->sendMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 1097
    iget-object v0, v3, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->adjust(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 1098
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    move-object v3, p0

    :goto_1
    move-object p1, v0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1489
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setAutoconsume(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->autoConsume:Z

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 410
    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG;->timeout:I

    return-void
.end method

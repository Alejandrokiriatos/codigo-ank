.class public Lcom/sshtools/synergy/nio/SelectorThreadPool;
.super Ljava/lang/Object;
.source "SelectorThreadPool.java"


# instance fields
.field idleServicePeriod:I

.field impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

.field inactivePeriodsPerIdleEvent:I

.field isShuttingDown:Z

.field maximumChannels:I

.field nextAvailable:I

.field permanentThreads:I

.field selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

.field threads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sshtools/synergy/nio/SelectorThread;",
            ">;"
        }
    .end annotation
.end field

.field verbose:Z


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/nio/SelectorThreadImpl;IIIILjava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->isShuttingDown:Z

    .line 50
    const-string v1, "maverick.verbose"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->verbose:Z

    .line 73
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    .line 74
    iput p2, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->permanentThreads:I

    .line 75
    iput p3, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->maximumChannels:I

    .line 76
    iput p4, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->idleServicePeriod:I

    .line 77
    iput p5, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->inactivePeriodsPerIdleEvent:I

    .line 78
    iput-object p6, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Creating "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " thread pool with "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " permanent threads each with a maximum of "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " channels"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move p1, v0

    :goto_0
    if-ge p1, p2, :cond_1

    .line 87
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->createThread()Lcom/sshtools/synergy/nio/SelectorThread;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iput v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->nextAvailable:I

    return-void
.end method

.method private declared-synchronized createThread()Lcom/sshtools/synergy/nio/SelectorThread;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_0
    new-instance v0, Lcom/sshtools/synergy/nio/SelectorThread;

    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->permanentThreads:I

    const/4 v4, 0x1

    if-ge v1, v3, :cond_0

    move v1, v4

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v3, v1

    move v1, v4

    :goto_0
    iget v4, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->maximumChannels:I

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->idleServicePeriod:I

    iget v7, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->inactivePeriodsPerIdleEvent:I

    iget-object v8, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, p0

    :try_start_1
    invoke-direct/range {v0 .. v8}, Lcom/sshtools/synergy/nio/SelectorThread;-><init>(Lcom/sshtools/synergy/nio/SelectorThreadPool;Lcom/sshtools/synergy/nio/SelectorThreadImpl;ZIIIILjava/nio/channels/spi/SelectorProvider;)V

    .line 142
    iget-object v2, v1, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public closeAllChannels()V
    .locals 2

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->isShuttingDown:Z

    .line 96
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 98
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SelectorThread;->closeAllChannels()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized getCurrentLoad()I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 151
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 153
    invoke-virtual {v2}, Lcom/sshtools/synergy/nio/SelectorThread;->getThreadLoad()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public register(Ljava/nio/channels/ServerSocketChannel;ILcom/sshtools/synergy/nio/ClientAcceptor;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 210
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sshtools/synergy/nio/SelectorThread;->register(Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;Z)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method removeThread(Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 2

    .line 120
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->isShuttingDown:Z

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->createThread()Lcom/sshtools/synergy/nio/SelectorThread;

    .line 125
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "A permanent thread was re-created because {} shutdown"

    invoke-virtual {p1}, Lcom/sshtools/synergy/nio/SelectorThread;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to create replacement thread"

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized selectNextThread()Lcom/sshtools/synergy/nio/SelectorThread;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    .line 171
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 172
    iget-object v5, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 173
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getMaximumLoad()I

    move-result v6

    .line 174
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getThreadLoad()I

    move-result v7

    sub-int/2addr v6, v7

    .line 175
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getMaximumLoad()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 176
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->verbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getSelectorId()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An idle thread has been selected id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 177
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-object v5

    .line 181
    :cond_1
    :try_start_1
    iget-boolean v7, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->verbose:Z

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getSelectorId()I

    move-result v7

    .line 183
    invoke-virtual {v5}, Lcom/sshtools/synergy/nio/SelectorThread;->getThreadLoad()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Thread id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has a current load of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " channels"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    .line 182
    invoke-static {v5, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    if-lez v6, :cond_3

    if-le v6, v4, :cond_3

    move v3, v2

    move v4, v6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    if-le v3, v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 195
    iget-boolean v2, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->verbose:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThread;->getSelectorId()I

    move-result v2

    .line 197
    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SelectorThread;->getThreadLoad()I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing thread id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " selected with current load of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " channels"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/synergy/nio/SelectorThread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 202
    :cond_6
    :try_start_2
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->verbose:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 203
    const-string v0, "All threads are at maximum capacity"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_7
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->createThread()Lcom/sshtools/synergy/nio/SelectorThread;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    const-string v0, "Shutting down {} thread pool"

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->isShuttingDown:Z

    .line 111
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/nio/SelectorThread;

    .line 113
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SelectorThread;->shutdown()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThreadPool;->threads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
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

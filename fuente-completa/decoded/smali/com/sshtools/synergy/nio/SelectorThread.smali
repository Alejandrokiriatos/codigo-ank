.class public Lcom/sshtools/synergy/nio/SelectorThread;
.super Ljava/lang/Thread;
.source "SelectorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/nio/SelectorThread$Registration;
    }
.end annotation


# static fields
.field static final MAX_INACTIVITY:I = 0x3e8


# instance fields
.field hasOperations:Z

.field id:I

.field idleStates:Lcom/sshtools/common/nio/IdleStateManager;

.field impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

.field isPermanent:Z

.field maximumNumOfChannels:I

.field pendingOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field pendingRegistrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/synergy/nio/SelectorThread$Registration;",
            ">;"
        }
    .end annotation
.end field

.field pool:Lcom/sshtools/synergy/nio/SelectorThreadPool;

.field running:Z

.field selector:Ljava/nio/channels/Selector;

.field selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

.field shutdownLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/nio/SelectorThreadPool;Lcom/sshtools/synergy/nio/SelectorThreadImpl;ZIIIILjava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->hasOperations:Z

    .line 83
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pool:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    .line 84
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    .line 85
    iput-boolean p3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent:Z

    .line 86
    iput p5, p0, Lcom/sshtools/synergy/nio/SelectorThread;->id:I

    .line 87
    iput p4, p0, Lcom/sshtools/synergy/nio/SelectorThread;->maximumNumOfChannels:I

    .line 88
    iput-object p8, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    .line 89
    new-instance p1, Lcom/sshtools/common/nio/IdleStateManager;

    invoke-direct {p1, p6, p7}, Lcom/sshtools/common/nio/IdleStateManager;-><init>(II)V

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->idleStates:Lcom/sshtools/common/nio/IdleStateManager;

    .line 92
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    .line 93
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    .line 96
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->openSelector()V

    .line 98
    invoke-interface {p2}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/nio/SelectorThread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 99
    invoke-virtual {p0, p1}, Lcom/sshtools/synergy/nio/SelectorThread;->setDaemon(Z)V

    return-void
.end method

.method private openSelector()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_3

    .line 107
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening new selector and transferring "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 113
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    .line 115
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/channels/SelectionKey;->attach(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/sshtools/synergy/nio/SelectionKeyAware;

    if-eqz v4, :cond_1

    .line 117
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/synergy/nio/SelectionKeyAware;

    invoke-interface {v4, v3}, Lcom/sshtools/synergy/nio/SelectionKeyAware;->setSelectionKey(Ljava/nio/channels/SelectionKey;)V

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_0

    .line 124
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/Selector;->select(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :catch_1
    iput-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selectorProvider:Ljava/nio/channels/spi/SelectorProvider;

    invoke-virtual {v0}, Ljava/nio/channels/spi/SelectorProvider;->openSelector()Ljava/nio/channels/spi/AbstractSelector;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    return-void
.end method

.method private performPendingOperations()Z
    .locals 6

    .line 283
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->hasOperations:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 293
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 294
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 295
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->hasOperations:Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move v3, v1

    .line 297
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_3

    .line 300
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 303
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 305
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 306
    const-string v4, "Consumed exception in pending operation"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return v3

    :catchall_1
    move-exception v1

    .line 297
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private performPendingRegistrations()Z
    .locals 8

    .line 175
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 183
    :cond_1
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_7

    .line 185
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    .line 186
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/synergy/nio/SelectorThread$Registration;

    .line 188
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 190
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getInterestedOps()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Registering channel with interested ops "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    .line 189
    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_2
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 194
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 195
    const-string v4, "Channel is open"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_3
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    .line 198
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getInterestedOps()I

    move-result v6

    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getAttachment()Ljava/lang/Object;

    move-result-object v7

    .line 197
    invoke-virtual {v4, v5, v6, v7}, Ljava/nio/channels/SelectableChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v4

    .line 200
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    const-string v5, "Channel is registered"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_4
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getAttachment()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sshtools/synergy/nio/SelectorRegistrationListener;

    if-eqz v5, :cond_5

    .line 204
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getAttachment()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/synergy/nio/SocketHandler;

    .line 205
    invoke-virtual {v3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->getChannel()Ljava/nio/channels/SelectableChannel;

    move-result-object v3

    invoke-interface {v5, v3, v4, p0}, Lcom/sshtools/synergy/nio/SocketHandler;->registrationCompleted(Ljava/nio/channels/SelectableChannel;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V

    .line 208
    :cond_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const-string v3, "Registration complete"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    const-string v3, "Cannot register channel because it is closed!"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 215
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const-string v3, "Failed to register channel as it is closed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 220
    :cond_7
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public addSelectorOperation(Ljava/lang/Runnable;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingOperations:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 274
    iput-boolean p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->hasOperations:Z

    .line 275
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->wakeup()V

    .line 276
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelKey(Ljava/nio/channels/SelectionKey;)V
    .locals 3

    .line 542
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    const-string v0, "Selection key is being cancelled"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    :cond_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 545
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 546
    const-string p1, "Cancelled key"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public closeAllChannels()V
    .locals 4

    .line 227
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " closing all channels"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 232
    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 233
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 234
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v2

    .line 235
    instance-of v3, v2, Lcom/sshtools/synergy/nio/SocketConnection;

    if-eqz v3, :cond_1

    .line 237
    :try_start_0
    move-object v3, v2

    check-cast v3, Lcom/sshtools/synergy/nio/SocketConnection;

    iget-object v3, v3, Lcom/sshtools/synergy/nio/SocketConnection;->socketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :catch_0
    check-cast v2, Lcom/sshtools/synergy/nio/SocketConnection;

    iget-object v2, v2, Lcom/sshtools/synergy/nio/SocketConnection;->protocolEngine:Lcom/sshtools/synergy/nio/ProtocolEngine;

    invoke-interface {v2}, Lcom/sshtools/synergy/nio/ProtocolEngine;->onSocketClose()V

    .line 244
    :cond_1
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v2

    .line 247
    :try_start_1
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :try_start_2
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->close()V

    .line 251
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 258
    :catch_1
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public flagShutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->running:Z

    .line 346
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_0
    return-void
.end method

.method getIdleStates()Lcom/sshtools/common/nio/IdleStateManager;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->idleStates:Lcom/sshtools/common/nio/IdleStateManager;

    return-object v0
.end method

.method public getMaximumLoad()I
    .locals 1

    .line 385
    iget v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->maximumNumOfChannels:I

    return v0
.end method

.method public getSelectorId()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->id:I

    return v0
.end method

.method public declared-synchronized getThreadLoad()I
    .locals 2

    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isPermanent()Z
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent:Z

    return v0
.end method

.method public declared-synchronized register(Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "Adding registration request to queue"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    new-instance v2, Lcom/sshtools/synergy/nio/SelectorThread$Registration;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/sshtools/synergy/nio/SelectorThread$Registration;-><init>(Lcom/sshtools/synergy/nio/SelectorThread;Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 165
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p4, :cond_1

    .line 168
    :try_start_2
    iget-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 170
    :cond_1
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 165
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public run()V
    .locals 12

    const-string v0, "Starting "

    const/4 v1, 0x1

    .line 395
    :try_start_0
    iput-boolean v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->running:Z

    .line 399
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 401
    iget-boolean v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent:Z

    if-eqz v1, :cond_0

    const-string v1, "permanent "

    goto :goto_0

    :cond_0
    const-string v1, "temporary "

    :goto_0
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    .line 402
    invoke-interface {v3}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sshtools/synergy/nio/SelectorThread;->id:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 400
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 405
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 406
    const-string v3, "maverick.simulateEpollBug"

    invoke-static {v3}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 407
    const-string v4, "maverick.workaroundEpollBug"

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move v5, v2

    .line 409
    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/sshtools/synergy/nio/SelectorThread;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v6, :cond_d

    .line 412
    :try_start_1
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->performPendingOperations()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v6, 0x3e8

    if-nez v4, :cond_3

    .line 417
    :try_start_2
    iget-object v8, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v8, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v6

    goto :goto_2

    .line 423
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 424
    iget-object v10, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v10, v6, v7}, Ljava/nio/channels/Selector;->select(J)I

    move-result v6

    if-nez v6, :cond_4

    .line 425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v7, 0x64

    cmp-long v7, v10, v7

    if-gez v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    const/16 v7, 0xa

    if-le v5, v7, :cond_5

    .line 430
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->openSelector()V

    goto :goto_1

    :cond_4
    move v5, v2

    :cond_5
    if-eqz v3, :cond_6

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    const-wide/32 v9, 0xea60

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    .line 438
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->openSelector()V

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 457
    :cond_6
    :goto_2
    :try_start_3
    iget-object v7, p0, Lcom/sshtools/synergy/nio/SelectorThread;->idleStates:Lcom/sshtools/common/nio/IdleStateManager;

    invoke-virtual {v7}, Lcom/sshtools/common/nio/IdleStateManager;->isReady()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 458
    iget-object v7, p0, Lcom/sshtools/synergy/nio/SelectorThread;->idleStates:Lcom/sshtools/common/nio/IdleStateManager;

    invoke-virtual {v7}, Lcom/sshtools/common/nio/IdleStateManager;->service()V

    .line 464
    :cond_7
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->performPendingOperations()Z

    .line 467
    invoke-direct {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->performPendingRegistrations()Z

    if-nez v6, :cond_8

    .line 472
    iget-object v6, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pendingRegistrations:Ljava/util/LinkedList;

    .line 473
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent:Z

    if-nez v6, :cond_2

    .line 475
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->flagShutdown()V

    goto :goto_1

    .line 480
    :cond_8
    iget-object v6, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v6}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 481
    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 482
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/channels/SelectionKey;

    .line 483
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 486
    invoke-virtual {v7}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v8

    if-nez v8, :cond_a

    .line 487
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 488
    const-string v7, "Selector is not valid"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 492
    :cond_a
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 493
    const-string v8, "Selected key"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    :cond_b
    iget-object v8, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    invoke-interface {v8, v7, p0}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->processSelectionKey(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V

    goto :goto_3

    :catch_0
    move-exception v6

    .line 446
    iget-object v7, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v7}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_1

    .line 449
    :cond_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 451
    const-string v7, "Failed to select"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v6

    .line 501
    :try_start_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 502
    const-string v7, "Selector thread encountered an error"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v6, v8}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 507
    :cond_d
    :goto_4
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 509
    iget-boolean v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->isPermanent:Z

    if-eqz v0, :cond_e

    const-string v0, "permanent "

    goto :goto_5

    :cond_e
    const-string v0, "temporary "

    :goto_5
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    .line 510
    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v1

    iget v3, p0, Lcom/sshtools/synergy/nio/SelectorThread;->id:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shutting down "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " thread id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 508
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_f
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->pool:Lcom/sshtools/synergy/nio/SelectorThreadPool;

    invoke-virtual {v0, p0}, Lcom/sshtools/synergy/nio/SelectorThreadPool;->removeThread(Lcom/sshtools/synergy/nio/SelectorThread;)V

    .line 515
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->closeAllChannels()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 518
    :try_start_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 519
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " performing final select to cancel all keys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    :cond_10
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    .line 522
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 523
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " completed final select"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 525
    :try_start_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 526
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->impl:Lcom/sshtools/synergy/nio/SelectorThreadImpl;

    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SelectorThreadImpl;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exception occured in final select"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 532
    :cond_11
    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 535
    :catch_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_8
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 537
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    :catchall_3
    move-exception v0

    .line 532
    :try_start_9
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 535
    :catch_2
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_a
    iget-object v2, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 537
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 538
    throw v0

    :catchall_4
    move-exception v0

    .line 537
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method

.method public shutdown()V
    .locals 6

    const-string v0, "Waiting for "

    .line 351
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to shutdown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->flagShutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->shutdownLock:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 364
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/sshtools/synergy/nio/SelectorThread;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has shutdown"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public wakeup()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

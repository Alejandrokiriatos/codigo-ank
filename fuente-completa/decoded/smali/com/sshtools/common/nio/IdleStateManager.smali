.class public Lcom/sshtools/common/nio/IdleStateManager;
.super Ljava/lang/Object;
.source "IdleStateManager.java"


# instance fields
.field lastService:J

.field listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sshtools/common/nio/IdleStateListener;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field numInactiveServicesPeriodsPerIdle:I

.field numSecondsBeforeIdle:I

.field servicePeriodSeconds:I

.field servicing:Z


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x1

    const/16 v3, 0x32

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->lastService:J

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicing:Z

    .line 45
    iput p1, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicePeriodSeconds:I

    .line 46
    iput p2, p0, Lcom/sshtools/common/nio/IdleStateManager;->numInactiveServicesPeriodsPerIdle:I

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 4

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sshtools/common/nio/IdleStateManager;->lastService:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget v2, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicePeriodSeconds:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized register(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 3

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
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

.method public declared-synchronized remove(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicing:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
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

.method public declared-synchronized reset(Lcom/sshtools/common/nio/IdleStateListener;)V
    .locals 3

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
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

.method public declared-synchronized service()V
    .locals 6

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->lastService:J

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicing:Z

    .line 92
    iget-object v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x3e8

    .line 97
    div-long/2addr v4, v2

    .line 98
    iget v2, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicePeriodSeconds:I

    iget v3, p0, Lcom/sshtools/common/nio/IdleStateManager;->numInactiveServicesPeriodsPerIdle:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v4, v2

    if-ltz v2, :cond_0

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/nio/IdleStateListener;

    invoke-interface {v1}, Lcom/sshtools/common/nio/IdleStateListener;->idle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/sshtools/common/nio/IdleStateManager;->servicing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
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

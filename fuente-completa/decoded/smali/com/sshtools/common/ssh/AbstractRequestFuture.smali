.class public abstract Lcom/sshtools/common/ssh/AbstractRequestFuture;
.super Ljava/lang/Object;
.source "AbstractRequestFuture.java"

# interfaces
.implements Lcom/sshtools/common/ssh/RequestFuture;


# instance fields
.field volatile done:Z

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/RequestFutureListener;",
            ">;"
        }
    .end annotation
.end field

.field volatile success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z

    .line 31
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->success:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->listeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public declared-synchronized addFutureListener(Lcom/sshtools/common/ssh/RequestFutureListener;)V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {p1, p0}, Lcom/sshtools/common/ssh/RequestFutureListener;->complete(Lcom/sshtools/common/ssh/RequestFuture;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
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

.method public declared-synchronized done(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 46
    :try_start_0
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z

    .line 47
    iput-boolean p1, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->success:Z

    .line 49
    iget-object p1, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->listeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/RequestFutureListener;

    .line 50
    invoke-interface {v0, p0}, Lcom/sshtools/common/ssh/RequestFutureListener;->complete(Lcom/sshtools/common/ssh/RequestFuture;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
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

.method public isDone()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->success:Z

    return v0
.end method

.method public declared-synchronized waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;
    .locals 8

    monitor-enter p0

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 71
    monitor-exit p0

    return-object p0

    .line 74
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p1

    const-wide/16 v4, 0xa

    sub-long/2addr v2, v4

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_1

    move-wide v6, v4

    goto :goto_1

    :cond_1
    move-wide v6, p1

    .line 77
    :goto_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    sub-long/2addr p1, v0

    .line 81
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_3

    cmp-long v0, v6, v2

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move-wide v0, v6

    goto :goto_0

    .line 84
    :catch_0
    :cond_3
    :goto_2
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized waitForever()Lcom/sshtools/common/ssh/RequestFuture;
    .locals 2

    monitor-enter p0

    .line 60
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/AbstractRequestFuture;->done:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 61
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 65
    :catch_0
    :cond_0
    monitor-exit p0

    return-object p0
.end method

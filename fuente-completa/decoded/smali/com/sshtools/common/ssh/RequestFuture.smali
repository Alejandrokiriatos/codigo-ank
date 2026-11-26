.class public interface abstract Lcom/sshtools/common/ssh/RequestFuture;
.super Ljava/lang/Object;
.source "RequestFuture.java"


# virtual methods
.method public abstract addFutureListener(Lcom/sshtools/common/ssh/RequestFutureListener;)V
.end method

.method public abstract isDone()Z
.end method

.method public isDoneAndSuccess()Z
    .locals 1

    .line 32
    invoke-interface {p0}, Lcom/sshtools/common/ssh/RequestFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;
.end method

.method public abstract waitForever()Lcom/sshtools/common/ssh/RequestFuture;
.end method

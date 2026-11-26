.class public interface abstract Lcom/sshtools/common/ssh/ExecutorServiceProvider;
.super Ljava/lang/Object;
.source "ExecutorServiceProvider.java"


# virtual methods
.method public abstract getExecutorListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/ExecutorOperationListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

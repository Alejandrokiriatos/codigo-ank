.class public interface abstract Lcom/sshtools/common/ssh/Context;
.super Ljava/lang/Object;
.source "Context.java"


# virtual methods
.method public abstract getByteBufferPool()Lcom/sshtools/common/util/ByteBufferPool;
.end method

.method public abstract getComponentManager()Lcom/sshtools/common/ssh/components/ComponentManager;
.end method

.method public abstract getExecutorService()Ljava/util/concurrent/ExecutorService;
.end method

.method public abstract getMaximumPacketLength()I
.end method

.method public abstract getPolicy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation
.end method

.method public abstract hasPolicy(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract setPolicy(Ljava/lang/Class;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.class public interface abstract Lcom/sshtools/common/sshd/AbstractServerTransport;
.super Ljava/lang/Object;
.source "AbstractServerTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/sshtools/common/ssh/Context;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
.end method

.method public abstract disconnect(ILjava/lang/String;)V
.end method

.method public abstract getConnection()Lcom/sshtools/common/ssh/SshConnection;
.end method

.method public abstract getContext()Lcom/sshtools/common/ssh/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract getSessionKey()[B
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isSelectorThread()Z
.end method

.method public abstract postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
.end method

.method public abstract postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
.end method

.method public abstract registerIdleStateListener(Lcom/sshtools/common/nio/IdleStateListener;)V
.end method

.method public abstract removeIdleStateListener(Lcom/sshtools/common/nio/IdleStateListener;)V
.end method

.method public abstract resetIdleState(Lcom/sshtools/common/nio/IdleStateListener;)V
.end method

.method public abstract sendNewKeys()V
.end method

.method public abstract startService(Lcom/sshtools/common/sshd/Service;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/Service<",
            "TC;>;)V"
        }
    .end annotation
.end method

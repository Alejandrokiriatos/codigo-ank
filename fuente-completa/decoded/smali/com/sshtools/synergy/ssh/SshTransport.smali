.class public interface abstract Lcom/sshtools/synergy/ssh/SshTransport;
.super Ljava/lang/Object;
.source "SshTransport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract disconnect(ILjava/lang/String;)V
.end method

.method public abstract getContext()Lcom/sshtools/synergy/ssh/SshContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
.end method

.method public abstract postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
.end method

.method public abstract sendNewKeys()V
.end method

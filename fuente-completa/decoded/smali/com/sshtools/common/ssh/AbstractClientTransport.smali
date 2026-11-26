.class public interface abstract Lcom/sshtools/common/ssh/AbstractClientTransport;
.super Ljava/lang/Object;
.source "AbstractClientTransport.java"


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
.method public abstract disconnect(ILjava/lang/String;)V
.end method

.method public abstract getContext()Lcom/sshtools/common/ssh/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public abstract postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
.end method

.method public abstract sendNewKeys()V
.end method

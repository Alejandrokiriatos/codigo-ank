.class public interface abstract Lcom/sshtools/common/sshd/Service;
.super Ljava/lang/Object;
.source "Service.java"


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
.method public abstract getIdleTimeoutSeconds()I
.end method

.method public abstract idle()V
.end method

.method public abstract init(Lcom/sshtools/common/sshd/AbstractServerTransport;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/sshd/AbstractServerTransport<",
            "TC;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processMessage([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method

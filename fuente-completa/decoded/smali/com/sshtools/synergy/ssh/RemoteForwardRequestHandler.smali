.class public interface abstract Lcom/sshtools/synergy/ssh/RemoteForwardRequestHandler;
.super Ljava/lang/Object;
.source "RemoteForwardRequestHandler.java"


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
.method public abstract isHandled(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract startRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract stopRemoteForward(Ljava/lang/String;ILjava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

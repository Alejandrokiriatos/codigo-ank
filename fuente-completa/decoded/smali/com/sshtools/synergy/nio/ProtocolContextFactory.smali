.class public interface abstract Lcom/sshtools/synergy/nio/ProtocolContextFactory;
.super Ljava/lang/Object;
.source "ProtocolContextFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/synergy/nio/ProtocolContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createContext(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/nio/channels/SocketChannel;)Lcom/sshtools/synergy/nio/ProtocolContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/nio/SshEngineContext;",
            "Ljava/nio/channels/SocketChannel;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

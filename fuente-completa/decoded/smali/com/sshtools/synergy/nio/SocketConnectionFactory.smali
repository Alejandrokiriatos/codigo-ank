.class public interface abstract Lcom/sshtools/synergy/nio/SocketConnectionFactory;
.super Ljava/lang/Object;
.source "SocketConnectionFactory.java"


# virtual methods
.method public abstract createSocketConnection(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/sshtools/synergy/nio/SocketConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

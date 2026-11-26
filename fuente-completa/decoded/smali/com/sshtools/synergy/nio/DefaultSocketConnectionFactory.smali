.class public Lcom/sshtools/synergy/nio/DefaultSocketConnectionFactory;
.super Ljava/lang/Object;
.source "DefaultSocketConnectionFactory.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SocketConnectionFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSocketConnection(Lcom/sshtools/synergy/nio/SshEngineContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lcom/sshtools/synergy/nio/SocketConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    new-instance p1, Lcom/sshtools/synergy/nio/SocketConnection;

    invoke-direct {p1}, Lcom/sshtools/synergy/nio/SocketConnection;-><init>()V

    return-object p1
.end method

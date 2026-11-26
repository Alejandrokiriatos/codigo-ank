.class public abstract Lcom/sshtools/synergy/nio/ClientAcceptor;
.super Ljava/lang/Object;
.source "ClientAcceptor.java"


# instance fields
.field li:Lcom/sshtools/synergy/nio/ListeningInterface;


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/nio/ListeningInterface;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sshtools/synergy/nio/ClientAcceptor;->li:Lcom/sshtools/synergy/nio/ListeningInterface;

    return-void
.end method


# virtual methods
.method public finishAccept(Ljava/nio/channels/SelectionKey;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sshtools/synergy/nio/ClientAcceptor;->li:Lcom/sshtools/synergy/nio/ListeningInterface;

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/synergy/nio/ClientAcceptor;->finishAccept(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/ListeningInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    return-void
.end method

.method public abstract finishAccept(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/ListeningInterface;)Z
.end method

.method public abstract stopAccepting()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

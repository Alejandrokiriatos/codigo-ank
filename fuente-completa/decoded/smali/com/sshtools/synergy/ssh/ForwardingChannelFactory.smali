.class public interface abstract Lcom/sshtools/synergy/ssh/ForwardingChannelFactory;
.super Ljava/lang/Object;
.source "ForwardingChannelFactory.java"


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
.method public abstract belongsTo(Lcom/sshtools/synergy/ssh/ConnectionProtocol;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "TT;>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract bindInterface(Ljava/lang/String;ILcom/sshtools/synergy/ssh/ConnectionProtocol;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/sshtools/synergy/ssh/ConnectionProtocol<",
            "*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getActiveTunnelManager()Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getChannelType()Ljava/lang/String;
.end method

.method public abstract getStartedEventCode()I
.end method

.method public abstract getStoppedEventCode()I
.end method

.method public abstract stopListening(Z)V
.end method

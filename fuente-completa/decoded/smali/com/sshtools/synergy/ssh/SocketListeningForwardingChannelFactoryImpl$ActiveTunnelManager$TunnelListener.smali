.class public interface abstract Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;
.super Ljava/lang/Object;
.source "SocketListeningForwardingChannelFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TunnelListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract tunnelOpened(Lcom/sshtools/synergy/ssh/ForwardingChannel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ForwardingChannel<",
            "TK;>;)V"
        }
    .end annotation
.end method

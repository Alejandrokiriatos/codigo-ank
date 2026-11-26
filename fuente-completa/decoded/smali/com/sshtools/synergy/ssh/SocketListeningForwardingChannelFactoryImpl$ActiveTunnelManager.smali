.class public Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;
.super Ljava/lang/Object;
.source "SocketListeningForwardingChannelFactoryImpl.java"

# interfaces
.implements Lcom/sshtools/common/ssh/ChannelEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveTunnelManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lcom/sshtools/synergy/ssh/SshContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/ChannelEventListener;"
    }
.end annotation


# instance fields
.field activeTunnels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/Channel;",
            ">;"
        }
    .end annotation
.end field

.field killingTunnels:Z

.field listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener<",
            "TK;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->listeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->killingTunnels:Z

    return-void
.end method


# virtual methods
.method public addListener(Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener<",
            "TK;>;)V"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getTunnels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/Channel;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    return-object v0
.end method

.method public killAllTunnels()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x1

    .line 219
    :try_start_0
    iput-boolean v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->killingTunnels:Z

    .line 220
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    :try_start_1
    invoke-interface {v2}, Lcom/sshtools/common/ssh/Channel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 226
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 227
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onChannelClose(Lcom/sshtools/common/ssh/Channel;)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->killingTunnels:Z

    if-nez v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onChannelOpen(Lcom/sshtools/common/ssh/Channel;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->killingTunnels:Z

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->activeTunnels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 237
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;

    move-object v3, p1

    check-cast v3, Lcom/sshtools/synergy/ssh/ForwardingChannel;

    invoke-interface {v2, v3}, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;->tunnelOpened(Lcom/sshtools/synergy/ssh/ForwardingChannel;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeListener(Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager$TunnelListener<",
            "TK;>;)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketListeningForwardingChannelFactoryImpl$ActiveTunnelManager;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

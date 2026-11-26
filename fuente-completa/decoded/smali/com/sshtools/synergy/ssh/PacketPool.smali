.class public Lcom/sshtools/synergy/ssh/PacketPool;
.super Ljava/lang/Object;
.source "PacketPool.java"


# static fields
.field static instance:Lcom/sshtools/synergy/ssh/PacketPool;


# instance fields
.field packets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sshtools/common/ssh/Packet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    return-void
.end method

.method public static getInstance()Lcom/sshtools/synergy/ssh/PacketPool;
    .locals 1

    .line 37
    sget-object v0, Lcom/sshtools/synergy/ssh/PacketPool;->instance:Lcom/sshtools/synergy/ssh/PacketPool;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sshtools/synergy/ssh/PacketPool;

    invoke-direct {v0}, Lcom/sshtools/synergy/ssh/PacketPool;-><init>()V

    sput-object v0, Lcom/sshtools/synergy/ssh/PacketPool;->instance:Lcom/sshtools/synergy/ssh/PacketPool;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPacket()Lcom/sshtools/common/ssh/Packet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    monitor-exit v0

    return-object v1

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/Packet;

    .line 45
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public putPacket(Lcom/sshtools/common/ssh/Packet;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    monitor-enter v0

    .line 51
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->reset()V

    .line 52
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/PacketPool;->packets:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

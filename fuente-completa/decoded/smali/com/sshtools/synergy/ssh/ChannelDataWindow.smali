.class public Lcom/sshtools/synergy/ssh/ChannelDataWindow;
.super Ljava/lang/Object;
.source "ChannelDataWindow.java"


# instance fields
.field maximumPacketSize:I

.field maximumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

.field minimumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

.field windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 36
    iput-object p3, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->minimumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 37
    iput p4, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumPacketSize:I

    .line 38
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method


# virtual methods
.method public declared-synchronized adjust(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 1

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-static {v0, p1}, Lcom/sshtools/common/util/UnsignedInteger32;->add(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized consume(J)V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger32;->deduct(Lcom/sshtools/common/util/UnsignedInteger32;J)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getAdjustCount()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-static {v0, v1}, Lcom/sshtools/common/util/UnsignedInteger32;->deduct(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMaximumPacketSize()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumPacketSize:I

    return v0
.end method

.method public declared-synchronized getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->minimumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isAdjustRequired()Z
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->windowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->minimumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setMaximumWindowSpace(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setMaxiumPacketSize(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->maximumPacketSize:I

    return-void
.end method

.method public declared-synchronized setMinimumWindowSpace(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    monitor-enter p0

    .line 75
    :try_start_0
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelDataWindow;->minimumWindowSpace:Lcom/sshtools/common/util/UnsignedInteger32;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

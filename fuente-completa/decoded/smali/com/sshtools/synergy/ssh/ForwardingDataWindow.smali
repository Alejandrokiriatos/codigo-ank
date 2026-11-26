.class public Lcom/sshtools/synergy/ssh/ForwardingDataWindow;
.super Lcom/sshtools/synergy/ssh/CachingDataWindow;
.source "ForwardingDataWindow.java"


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized read(Ljava/nio/channels/SocketChannel;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 57
    :try_start_3
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 58
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public declared-synchronized write(Ljava/nio/channels/SocketChannel;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    const-string v0, "maverick.disableMaximumWrite"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->cache:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v1, :cond_1

    .line 46
    monitor-exit p0

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

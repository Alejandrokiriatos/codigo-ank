.class public Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelNG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/ChannelNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChannelInputStream"
.end annotation


# instance fields
.field streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

.field streamClosed:Z

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/synergy/ssh/CachingDataWindow;)V
    .locals 0

    .line 1392
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1393
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1397
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1400
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->remaining()I

    move-result v0

    return v0

    .line 1398
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1420
    iput-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamClosed:Z

    .line 1421
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->close()V

    .line 1422
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    monitor-enter v0

    .line 1423
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1424
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1405
    new-array v0, v0, [B

    .line 1406
    invoke-virtual {p0, v0}, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 1408
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 1409
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1410
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Read returning {}"

    invoke-static {v2, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1433
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object v2, v2, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter v2

    .line 1434
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->checkWindowSpace()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1435
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendWindowAdjust()V

    .line 1437
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1441
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    monitor-enter v3

    .line 1443
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->hasRemaining()Z

    move-result v2

    const/4 v4, -0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v2, v2, Lcom/sshtools/synergy/ssh/ChannelNG;->timeout:I

    if-eqz v2, :cond_1

    .line 1445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v2, v2, Lcom/sshtools/synergy/ssh/ChannelNG;->timeout:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_4

    .line 1447
    :cond_1
    iget-boolean v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamClosed:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1452
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->waitFor(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1454
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "The thread was interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1448
    :cond_3
    :goto_1
    monitor-exit v3

    return v4

    .line 1458
    :cond_4
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1459
    iget-boolean p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamClosed:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->isRemoteEOF()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 1462
    :cond_5
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "No data received within the timeout threshold"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1460
    :cond_6
    :goto_2
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v4

    .line 1466
    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->streamCache:Lcom/sshtools/synergy/ssh/CachingDataWindow;

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/CachingDataWindow;->get(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1471
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1473
    iget-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-object p2, p2, Lcom/sshtools/synergy/ssh/ChannelNG;->localWindow:Lcom/sshtools/synergy/ssh/ChannelDataWindow;

    monitor-enter p2

    .line 1474
    :try_start_6
    iget-object p3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ChannelNG;->checkWindowSpace()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 1475
    iget-object p3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelInputStream;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {p3}, Lcom/sshtools/synergy/ssh/ChannelNG;->sendWindowAdjust()V

    .line 1477
    :cond_8
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    .line 1468
    :catch_1
    :try_start_7
    monitor-exit v3

    return v4

    :catchall_1
    move-exception p1

    .line 1471
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 1437
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p1
.end method

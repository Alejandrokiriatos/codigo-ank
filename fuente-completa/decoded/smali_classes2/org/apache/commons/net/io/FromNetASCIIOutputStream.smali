.class public final Lorg/apache/commons/net/io/FromNetASCIIOutputStream;
.super Ljava/io/FilterOutputStream;
.source "FromNetASCIIOutputStream.java"


# instance fields
.field private lastWasCR:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method private writeInt(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_1

    .line 126
    iget-boolean v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write(I)V

    .line 128
    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    return-void

    .line 118
    :cond_2
    iget-boolean p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->LINE_SEPARATOR_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iput-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    return-void

    .line 123
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 56
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->lastWasCR:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 59
    :cond_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 104
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
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

.method public declared-synchronized write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    sget-boolean v0, Lorg/apache/commons/net/io/FromNetASCIIInputStream;->NO_CONVERSION_REQUIRED:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 p3, p2, 0x1

    .line 90
    :try_start_1
    aget-byte p2, p1, p2

    invoke-direct {p0, p2}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move p2, p3

    move p3, v0

    goto :goto_0

    .line 92
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

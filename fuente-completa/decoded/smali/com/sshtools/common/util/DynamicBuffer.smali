.class public Lcom/sshtools/common/util/DynamicBuffer;
.super Ljava/lang/Object;
.source "DynamicBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;,
        Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;
    }
.end annotation


# static fields
.field protected static final DEFAULT_BUFFER_SIZE:I = 0x8000


# instance fields
.field protected buf:[B

.field private closed:Z

.field private closedWithError:Z

.field protected in:Ljava/io/InputStream;

.field private interrupt:I

.field protected out:Ljava/io/OutputStream;

.field protected readpos:I

.field private timeout:I

.field protected writepos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    .line 54
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    .line 61
    iput-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    const/16 v1, 0x3e8

    .line 62
    iput v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->interrupt:I

    .line 63
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    .line 64
    iput-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    const v0, 0x8000

    .line 70
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    .line 71
    new-instance v0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;-><init>(Lcom/sshtools/common/util/DynamicBuffer;)V

    iput-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->in:Ljava/io/InputStream;

    .line 72
    new-instance v0, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;

    invoke-direct {v0, p0}, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;-><init>(Lcom/sshtools/common/util/DynamicBuffer;)V

    iput-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    .line 54
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    .line 61
    iput-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    const/16 v1, 0x3e8

    .line 62
    iput v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->interrupt:I

    .line 63
    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    .line 64
    iput-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    if-lez p1, :cond_0

    .line 79
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    .line 80
    new-instance p1, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;

    invoke-direct {p1, p0}, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferInputStream;-><init>(Lcom/sshtools/common/util/DynamicBuffer;)V

    iput-object p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->in:Ljava/io/InputStream;

    .line 81
    new-instance p1, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;

    invoke-direct {p1, p0}, Lcom/sshtools/common/util/DynamicBuffer$DynamicBufferOutputStream;-><init>(Lcom/sshtools/common/util/DynamicBuffer;)V

    iput-object p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->out:Ljava/io/OutputStream;

    return-void

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Buffer size cannot be negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private declared-synchronized block()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 141
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 144
    iget-boolean v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-nez v2, :cond_3

    .line 146
    :cond_0
    :goto_0
    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    iget v3, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    if-lt v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-nez v2, :cond_3

    .line 147
    iget-boolean v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    if-nez v2, :cond_2

    .line 150
    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->interrupt:I

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 151
    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget v4, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 148
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The buffer was closed due to an unspecified error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_3
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

.method private declared-synchronized verifyBufferSize(I)V
    .locals 5

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    array-length v1, v0

    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-le p1, v1, :cond_0

    .line 116
    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    .line 118
    iput v3, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    array-length v1, v0

    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_1

    .line 123
    array-length v1, v0

    const v4, 0x8000

    add-int/2addr v1, v4

    new-array v1, v1, [B

    .line 124
    iget v4, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    sub-int/2addr v2, v4

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :cond_1
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


# virtual methods
.method protected declared-synchronized available()I
    .locals 3

    monitor-enter p0

    .line 134
    :try_start_0
    iget v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int v2, v0, v1

    if-lez v2, :cond_0

    sub-int/2addr v0, v1

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

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sshtools/common/util/DynamicBuffer;->close(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
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

.method public declared-synchronized close(Z)V
    .locals 0

    monitor-enter p0

    .line 166
    :try_start_0
    iput-boolean p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    if-nez p1, :cond_0

    .line 168
    iget-boolean p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 169
    iput-boolean p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    :cond_0
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

.method protected declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
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

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 105
    iget v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/util/DynamicBuffer;->block()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sshtools/common/util/DynamicBuffer;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_0

    .line 248
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 251
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    aget-byte v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 243
    :catch_0
    :try_start_3
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "The blocking operation was interrupted"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected declared-synchronized read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/common/util/DynamicBuffer;->block()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :try_start_1
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sshtools/common/util/DynamicBuffer;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v0, :cond_0

    .line 279
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 282
    :cond_0
    :try_start_2
    iget v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_1

    sub-int p3, v0, v1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->readpos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    monitor-exit p0

    return p3

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 274
    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "The blocking operation was interrupted"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public setBlockInterrupt(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->interrupt:I

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->timeout:I

    return-void
.end method

.method protected declared-synchronized write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 184
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    if-nez v0, :cond_1

    .line 188
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 192
    invoke-direct {p0, v0}, Lcom/sshtools/common/util/DynamicBuffer;->verifyBufferSize(I)V

    .line 193
    iget-object v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    iget v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    add-int/2addr v2, v0

    .line 194
    iput v2, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 189
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The buffer is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The buffer was closed due to an unspecified error"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closedWithError:Z

    if-nez v0, :cond_1

    .line 215
    iget-boolean v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->closed:Z

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p3}, Lcom/sshtools/common/util/DynamicBuffer;->verifyBufferSize(I)V

    .line 220
    iget-object v0, p0, Lcom/sshtools/common/util/DynamicBuffer;->buf:[B

    iget v1, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sshtools/common/util/DynamicBuffer;->writepos:I

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The buffer is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 212
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The buffer was closed due to an unspecified error"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

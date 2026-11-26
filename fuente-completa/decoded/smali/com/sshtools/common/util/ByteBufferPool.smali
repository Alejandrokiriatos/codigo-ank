.class public Lcom/sshtools/common/util/ByteBufferPool;
.super Ljava/lang/Object;
.source "ByteBufferPool.java"


# instance fields
.field private allocated:I

.field private capacity:I

.field private pool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private totalDirectMemoryAllocated:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    const/16 v0, 0x1000

    .line 34
    iput v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->allocated:I

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/sshtools/common/util/ByteBufferPool;->allocated:I

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J

    .line 51
    iput p1, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/nio/ByteBuffer;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 127
    monitor-exit p0

    return-void

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    if-ne v0, v1, :cond_1

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 130
    iget-object v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
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

.method public declared-synchronized get()Ljava/nio/ByteBuffer;
    .locals 5

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->allocated:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->allocated:I

    .line 108
    iget v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 109
    iget-wide v1, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J

    iget v3, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-object v0

    .line 114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getAllocatedBuffers()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->allocated:I

    return v0
.end method

.method public getCapacity()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    return v0
.end method

.method public getFreeBuffers()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getTotalMemoryAllocated()J
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTotalMemoryInUse()J
    .locals 4

    .line 87
    iget-wide v0, p0, Lcom/sshtools/common/util/ByteBufferPool;->totalDirectMemoryAllocated:J

    iget-object v2, p0, Lcom/sshtools/common/util/ByteBufferPool;->pool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/sshtools/common/util/ByteBufferPool;->capacity:I

    mul-int/2addr v2, v3

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

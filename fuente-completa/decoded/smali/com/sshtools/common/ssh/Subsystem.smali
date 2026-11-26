.class public abstract Lcom/sshtools/common/ssh/Subsystem;
.super Ljava/lang/Object;
.source "Subsystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;
    }
.end annotation


# static fields
.field public static final SUBSYSTEM_INCOMING:Ljava/lang/Integer;

.field public static final SUBSYSTEM_OUTGOING:Ljava/lang/Integer;


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

.field bytesSinceLastWindowIssue:J

.field protected context:Lcom/sshtools/common/ssh/Context;

.field maximumPacketSize:I

.field message_length:I

.field name:Ljava/lang/String;

.field protected session:Lcom/sshtools/common/ssh/SessionChannel;

.field shutdown:Z


# direct methods
.method static bridge synthetic -$$Nest$mdoSendMessage(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/Packet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/Subsystem;->doSendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "Subsystem.queue.in"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_INCOMING:Ljava/lang/Integer;

    .line 41
    const-string v0, "Subsystem.queue.out"

    invoke-static {v0}, Lcom/sshtools/common/ssh/ExecutorOperationQueues;->generateUniqueQueue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_OUTGOING:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/sshtools/common/ssh/Subsystem;->maximumPacketSize:I

    .line 51
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/Subsystem;->shutdown:Z

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    .line 55
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->name:Ljava/lang/String;

    return-void
.end method

.method private buffer(Ljava/nio/ByteBuffer;Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 267
    iget-object p2, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 271
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object p2, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 273
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 274
    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 275
    iget-object v2, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 276
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    if-eqz v0, :cond_2

    .line 281
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    :cond_2
    return-void
.end method

.method private doSendMessage(Lcom/sshtools/common/ssh/Packet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending subsystem packet of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->finish()V

    .line 345
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/Packet;->size()I

    move-result p1

    invoke-interface {v0, v2, v1, p1}, Lcom/sshtools/common/ssh/SessionChannel;->sendData([BII)V

    return-void

    .line 339
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to send subsystem packet, session closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected declared-synchronized cleanup()V
    .locals 1

    monitor-enter p0

    .line 143
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/ssh/Subsystem;->shutdown:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/Subsystem;->cleanupSubsystem()V

    .line 146
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->close()V

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/sshtools/common/ssh/Subsystem;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
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

.method protected abstract cleanupSubsystem()V
.end method

.method protected executeOperation(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V
    .locals 1

    .line 129
    const-string v0, "maverick.additionalSFTPIncomingQueue"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->doTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 135
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Caught error in processing SFTP message"

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/Subsystem;->cleanup()V

    return-void
.end method

.method public free()V
    .locals 3

    .line 288
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cleaning up "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subsystem references"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/Subsystem;->onSubsystemFree()V

    .line 293
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/Subsystem;->cleanup()V

    .line 296
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lcom/sshtools/common/ssh/Subsystem;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    invoke-virtual {v1, v0}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    :cond_1
    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Lcom/sshtools/common/ssh/Context;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/sshtools/common/ssh/SessionChannel;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    return-object v0
.end method

.method public init(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/ssh/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 81
    invoke-interface {p2}, Lcom/sshtools/common/ssh/Context;->getByteBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    .line 83
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    .line 84
    iput-object p2, p0, Lcom/sshtools/common/ssh/Subsystem;->context:Lcom/sshtools/common/ssh/Context;

    .line 87
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->haltIncomingData()V

    .line 89
    new-instance p2, Lcom/sshtools/common/ssh/Subsystem$1;

    invoke-direct {p2, p0, p1}, Lcom/sshtools/common/ssh/Subsystem$1;-><init>(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/SessionChannel;)V

    invoke-interface {p1, p2}, Lcom/sshtools/common/ssh/SessionChannel;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    return-void
.end method

.method public onFreeMessage([B)V
    .locals 6

    .line 351
    iget v0, p0, Lcom/sshtools/common/ssh/Subsystem;->maximumPacketSize:I

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    .line 352
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/sshtools/common/ssh/Subsystem;->maximumPacketSize:I

    .line 355
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    array-length p1, p1

    add-int/lit8 p1, p1, 0x4

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    .line 356
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getMinimumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    .line 357
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getMaximumWindowSpace()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getLocalPacket()I

    move-result p1

    iget v4, p0, Lcom/sshtools/common/ssh/Subsystem;->maximumPacketSize:I

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    .line 356
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 358
    iget-wide v2, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    cmp-long p1, v2, v0

    if-ltz p1, :cond_1

    .line 359
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-wide v1, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/sshtools/common/ssh/SessionChannel;->sendWindowAdjust(Lcom/sshtools/common/util/UnsignedInteger32;)V

    const-wide/16 v0, 0x0

    .line 360
    iput-wide v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bytesSinceLastWindowIssue:J

    :cond_1
    return-void
.end method

.method protected abstract onMessageReceived([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract onSubsystemFree()V
.end method

.method protected parseMessage(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 191
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteBufferPool;->get()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    .line 194
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Buffer has "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " bytes remaining of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 195
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes of data"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/sshtools/common/ssh/Subsystem;->buffer(Ljava/nio/ByteBuffer;Z)V

    .line 203
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v2, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    .line 206
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Buffer has remaining="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " messagLength="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    .line 204
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    :cond_4
    iget v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v4, :cond_8

    .line 210
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    .line 211
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 212
    iget v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Expecting subsystem packet length "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_5
    invoke-direct {p0, p1, v3}, Lcom/sshtools/common/ssh/Subsystem;->buffer(Ljava/nio/ByteBuffer;Z)V

    .line 217
    iget v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    if-ltz v0, :cond_6

    iget-object v5, p0, Lcom/sshtools/common/ssh/Subsystem;->context:Lcom/sshtools/common/ssh/Context;

    .line 218
    invoke-interface {v5}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v5

    sub-int/2addr v5, v4

    if-le v0, v5, :cond_8

    .line 219
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 220
    iget p1, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->context:Lcom/sshtools/common/ssh/Context;

    .line 222
    invoke-interface {v0}, Lcom/sshtools/common/ssh/Context;->getMaximumPacketLength()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incoming subsystem message length "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " exceeds maximum supported packet length "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 220
    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :cond_7
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p1

    const-string v0, "Protocol error"

    invoke-interface {p1, v0}, Lcom/sshtools/common/ssh/SshConnection;->disconnect(Ljava/lang/String;)V

    return-void

    .line 228
    :cond_8
    :goto_0
    iget v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    iget v5, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    if-lt v0, v5, :cond_b

    if-lez v5, :cond_9

    .line 231
    new-array v0, v5, [B

    .line 233
    iget-object v5, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v5, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v5}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v5

    sget-object v6, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_INCOMING:Ljava/lang/Integer;

    new-instance v7, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;

    invoke-direct {v7, p0, v0}, Lcom/sshtools/common/ssh/Subsystem$ProcessMessageOperation;-><init>(Lcom/sshtools/common/ssh/Subsystem;[B)V

    invoke-interface {v5, v6, v7}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    .line 237
    invoke-direct {p0, p1, v3}, Lcom/sshtools/common/ssh/Subsystem;->buffer(Ljava/nio/ByteBuffer;Z)V

    goto :goto_1

    .line 240
    :cond_9
    const-string v0, "Received zero length message in SFTP subsystem!!"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    :goto_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, v4, :cond_a

    .line 244
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/sshtools/common/ssh/Subsystem;->buffer(Ljava/nio/ByteBuffer;Z)V

    goto :goto_0

    .line 248
    :cond_a
    iput v2, p0, Lcom/sshtools/common/ssh/Subsystem;->message_length:I

    goto :goto_0

    .line 251
    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_3

    .line 253
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_c

    .line 254
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->bufferPool:Lcom/sshtools/common/util/ByteBufferPool;

    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteBufferPool;->add(Ljava/nio/ByteBuffer;)V

    const/4 p1, 0x0

    .line 255
    iput-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    return-void

    .line 258
    :cond_c
    iget-object p1, p0, Lcom/sshtools/common/ssh/Subsystem;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    return-void

    .line 188
    :cond_d
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Session is closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processMessage(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p1}, Lcom/sshtools/common/ssh/Subsystem;->parseMessage(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const-string v0, "maverick.outgoingSubsystemQueue"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sshtools/common/ssh/Subsystem;->session:Lcom/sshtools/common/ssh/SessionChannel;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    sget-object v1, Lcom/sshtools/common/ssh/Subsystem;->SUBSYSTEM_OUTGOING:Ljava/lang/Integer;

    new-instance v2, Lcom/sshtools/common/ssh/Subsystem$2;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/Subsystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/sshtools/common/ssh/Subsystem$2;-><init>(Lcom/sshtools/common/ssh/Subsystem;Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/common/ssh/Packet;)V

    invoke-interface {v0, v1, v2}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Ljava/lang/Integer;Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    return-void

    .line 333
    :cond_0
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/Subsystem;->doSendMessage(Lcom/sshtools/common/ssh/Packet;)V

    return-void
.end method

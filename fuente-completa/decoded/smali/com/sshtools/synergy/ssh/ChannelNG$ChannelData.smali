.class Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;
.super Ljava/lang/Object;
.source "ChannelNG.java"

# interfaces
.implements Lcom/sshtools/common/sshd/SshMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/ChannelNG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelData"
.end annotation


# instance fields
.field count:I

.field msg:Ljava/nio/ByteBuffer;

.field remoteWindow:J

.field sent:Z

.field sequenceNo:I

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

.field type:I


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;Ljava/nio/ByteBuffer;IJ)V
    .locals 1

    .line 1209
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    sget p1, Lcom/sshtools/synergy/ssh/ChannelNG;->sequence:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/sshtools/synergy/ssh/ChannelNG;->sequence:I

    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->sequenceNo:I

    .line 1210
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->msg:Ljava/nio/ByteBuffer;

    .line 1211
    iput p3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->type:I

    .line 1212
    iput-wide p4, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->remoteWindow:J

    .line 1213
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    iput p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized isMessageSent()Z
    .locals 1

    monitor-enter p0

    .line 1253
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->sent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public declared-synchronized messageSent(Ljava/lang/Long;)V
    .locals 4

    monitor-enter p0

    .line 1239
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1240
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    const-string v1, "%s seq=%d len=%d"

    .line 1241
    iget v2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->type:I

    if-lez v2, :cond_0

    const-string v2, "SSH_MSG_CHANNEL_EXTENDED_DATA"

    goto :goto_0

    :cond_0
    const-string v2, "SSH_MSG_CHANNEL_DATA"

    :goto_0
    iget v3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->count:I

    .line 1242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    .line 1240
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/synergy/ssh/ChannelNG;->logMessage(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 1248
    iput-boolean p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->sent:Z

    .line 1249
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1250
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

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 1221
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->type:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v0, 0x5f

    .line 1222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1223
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1224
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    .line 1226
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1227
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1230
    :goto_0
    iget v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->count:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1231
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->msg:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 1233
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$ChannelData;->msg:Ljava/nio/ByteBuffer;

    return v1
.end method

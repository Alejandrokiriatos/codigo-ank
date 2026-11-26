.class Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;
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
    name = "WindowAdjust"
.end annotation


# instance fields
.field channel:Lcom/sshtools/synergy/ssh/ChannelNG;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;"
        }
    .end annotation
.end field

.field count:J

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

.field window:J


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;Lcom/sshtools/synergy/ssh/ChannelNG;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/ChannelNG<",
            "TT;>;JJ)V"
        }
    .end annotation

    .line 1149
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1150
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    .line 1151
    iput-wide p3, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->count:J

    .line 1152
    iput-wide p5, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->window:J

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 3

    .line 1163
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1164
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->window:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SSH_MSG_CHANNEL_WINDOW_ADJUST count=%d window=%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->logMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 2

    const/16 v0, 0x5d

    .line 1156
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1157
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1158
    iget-wide v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$WindowAdjust;->count:J

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method

.class Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;
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
    name = "RequestSuccess"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ChannelNG;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0

    .line 1169
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageSent(Ljava/lang/Long;)V
    .locals 1

    .line 1177
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1178
    iget-object p1, p0, Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    const-string v0, "SSH_MSG_CHANNEL_SUCCESS"

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->logMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public writeMessageIntoBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    const/16 v0, 0x63

    .line 1171
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1172
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ChannelNG$RequestSuccess;->this$0:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v0, v0, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method

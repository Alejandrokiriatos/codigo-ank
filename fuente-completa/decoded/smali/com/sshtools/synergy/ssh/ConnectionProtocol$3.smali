.class Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "ConnectionProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/ConnectionProtocol;->processChannelEOF([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

.field final synthetic val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

.field final synthetic val$channelid:I


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/ConnectionProtocol;Lcom/sshtools/common/ssh/SshConnection;ILcom/sshtools/synergy/ssh/ChannelNG;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->this$0:Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    iput p3, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->val$channelid:I

    iput-object p4, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->val$channelid:I

    iget-object v1, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    iget v1, v1, Lcom/sshtools/synergy/ssh/ChannelNG;->remoteid:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received SSH_MSG_CHANNEL_EOF channel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " remote="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionProtocol$3;->val$channel:Lcom/sshtools/synergy/ssh/ChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/ChannelNG;->processChannelEOF()V

    return-void
.end method

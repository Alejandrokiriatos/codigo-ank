.class Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "SocketForwardingChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/ssh/SocketForwardingChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueueChannelDataTask"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;I)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    .line 483
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 484
    iput p3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->count:I

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 5

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->getRemotePacket()I

    move-result v0

    new-array v1, v0, [B

    .line 493
    :goto_0
    iget v2, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->count:I

    if-lez v2, :cond_0

    .line 495
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 496
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-object v3, v3, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->toChannel:Lcom/sshtools/synergy/ssh/ForwardingDataWindow;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/synergy/ssh/ForwardingDataWindow;->get([BII)I

    .line 497
    iget v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->count:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->count:I

    .line 499
    iget-object v3, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->sendData([BII)V

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-static {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->-$$Nest$mchangeInterestedOps(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;)V

    .line 504
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    iget-boolean v0, v0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->closePending:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->canClose()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 509
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    const-string v2, "Channel I/O error"

    invoke-virtual {v1, v2, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 510
    iget-object v1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$QueueChannelDataTask;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v1, v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->close(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

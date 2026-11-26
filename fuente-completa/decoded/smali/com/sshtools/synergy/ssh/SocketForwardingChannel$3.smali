.class Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "SocketForwardingChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->processReadEvent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/ssh/SocketForwardingChannel;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 2

    .line 355
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    const-string v1, "The socket has returned EOF"

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->log(Ljava/lang/String;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->sendEOF()V

    .line 359
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/SocketForwardingChannel$3;->this$0:Lcom/sshtools/synergy/ssh/SocketForwardingChannel;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/SocketForwardingChannel;->evaluateClosure()V

    return-void
.end method

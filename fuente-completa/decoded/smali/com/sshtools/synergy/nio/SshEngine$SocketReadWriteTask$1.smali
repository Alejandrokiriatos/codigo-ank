.class Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;
.super Ljava/lang/Object;
.source "SshEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->doTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 994
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 996
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SocketHandler;->wantsWrite()Z

    move-result v0

    .line 997
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v1, v1, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SocketHandler;->wantsRead()Z

    move-result v1

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_1

    or-int/lit8 v2, v2, 0x1

    .line 1004
    :cond_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1005
    iget-object v3, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v3, v3, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    .line 1006
    invoke-interface {v3}, Lcom/sshtools/synergy/nio/SocketHandler;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1007
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 1008
    const-string v0, "READ/WRITE"

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "WRITE"

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    const-string v0, "READ"

    goto :goto_1

    :cond_4
    const-string v0, "NONE"

    :goto_1
    filled-new-array {v3, v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 1005
    const-string v1, "{} has state ops={} {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    :cond_5
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;->this$1:Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    :cond_6
    return-void
.end method

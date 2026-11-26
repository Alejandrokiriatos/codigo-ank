.class Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "SshEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/nio/SshEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SocketReadWriteTask"
.end annotation


# instance fields
.field key:Ljava/nio/channels/SelectionKey;

.field listener:Lcom/sshtools/synergy/nio/SocketHandler;

.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/ssh/Connection;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SocketHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "*>;",
            "Ljava/nio/channels/SelectionKey;",
            "Lcom/sshtools/synergy/nio/SocketHandler;",
            ")V"
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    .line 967
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 968
    iput-object p3, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    .line 969
    iput-object p4, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SocketHandler;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Starting {} WRITE"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SocketHandler;->processWriteEvent()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 982
    :goto_0
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 983
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 984
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SocketHandler;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Starting {} READ"

    invoke-static {v2, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 986
    :cond_2
    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v1}, Lcom/sshtools/synergy/nio/SocketHandler;->processReadEvent()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 990
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    return-void

    .line 992
    :cond_4
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;->listener:Lcom/sshtools/synergy/nio/SocketHandler;

    invoke-interface {v0}, Lcom/sshtools/synergy/nio/SocketHandler;->getSelectorThread()Lcom/sshtools/synergy/nio/SelectorThread;

    move-result-object v0

    new-instance v1, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;

    invoke-direct {v1, p0}, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask$1;-><init>(Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/nio/SelectorThread;->addSelectorOperation(Ljava/lang/Runnable;)V

    return-void
.end method

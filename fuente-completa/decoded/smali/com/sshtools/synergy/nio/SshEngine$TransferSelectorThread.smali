.class Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;
.super Ljava/lang/Object;
.source "SshEngine.java"

# interfaces
.implements Lcom/sshtools/synergy/nio/SelectorThreadImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/nio/SshEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransferSelectorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getProduct()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processSelectionKey(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 4

    .line 942
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/synergy/nio/SocketHandler;

    if-eqz p1, :cond_3

    .line 944
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 945
    invoke-virtual {p1, v0}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 947
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 948
    invoke-interface {p2}, Lcom/sshtools/synergy/nio/SocketHandler;->getName()Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, " READ"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, " WRITE"

    :cond_1
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 948
    const-string v1, "Processing {}{}{}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    :cond_2
    new-instance v0, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$TransferSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-interface {p2}, Lcom/sshtools/synergy/nio/SocketHandler;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sshtools/synergy/nio/SshEngine$SocketReadWriteTask;-><init>(Lcom/sshtools/synergy/nio/SshEngine;Lcom/sshtools/synergy/ssh/Connection;Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SocketHandler;)V

    invoke-interface {p2, v0}, Lcom/sshtools/synergy/nio/SocketHandler;->addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)V

    :cond_3
    return-void
.end method

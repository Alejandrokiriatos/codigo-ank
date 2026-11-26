.class Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;
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
    name = "AcceptSelectorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 933
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getProduct()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-ACCEPT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processSelectionKey(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 3

    .line 923
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/synergy/nio/ClientAcceptor;

    .line 925
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteBufferPool;->getAllocatedBuffers()I

    move-result v0

    iget-object v1, p0, Lcom/sshtools/synergy/nio/SshEngine$AcceptSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v1, v1, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    .line 928
    invoke-virtual {v1}, Lcom/sshtools/synergy/nio/SshEngineContext;->getBufferPool()Lcom/sshtools/common/util/ByteBufferPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteBufferPool;->getFreeBuffers()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " direct buffers allocated, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " free"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 926
    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 929
    :cond_0
    invoke-virtual {p2, p1}, Lcom/sshtools/synergy/nio/ClientAcceptor;->finishAccept(Ljava/nio/channels/SelectionKey;)V

    return-void
.end method

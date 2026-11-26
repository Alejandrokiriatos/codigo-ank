.class Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;
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
    name = "ConnectSelectorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/synergy/nio/SshEngine;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SshEngine;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 1029
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SshEngine$ConnectSelectorThread;->this$0:Lcom/sshtools/synergy/nio/SshEngine;

    iget-object v0, v0, Lcom/sshtools/synergy/nio/SshEngine;->context:Lcom/sshtools/synergy/nio/SshEngineContext;

    invoke-virtual {v0}, Lcom/sshtools/synergy/nio/SshEngineContext;->getProduct()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processSelectionKey(Ljava/nio/channels/SelectionKey;Lcom/sshtools/synergy/nio/SelectorThread;)V
    .locals 0

    .line 1022
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/synergy/nio/ClientConnector;

    .line 1023
    invoke-interface {p2, p1}, Lcom/sshtools/synergy/nio/ClientConnector;->finishConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1024
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    :cond_0
    return-void
.end method

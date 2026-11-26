.class Lcom/sshtools/client/ConnectionProtocolClient$1;
.super Ljava/lang/Object;
.source "ConnectionProtocolClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/ConnectionProtocolClient;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/ConnectionProtocolClient;


# direct methods
.method constructor <init>(Lcom/sshtools/client/ConnectionProtocolClient;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sshtools/client/ConnectionProtocolClient$1;->this$0:Lcom/sshtools/client/ConnectionProtocolClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/sshtools/client/ConnectionProtocolClient$1;->this$0:Lcom/sshtools/client/ConnectionProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/ConnectionProtocolClient;->getContext()Lcom/sshtools/client/SshClientContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getStateListeners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/synergy/ssh/ConnectionStateListener;

    .line 67
    iget-object v2, p0, Lcom/sshtools/client/ConnectionProtocolClient$1;->this$0:Lcom/sshtools/client/ConnectionProtocolClient;

    invoke-static {v2}, Lcom/sshtools/client/ConnectionProtocolClient;->access$000(Lcom/sshtools/client/ConnectionProtocolClient;)Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/synergy/ssh/ConnectionStateListener;->ready(Lcom/sshtools/common/ssh/SshConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

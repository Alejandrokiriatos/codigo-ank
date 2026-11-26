.class Lcom/sshtools/client/AuthenticationProtocolClient$3;
.super Ljava/lang/Object;
.source "AuthenticationProtocolClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/AuthenticationProtocolClient;->processMessage([B)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

.field final synthetic val$partial:Z


# direct methods
.method constructor <init>(Lcom/sshtools/client/AuthenticationProtocolClient;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iput-boolean p2, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->val$partial:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 217
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->context:Lcom/sshtools/client/SshClientContext;

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

    check-cast v1, Lcom/sshtools/client/ClientStateListener;

    .line 218
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v3, v2, Lcom/sshtools/client/AuthenticationProtocolClient;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v3}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v4, v4, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    iget-boolean v5, p0, Lcom/sshtools/client/AuthenticationProtocolClient$3;->val$partial:Z

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/sshtools/client/ClientStateListener;->authenticate(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/common/ssh/SshConnection;Ljava/util/Set;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

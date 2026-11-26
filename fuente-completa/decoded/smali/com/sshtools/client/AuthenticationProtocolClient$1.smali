.class Lcom/sshtools/client/AuthenticationProtocolClient$1;
.super Ljava/lang/Object;
.source "AuthenticationProtocolClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/AuthenticationProtocolClient;-><init>(Lcom/sshtools/client/TransportProtocolClient;Lcom/sshtools/client/SshClientContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

.field final synthetic val$context:Lcom/sshtools/client/SshClientContext;

.field final synthetic val$transport:Lcom/sshtools/client/TransportProtocolClient;


# direct methods
.method constructor <init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/SshClientContext;Lcom/sshtools/client/TransportProtocolClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iput-object p2, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->val$context:Lcom/sshtools/client/SshClientContext;

    iput-object p3, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->val$transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->val$context:Lcom/sshtools/client/SshClientContext;

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

    .line 82
    iget-object v2, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v3, p0, Lcom/sshtools/client/AuthenticationProtocolClient$1;->val$transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v3}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sshtools/client/ClientStateListener;->authenticationStarted(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/common/ssh/SshConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

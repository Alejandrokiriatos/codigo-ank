.class Lcom/sshtools/client/AuthenticationProtocolClient$2;
.super Ljava/lang/Object;
.source "AuthenticationProtocolClient.java"

# interfaces
.implements Lcom/sshtools/common/events/EventListener;


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

.field final synthetic val$transport:Lcom/sshtools/client/TransportProtocolClient;


# direct methods
.method constructor <init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/TransportProtocolClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iput-object p2, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->val$transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Lcom/sshtools/common/events/Event;->getId()I

    move-result p1

    const v0, -0xffff01

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    monitor-enter p1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-static {v0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v0}, Lcom/sshtools/client/ClientAuthenticator;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-interface {v0}, Lcom/sshtools/client/ClientAuthenticator;->failure()V

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->currentAuthenticator:Lcom/sshtools/client/ClientAuthenticator;

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->authenticators:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 101
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->val$transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->isDone()Z

    move-result p1

    if-nez p1, :cond_3

    .line 104
    iget-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$2;->val$transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/synergy/ssh/Connection;->getAuthenticatedFuture()Lcom/sshtools/synergy/ssh/AuthenticatedFuture;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sshtools/synergy/ssh/AuthenticatedFuture;->done(Z)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 101
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

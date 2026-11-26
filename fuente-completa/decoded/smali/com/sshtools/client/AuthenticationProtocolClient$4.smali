.class Lcom/sshtools/client/AuthenticationProtocolClient$4;
.super Lcom/sshtools/client/KeyboardInteractiveAuthenticator;
.source "AuthenticationProtocolClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/AuthenticationProtocolClient;->addAuthentication(Lcom/sshtools/client/ClientAuthenticator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

.field final synthetic val$authenticator:Lcom/sshtools/client/ClientAuthenticator;


# direct methods
.method constructor <init>(Lcom/sshtools/client/AuthenticationProtocolClient;Lcom/sshtools/client/KeyboardInteractiveCallback;Lcom/sshtools/client/ClientAuthenticator;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/sshtools/client/AuthenticationProtocolClient$4;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iput-object p3, p0, Lcom/sshtools/client/AuthenticationProtocolClient$4;->val$authenticator:Lcom/sshtools/client/ClientAuthenticator;

    invoke-direct {p0, p2}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;-><init>(Lcom/sshtools/client/KeyboardInteractiveCallback;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized done(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    if-nez p1, :cond_1

    .line 359
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$4;->this$0:Lcom/sshtools/client/AuthenticationProtocolClient;

    iget-object v0, v0, Lcom/sshtools/client/AuthenticationProtocolClient;->supportedAuths:Ljava/util/Set;

    const-string v1, "password"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/AuthenticationProtocolClient$4;->val$authenticator:Lcom/sshtools/client/ClientAuthenticator;

    check-cast v0, Lcom/sshtools/client/PasswordAuthenticator;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/PasswordAuthenticator;->done(Z)V

    .line 362
    :cond_1
    invoke-super {p0, p1}, Lcom/sshtools/client/KeyboardInteractiveAuthenticator;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

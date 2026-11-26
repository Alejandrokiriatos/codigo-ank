.class Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "KeyboardInteractiveAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessMessageTask"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;Lcom/sshtools/common/ssh/SshConnection;[B)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    .line 210
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 211
    iput-object p3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->msg:[B

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 6

    .line 215
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v4, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v4, v4, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    new-array v5, v1, [Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 228
    invoke-interface {v4, v2, v3}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->setResponse([Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v2

    .line 231
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 233
    iget-object v4, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v4, v4, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v4}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->canContinue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->markFailed()V

    .line 237
    :cond_1
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    new-array v4, v1, [Lcom/sshtools/common/ssh2/KBIPrompt;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sshtools/common/ssh2/KBIPrompt;

    iget-object v4, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v4, v4, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    .line 238
    invoke-interface {v4}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v5, v5, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    invoke-interface {v5}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getInstruction()Ljava/lang/String;

    move-result-object v5

    .line 237
    invoke-virtual {v2, v3, v4, v5}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->sendInfoRequest([Lcom/sshtools/common/ssh2/KBIPrompt;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V

    goto :goto_1

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    invoke-interface {v2}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->hasAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->completedAuthentication()V

    goto :goto_1

    .line 246
    :cond_4
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 251
    :try_start_1
    const-string v3, "Error processing USER_AUTH_INFO_RESPONSE"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 252
    iget-object v1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$ProcessMessageTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Lcom/sshtools/common/ssh/SshConnection;->disconnect(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 255
    throw v1
.end method

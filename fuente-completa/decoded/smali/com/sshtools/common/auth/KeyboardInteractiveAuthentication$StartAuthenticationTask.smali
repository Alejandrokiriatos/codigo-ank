.class Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "KeyboardInteractiveAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartAuthenticationTask"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    .line 146
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 147
    iput-object p3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->username:Ljava/lang/String;

    .line 148
    iput-object p4, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->msg:[B

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .line 153
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 156
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    const-string v3, "Language: {}"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "Submethods: {}"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    if-nez v2, :cond_5

    .line 166
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->providers:[Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 167
    iget-object v6, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5, v6}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;->createInstance(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    move-result-object v5

    .line 168
    iget-object v6, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5, v6}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->init(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/ssh2/KBIPrompt;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 170
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    invoke-interface {v5}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getInstruction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v4}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->sendInfoRequest([Lcom/sshtools/common/ssh2/KBIPrompt;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iput-object v5, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    goto :goto_1

    .line 174
    :cond_2
    invoke-interface {v5}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->hasAuthenticated()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    iget-object v6, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iput-object v5, v6, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    .line 176
    iget-object v5, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v5, v5, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v5}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->completedAuthentication()V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    if-nez v2, :cond_8

    .line 182
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V

    goto :goto_2

    .line 185
    :cond_5
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    iget-object v3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v2, v3}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->init(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/ssh2/KBIPrompt;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 187
    iget-object v3, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v4, v3, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    invoke-interface {v4}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v5, v5, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    invoke-interface {v5}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->getInstruction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->sendInfoRequest([Lcom/sshtools/common/ssh2/KBIPrompt;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 189
    :cond_6
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->selectedProvider:Lcom/sshtools/common/auth/KeyboardInteractiveProvider;

    invoke-interface {v2}, Lcom/sshtools/common/auth/KeyboardInteractiveProvider;->hasAuthenticated()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 190
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->completedAuthentication()V

    goto :goto_2

    .line 192
    :cond_7
    iget-object v2, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->this$0:Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v2}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 197
    :try_start_1
    const-string v3, "Error starting keyboard-interactive authentication"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 198
    iget-object v1, p0, Lcom/sshtools/common/auth/KeyboardInteractiveAuthentication$StartAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v3, v2}, Lcom/sshtools/common/ssh/SshConnection;->disconnect(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 201
    throw v1
.end method

.class Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "PasswordAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/auth/PasswordAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PasswordAuthenticationTask"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/PasswordAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    .line 93
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 94
    iput-object p3, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->username:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->msg:[B

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 10

    .line 99
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    invoke-virtual {v0}, Lcom/sshtools/common/auth/PasswordAuthentication;->hasProviders()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "Remote requested password authentication but its not currently supported by this configuration."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PasswordAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V

    return-void

    .line 108
    :cond_1
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v2, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->msg:[B

    invoke-direct {v0, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 115
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 116
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 121
    iget-object v4, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v4, v4, Lcom/sshtools/common/auth/PasswordAuthentication;->providers:[Lcom/sshtools/common/auth/PasswordAuthenticationProvider;

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    if-eqz v2, :cond_3

    .line 123
    iget-object v7, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v8, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->username:Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v9

    .line 123
    invoke-virtual {v6, v7, v8, v3, v9}, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;->changePassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    .line 126
    :cond_3
    iget-object v7, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v8, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->username:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v3}, Lcom/sshtools/common/auth/PasswordAuthenticationProvider;->verifyPassword(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :goto_2
    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 135
    iget-object v1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v1, v1, Lcom/sshtools/common/auth/PasswordAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v1}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->completedAuthentication()V

    goto :goto_4

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v1, v1, Lcom/sshtools/common/auth/PasswordAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v1}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V
    :try_end_0
    .catch Lcom/sshtools/common/auth/PasswordChangeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v1

    .line 158
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/PasswordAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    invoke-interface {v2, v3, v1}, Lcom/sshtools/common/sshd/AbstractServerTransport;->disconnect(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :goto_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    goto :goto_6

    .line 141
    :catch_1
    :try_start_2
    iget-object v1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v1, v1, Lcom/sshtools/common/auth/PasswordAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    new-instance v2, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask$1;

    invoke-direct {v2, p0}, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask$1;-><init>(Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;)V

    invoke-interface {v1, v2}, Lcom/sshtools/common/sshd/AbstractServerTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    .line 156
    iget-object v1, p0, Lcom/sshtools/common/auth/PasswordAuthentication$PasswordAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PasswordAuthentication;

    iget-object v1, v1, Lcom/sshtools/common/auth/PasswordAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v1}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->discardAuthentication()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_6
    return-void

    .line 160
    :goto_7
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 161
    throw v1
.end method

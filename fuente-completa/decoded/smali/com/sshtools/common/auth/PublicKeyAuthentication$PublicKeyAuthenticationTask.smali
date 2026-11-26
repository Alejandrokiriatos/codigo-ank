.class Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "PublicKeyAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/auth/PublicKeyAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublicKeyAuthenticationTask"
.end annotation


# instance fields
.field msg:[B

.field final synthetic this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/auth/PublicKeyAuthentication;Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;[B)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    .line 128
    invoke-direct {p0, p2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 129
    iput-object p3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->username:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->msg:[B

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 11

    .line 135
    const-string v0, "publickey.max.verify"

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->msg:[B

    invoke-direct {v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v4

    .line 140
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 147
    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v3, v3, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-interface {v3}, Lcom/sshtools/common/sshd/AbstractServerTransport;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    invoke-interface {v3}, Lcom/sshtools/common/ssh/Context;->getComponentManager()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v6}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V

    .line 150
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "Unsupported public key algorithm"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    :cond_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 156
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7

    if-eqz v10, :cond_5

    .line 164
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v0

    .line 166
    iget-object v5, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v8, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 167
    invoke-interface {v3}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-static/range {v5 .. v10}, Lcom/sshtools/common/auth/PublicKeyAuthentication;->-$$Nest$mlookupAuthorizedKey(Lcom/sshtools/common/auth/PublicKeyAuthentication;Ljava/lang/String;[BLcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 179
    new-instance v5, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v5}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    :try_start_2
    iget-object v8, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v8, v8, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-interface {v8}, Lcom/sshtools/common/sshd/AbstractServerTransport;->getSessionKey()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    const/16 v8, 0x32

    .line 183
    invoke-virtual {v5, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 184
    iget-object v8, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->username:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 185
    const-string v8, "ssh-connection"

    invoke-virtual {v5, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 186
    const-string v8, "publickey"

    invoke-virtual {v5, v8}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v5, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 188
    invoke-virtual {v5, v6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v5, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 191
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v4

    .line 193
    iget-object v6, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v6, v6, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-interface {v6}, Lcom/sshtools/common/sshd/AbstractServerTransport;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v6

    const-class v7, Lcom/sshtools/common/auth/PublicKeyAuthenticationVerifier;

    invoke-interface {v6, v7}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/common/auth/PublicKeyAuthenticationVerifier;

    .line 195
    invoke-interface {v6, v3, v0, v4}, Lcom/sshtools/common/auth/PublicKeyAuthenticationVerifier;->verifySignature(Lcom/sshtools/common/ssh/components/SshPublicKey;[B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->completedAuthentication()V

    goto :goto_1

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 204
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 201
    :try_start_4
    const-string v3, "Received SSH exception"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 202
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 204
    :goto_2
    :try_start_5
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 205
    throw v0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication()V

    goto/16 :goto_4

    .line 212
    :cond_5
    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v3, v0}, Lcom/sshtools/common/ssh/SshConnection;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_6

    .line 215
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 217
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 219
    :goto_3
    iget-object v5, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v5, v0, v3}, Lcom/sshtools/common/ssh/SshConnection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v3, v3, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-interface {v3}, Lcom/sshtools/common/sshd/AbstractServerTransport;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v5, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-interface {v3, v5}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/policy/AuthenticationPolicy;->getMaximumPublicKeyVerificationAttempts()I

    move-result v3

    if-le v0, v3, :cond_7

    .line 222
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    const-string v3, "Too many publickey verification attempts were made."

    const/16 v4, 0xe

    .line 223
    invoke-interface {v0, v4, v3}, Lcom/sshtools/common/sshd/AbstractServerTransport;->disconnect(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 270
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 233
    :cond_7
    :try_start_6
    iget-object v5, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v8, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 234
    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v9

    .line 233
    invoke-static/range {v5 .. v10}, Lcom/sshtools/common/auth/PublicKeyAuthentication;->-$$Nest$mlookupAuthorizedKey(Lcom/sshtools/common/auth/PublicKeyAuthentication;Ljava/lang/String;[BLcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;Z)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 236
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    invoke-interface {v0}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->discardAuthentication()V

    .line 241
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    new-instance v3, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;

    invoke-direct {v3, p0, v6, v7}, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask$1;-><init>(Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;Ljava/lang/String;[B)V

    invoke-interface {v0, v3}, Lcom/sshtools/common/sshd/AbstractServerTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V

    goto :goto_4

    .line 258
    :cond_8
    iget-object v0, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v0, v0, Lcom/sshtools/common/auth/PublicKeyAuthentication;->authentication:Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;

    iget-object v3, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v3, v3, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    .line 259
    invoke-interface {v3}, Lcom/sshtools/common/sshd/AbstractServerTransport;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v3

    const-class v5, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-interface {v3, v5}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/policy/AuthenticationPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/policy/AuthenticationPolicy;->isPublicKeyVerificationFailedAuth()Z

    move-result v3

    xor-int/2addr v3, v4

    .line 258
    invoke-interface {v0, v2, v3}, Lcom/sshtools/common/auth/AbstractAuthenticationProtocol;->failedAuthentication(ZZ)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 270
    :goto_4
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 265
    :try_start_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 266
    const-string v3, "Failed to authenticate public key"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 268
    :cond_9
    iget-object v2, p0, Lcom/sshtools/common/auth/PublicKeyAuthentication$PublicKeyAuthenticationTask;->this$0:Lcom/sshtools/common/auth/PublicKeyAuthentication;

    iget-object v2, v2, Lcom/sshtools/common/auth/PublicKeyAuthentication;->transport:Lcom/sshtools/common/sshd/AbstractServerTransport;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0}, Lcom/sshtools/common/sshd/AbstractServerTransport;->disconnect(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 270
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_5
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 271
    throw v0
.end method

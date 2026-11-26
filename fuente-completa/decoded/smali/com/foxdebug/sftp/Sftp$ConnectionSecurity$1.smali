.class Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Lcom/sshtools/common/knownhosts/HostKeyVerification;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->configure(Lcom/sshtools/client/SshClientContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyHost(Ljava/lang/String;Lcom/sshtools/common/ssh/components/SshPublicKey;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 155
    :try_start_0
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p2

    const/4 v1, 0x2

    .line 157
    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$fgethostname(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$fgetport(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    iget-object v2, v2, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/foxdebug/sftp/SftpSecurityStore;->getKnownHost(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 164
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    iget-object v2, v2, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->this$0:Lcom/foxdebug/sftp/Sftp;

    .line 165
    invoke-static {v2, v1, v0, p1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mconfirmUnknownHost(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    iget-object v2, v2, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/foxdebug/sftp/SftpSecurityStore;->trustHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 175
    :cond_0
    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    const-string v0, "HOST_KEY_REJECTED"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smhostKeyFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$fputfailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lorg/json/JSONObject;)V

    return v3

    .line 184
    :cond_1
    const-string v0, "fingerprint"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    const-string v5, "publicKey"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 188
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 190
    :cond_3
    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    const-string v2, "HOST_KEY_CHANGED"

    invoke-static {v2, v1, p1, v0}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$smhostKeyFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$fputfailure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lorg/json/JSONObject;)V

    .line 196
    iget-object p2, p0, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity$1;->this$1:Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    iget-object p2, p2, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {p2, v1, v0, p1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mshowChangedHostKey(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_4
    return v4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 201
    :goto_0
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-eqz p2, :cond_5

    .line 202
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 204
    :cond_5
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Could not verify the SSH host key"

    const v1, 0xf000

    invoke-direct {p2, v0, v1, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p2
.end method

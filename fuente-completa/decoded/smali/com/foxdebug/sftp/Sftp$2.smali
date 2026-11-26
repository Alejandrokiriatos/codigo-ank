.class Lcom/foxdebug/sftp/Sftp$2;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->openShellUsingProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sftp/Sftp;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$2;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$2;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 687
    invoke-static {p0, p1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$mconfigure(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lcom/sshtools/client/SshClientContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$2;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 677
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$2;->val$args:Lorg/json/JSONArray;

    const/16 v3, 0x50

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONArray;->optInt(II)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 678
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$2;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x2

    const/16 v6, 0x18

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 679
    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$2;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/foxdebug/sftp/SftpSecurityStore;->getProfile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 680
    new-instance v4, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$2;->this$0:Lcom/foxdebug/sftp/Sftp;

    const-string v6, "hostname"

    .line 681
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "port"

    const/16 v8, 0x16

    .line 682
    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v4, v5, v6, v7, v0}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;-><init>(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;ILcom/foxdebug/sftp/Sftp-IA;)V
    :try_end_0
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 685
    :try_start_1
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$2;->this$0:Lcom/foxdebug/sftp/Sftp;

    .line 686
    invoke-static {v0, v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mbuildProfileBuilder(Lcom/foxdebug/sftp/Sftp;Lorg/json/JSONObject;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v1

    .line 687
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/foxdebug/sftp/Sftp$2$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/foxdebug/sftp/Sftp$2$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;)V

    invoke-virtual {v1, v5}, Lcom/sshtools/client/SshClient$SshClientBuilder;->onConfigure(Lcom/sshtools/client/SshClient$OnConfiguration;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object v1

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    .line 685
    invoke-static {v0, v1, v2, v3, v5}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mopenRemoteShell(Lcom/foxdebug/sftp/Sftp;Lcom/sshtools/client/SshClient;IILorg/apache/cordova/CallbackContext;)V
    :try_end_1
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_0
    if-eqz v4, :cond_0

    .line 696
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-static {v4, v1}, Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;->-$$Nest$mreport(Lcom/foxdebug/sftp/Sftp$ConnectionSecurity;Lorg/apache/cordova/CallbackContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to open SSH shell: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$2;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v3, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 698
    const-string v1, "SFTP"

    const-string v2, "Failed to open SSH shell from profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 694
    :catch_2
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Invalid passphrase for stored key"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

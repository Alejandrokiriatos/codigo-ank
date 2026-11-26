.class Lcom/foxdebug/sftp/Sftp$13;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->rm(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1467
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$13;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$13;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$13;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1470
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$13;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1471
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$13;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v2

    .line 1472
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$13;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v1

    .line 1474
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$13;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$13;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1475
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$13;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;ZZ)V

    .line 1476
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$13;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$13;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Not connected"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1481
    :goto_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$13;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$13;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

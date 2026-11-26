.class Lcom/foxdebug/sftp/Sftp$3;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->saveProfile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 709
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$3;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 712
    const-string v0, "password"

    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 714
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Legacy profile import cannot replace a saved profile"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 717
    :cond_0
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 719
    const-string v4, "hostname"

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 720
    const-string v4, "port"

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/16 v6, 0x16

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONArray;->optInt(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 721
    const-string v4, "username"

    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 722
    const-string v4, "authType"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 723
    const-string v4, "key"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    const-string v0, "privateKey"

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$3;->this$0:Lcom/foxdebug/sftp/Sftp;

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x6

    .line 726
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$mreadUri(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 728
    const-string v0, "passphrase"

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 730
    :cond_1
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$3;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 732
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$3;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v2}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsecurityStore(Lcom/foxdebug/sftp/Sftp;)Lcom/foxdebug/sftp/SftpSecurityStore;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/foxdebug/sftp/SftpSecurityStore;->saveProfile(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 734
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not securely save SFTP profile: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$3;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v3, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 735
    const-string v1, "SFTP"

    const-string v2, "Could not save SFTP profile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

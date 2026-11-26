.class Lcom/foxdebug/sftp/Sftp$7;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->exec(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1125
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$7;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$7;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1128
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$7;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1129
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$7;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1131
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1132
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$7;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/sshtools/client/SshClient;->executeCommandWithResult(Ljava/lang/String;Ljava/lang/StringBuffer;)I

    move-result v0

    .line 1133
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1134
    const-string v3, "code"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1135
    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1136
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Not connected"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1141
    :goto_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$7;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

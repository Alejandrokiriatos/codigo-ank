.class Lcom/foxdebug/sftp/Sftp$9;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->putFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1206
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$9;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Error uploading file: "

    const-string v1, "Invalid local URI: "

    .line 1209
    :try_start_0
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$9;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 1210
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$9;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 1212
    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v2, :cond_6

    .line 1217
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v3, :cond_5

    .line 1222
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_2

    goto :goto_1

    .line 1229
    :cond_2
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1230
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1236
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v1, :cond_3

    goto :goto_0

    .line 1242
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v2, "File uploaded successfully"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1245
    :try_start_4
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v0, v1}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 1237
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Local file does not exist or is not readable"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 1232
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v1, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 1223
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Local filename is required"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1218
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Remote filename is required"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1213
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Not connected"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 1248
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$9;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

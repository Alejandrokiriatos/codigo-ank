.class Lcom/foxdebug/ftp/Ftp$6;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->deleteDirectory(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/ftp/Ftp;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/ftp/Ftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 435
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$6;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$6;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Deleting directory "

    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$6;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 439
    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$6;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_3

    .line 446
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 451
    :cond_1
    iget-object v3, p0, Lcom/foxdebug/ftp/Ftp$6;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v3, v3, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v1, :cond_2

    .line 453
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 457
    :cond_2
    const-string v3, "FTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$6;->this$0:Lcom/foxdebug/ftp/Ftp;

    invoke-static {v0, v2, v1}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$memptyDirectory(Lcom/foxdebug/ftp/Ftp;Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClient;)V

    .line 461
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 447
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 442
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 467
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 465
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    .line 463
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

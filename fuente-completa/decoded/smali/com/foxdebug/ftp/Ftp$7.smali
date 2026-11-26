.class Lcom/foxdebug/ftp/Ftp$7;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->rename(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 478
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$7;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$7;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "Renaming "

    .line 481
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$7;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    iget-object v3, p0, Lcom/foxdebug/ftp/Ftp$7;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 483
    iget-object v4, p0, Lcom/foxdebug/ftp/Ftp$7;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_b

    .line 485
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v3, :cond_a

    .line 490
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v4, :cond_9

    .line 495
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_3

    .line 500
    :cond_2
    iget-object v5, p0, Lcom/foxdebug/ftp/Ftp$7;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v5, v5, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v1, :cond_3

    .line 503
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 508
    :cond_3
    invoke-static {v3}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$smgetParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 509
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v6

    .line 511
    const-string v7, "FTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " to "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 515
    invoke-virtual {v1, v4}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 516
    array-length v0, v0

    if-lez v0, :cond_4

    .line 517
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_2

    .line 520
    :cond_4
    invoke-virtual {v1, v5}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    .line 524
    array-length v4, v0

    move v7, v2

    :goto_0
    if-ge v7, v4, :cond_6

    aget-object v8, v0, v7

    .line 526
    array-length v9, v6

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_7

    aget-object v11, v6, v10

    .line 527
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :cond_7
    if-eqz v8, :cond_8

    .line 539
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->this$0:Lcom/foxdebug/ftp/Ftp;

    .line 541
    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v0, v5, v2}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$mjoinPath(Lcom/foxdebug/ftp/Ftp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-virtual {v1, v0, v3}, Lorg/apache/commons/net/ftp/FTPClient;->rename(Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    :cond_8
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Failed to rename file"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 548
    :goto_2
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 496
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "New path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 491
    :cond_a
    :goto_4
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Old path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 486
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 554
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 552
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 550
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

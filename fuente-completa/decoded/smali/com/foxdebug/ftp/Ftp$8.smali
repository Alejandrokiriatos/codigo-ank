.class Lcom/foxdebug/ftp/Ftp$8;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->downloadFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 565
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$8;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$8;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "FTPClient ("

    .line 568
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$8;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 569
    iget-object v3, p0, Lcom/foxdebug/ftp/Ftp$8;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 570
    iget-object v4, p0, Lcom/foxdebug/ftp/Ftp$8;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_c

    .line 572
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v3, :cond_b

    .line 577
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v4, :cond_a

    .line 582
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    .line 587
    :cond_2
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 588
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 589
    iget-object v6, p0, Lcom/foxdebug/ftp/Ftp$8;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v6, v6, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v6, :cond_3

    .line 592
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 596
    :cond_3
    invoke-virtual {v6, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 599
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 600
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 604
    :cond_4
    invoke-virtual {v6, v3}, Lorg/apache/commons/net/ftp/FTPClient;->retrieveFileStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_5

    .line 607
    :try_start_1
    const-string v2, "FTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_d

    .line 624
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 616
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v1, 0x400

    .line 618
    :try_start_4
    new-array v1, v1, [B

    .line 620
    :goto_0
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    .line 621
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 623
    :cond_6
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_7

    .line 624
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 626
    :cond_7
    invoke-virtual {v6}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-nez v0, :cond_8

    .line 627
    invoke-virtual {v6}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 628
    invoke-virtual {v6}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 629
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File transfer failed."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 633
    :cond_8
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catchall_0
    move-exception v1

    .line 615
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v5, :cond_9

    .line 603
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_2
    throw v0

    .line 583
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Local file is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 578
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 573
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 641
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 639
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 637
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v0

    .line 635
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$8;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

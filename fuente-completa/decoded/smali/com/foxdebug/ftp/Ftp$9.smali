.class Lcom/foxdebug/ftp/Ftp$9;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->uploadFile(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 652
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$9;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$9;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 655
    const-string v0, "FTPUpload"

    .line 0
    const-string v1, "Destination "

    const-string v2, "uploadFile: "

    .line 655
    :try_start_0
    iget-object v3, p0, Lcom/foxdebug/ftp/Ftp$9;->val$args:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 656
    iget-object v5, p0, Lcom/foxdebug/ftp/Ftp$9;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 657
    iget-object v6, p0, Lcom/foxdebug/ftp/Ftp$9;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_c

    .line 659
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz v6, :cond_b

    .line 664
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v5, :cond_a

    .line 669
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_3

    .line 674
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 676
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 677
    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$9;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v2, v2, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v2, :cond_3

    .line 680
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 684
    :cond_3
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/apache/commons/net/ftp/FTPClient;->storeFileStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v1, :cond_5

    .line 693
    :try_start_2
    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v3, "File not found."

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 702
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :cond_5
    const/16 v3, 0x400

    .line 697
    :try_start_5
    new-array v3, v3, [B

    .line 699
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 700
    invoke-virtual {v1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 702
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 704
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->completePendingCommand()Z

    move-result v0

    if-nez v0, :cond_8

    .line 705
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z

    .line 706
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 707
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File transfer failed."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 711
    :cond_8
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-void

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_9

    .line 688
    :try_start_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_9
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_1
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    .line 670
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Local file is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 665
    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 660
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 719
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    .line 717
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v0

    .line 715
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v0

    .line 713
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

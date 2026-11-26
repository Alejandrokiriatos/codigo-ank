.class Lcom/foxdebug/sftp/Sftp$11;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->stat(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1361
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$11;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$11;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1364
    const-string v0, "url"

    const-string v1, "exists"

    const-string v2, "isFile"

    const-string v3, "isDirectory"

    const-string v4, "isLink"

    :try_start_0
    iget-object v5, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    iget-object v6, p0, Lcom/foxdebug/sftp/Sftp$11;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$msanitizePath(Lcom/foxdebug/sftp/Sftp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1365
    iget-object v6, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v6}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v6}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1366
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1367
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1370
    :try_start_1
    iget-object v8, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v8}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1372
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 1373
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x72

    if-ne v11, v12, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    move v11, v7

    :goto_0
    const/4 v12, 0x2

    .line 1374
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x77

    if-ne v12, v13, :cond_1

    move v12, v10

    goto :goto_1

    :cond_1
    move v12, v7

    .line 1376
    :goto_1
    invoke-virtual {v5, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1377
    const-string v13, "canRead"

    invoke-virtual {v5, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1378
    const-string v11, "canWrite"

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1379
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v11

    invoke-virtual {v5, v4, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1380
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v11

    invoke-virtual {v5, v3, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1381
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v11

    invoke-virtual {v5, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1382
    const-string v11, "length"

    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1383
    const-string v11, "permissions"

    .line 1385
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v12

    .line 1383
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1387
    const-string v11, "lastModified"

    .line 1389
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v12

    .line 1387
    invoke-virtual {v5, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1391
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1392
    array-length v12, v11

    sub-int/2addr v12, v10

    aget-object v11, v11, v12

    .line 1394
    const-string v12, "name"

    invoke-virtual {v5, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1395
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1396
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v11, 0x6c

    if-ne v9, v11, :cond_2

    .line 1397
    invoke-virtual {v5, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1399
    :try_start_2
    iget-object v8, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v8}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v8

    .line 1400
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1399
    invoke-virtual {v8, v9}, Lcom/sshtools/client/sftp/SftpClient;->getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1402
    const-string v9, "linkTarget"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1403
    iget-object v9, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v9}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v8

    .line 1406
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v9

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1409
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v8

    .line 1407
    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 1413
    :catch_0
    :try_start_3
    invoke-virtual {v5, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1414
    invoke-virtual {v5, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1415
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1416
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_2

    .line 1419
    :cond_2
    invoke-virtual {v5, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1420
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1421
    invoke-virtual {v8}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 1425
    :catch_1
    :try_start_4
    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1426
    invoke-virtual {v6}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1429
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$11;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v5}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_4

    .line 1432
    :cond_4
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$11;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Not connected"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    .line 1434
    :goto_3
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$11;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$11;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

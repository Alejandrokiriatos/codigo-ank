.class Lcom/foxdebug/sftp/Sftp$10;
.super Ljava/lang/Object;
.source "Sftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sftp/Sftp;->lsDir(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1259
    iput-object p1, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    iput-object p2, p0, Lcom/foxdebug/sftp/Sftp$10;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/sftp/Sftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v0, 0x0

    .line 1263
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$10;->val$args:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 1264
    iget-object v3, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v3}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetconnectionLock(Lcom/foxdebug/sftp/Sftp;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1265
    :try_start_1
    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetsftp(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v0

    .line 1266
    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v4}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$fgetssh(Lcom/foxdebug/sftp/Sftp;)Lcom/sshtools/client/SshClient;

    move-result-object v4

    .line 1268
    invoke-virtual {v4}, Lcom/sshtools/client/SshClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    .line 1270
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_5

    .line 1275
    :cond_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1276
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v1

    array-length v5, v1

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v1, v6

    .line 1277
    invoke-virtual {v7}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v8

    .line 1278
    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    const-string v9, ".."

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto/16 :goto_4

    .line 1281
    :cond_1
    invoke-virtual {v7}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v9

    .line 1282
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1283
    const-string v11, "name"

    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1284
    const-string v8, "exists"

    const/4 v11, 0x1

    invoke-virtual {v10, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v9, :cond_5

    .line 1287
    invoke-virtual {v9}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toPermissionsString()Ljava/lang/String;

    move-result-object v8

    .line 1288
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x72

    if-ne v12, v13, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    move v12, v2

    :goto_1
    const/4 v13, 0x2

    .line 1289
    invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x77

    if-ne v13, v14, :cond_3

    move v13, v11

    goto :goto_2

    :cond_3
    move v13, v2

    .line 1290
    :goto_2
    const-string v14, "canRead"

    invoke-virtual {v10, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1291
    const-string v12, "canWrite"

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1292
    const-string v12, "permissions"

    invoke-virtual {v10, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1293
    const-string v12, "length"

    invoke-virtual {v9}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1294
    const-string v12, "url"

    invoke-virtual {v7}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1295
    const-string v12, "lastModified"

    .line 1297
    invoke-virtual {v9}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v13

    .line 1295
    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1300
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v12, 0x6c

    if-ne v8, v12, :cond_4

    .line 1301
    const-string v8, "isLink"

    invoke-virtual {v10, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    :try_start_2
    invoke-virtual {v7}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1303
    invoke-virtual {v0, v7}, Lcom/sshtools/client/sftp/SftpClient;->getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1306
    const-string v8, "linkTarget"

    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1307
    invoke-virtual {v0, v7}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v7

    .line 1310
    const-string v8, "isFile"

    invoke-virtual {v7}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v9

    invoke-virtual {v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1311
    const-string v8, "isDirectory"

    .line 1313
    invoke-virtual {v7}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v7

    .line 1311
    invoke-virtual {v10, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 1317
    :catch_0
    :try_start_3
    const-string v7, "isFile"

    invoke-virtual {v10, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1318
    const-string v7, "isDirectory"

    invoke-virtual {v10, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1319
    const-string v7, "isLink"

    invoke-virtual {v10, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_3

    .line 1322
    :cond_4
    const-string v7, "isLink"

    invoke-virtual {v10, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1323
    const-string v7, "isDirectory"

    invoke-virtual {v9}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1324
    const-string v7, "isFile"

    invoke-virtual {v9}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v8

    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1328
    :cond_5
    :goto_3
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 1330
    :cond_7
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v4}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 1331
    monitor-exit v3

    goto :goto_8

    .line 1272
    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v2, "Not connected"

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 1273
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v1

    .line 1332
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    .line 1336
    :goto_6
    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-static {v2, v0, v1}, Lcom/foxdebug/sftp/Sftp;->-$$Nest$minvalidateSftpConnection(Lcom/foxdebug/sftp/Sftp;Lcom/sshtools/client/sftp/SftpClient;Ljava/lang/Exception;)V

    .line 1337
    iget-object v0, p0, Lcom/foxdebug/sftp/Sftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "SFTP connection was interrupted. Reconnect and try again."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 1334
    :goto_7
    iget-object v1, p0, Lcom/foxdebug/sftp/Sftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/sftp/Sftp$10;->this$0:Lcom/foxdebug/sftp/Sftp;

    invoke-virtual {v2, v0}, Lcom/foxdebug/sftp/Sftp;->errMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

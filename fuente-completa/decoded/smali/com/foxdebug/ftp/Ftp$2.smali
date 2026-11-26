.class Lcom/foxdebug/ftp/Ftp$2;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->listDirectory(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 209
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$2;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$2;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v1, p0

    .line 212
    const-string v0, "url"

    const-string v2, "FTP"

    .line 0
    const-string v3, "FTPClient ("

    .line 212
    :try_start_0
    iget-object v4, v1, Lcom/foxdebug/ftp/Ftp$2;->val$args:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 213
    iget-object v6, v1, Lcom/foxdebug/ftp/Ftp$2;->val$args:Lorg/json/JSONArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_a

    .line 215
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v8, :cond_0

    goto/16 :goto_7

    .line 220
    :cond_0
    const-string v8, "/"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move-object v6, v8

    .line 224
    :cond_2
    iget-object v9, v1, Lcom/foxdebug/ftp/Ftp$2;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v9, v9, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v9, :cond_3

    .line 226
    iget-object v0, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v2, "FTP client not found."

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 230
    :cond_3
    invoke-virtual {v9, v6}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v10

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") Listing files in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 242
    array-length v3, v10

    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v11, v10, v4

    .line 243
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v12

    .line 244
    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    const-string v13, ".."

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto/16 :goto_5

    .line 248
    :cond_4
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 249
    const-string v14, "name"

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v14, "length"

    move-object/from16 v16, v8

    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v7

    invoke-virtual {v13, v14, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 251
    iget-object v7, v1, Lcom/foxdebug/ftp/Ftp$2;->this$0:Lcom/foxdebug/ftp/Ftp;

    invoke-static {v7, v6, v12}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$mjoinPath(Lcom/foxdebug/ftp/Ftp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->isSymbolicLink()Z

    move-result v7
    :try_end_1
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v8, "link"

    const-string v12, "isLink"

    const-string v14, "isFile"

    const-string v15, "isDirectory"

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    .line 254
    :try_start_2
    invoke-virtual {v13, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 255
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v7

    .line 256
    invoke-virtual {v13, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v8, v16

    .line 257
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_1

    .line 259
    :cond_5
    iget-object v12, v1, Lcom/foxdebug/ftp/Ftp$2;->this$0:Lcom/foxdebug/ftp/Ftp;

    invoke-static {v12, v6, v7}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$mjoinPath(Lcom/foxdebug/ftp/Ftp;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 261
    :goto_1
    :try_start_3
    invoke-virtual {v9, v7}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move/from16 v16, v5

    .line 262
    :try_start_4
    array-length v5, v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    if-lez v5, :cond_6

    .line 263
    :try_start_5
    aget-object v5, v12, v16

    .line 264
    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v12

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {v5}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    invoke-virtual {v13, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 266
    invoke-virtual {v13, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_0
    move/from16 v5, v16

    goto :goto_2

    :cond_6
    move/from16 v5, v16

    .line 268
    :try_start_6
    invoke-virtual {v13, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 269
    invoke-virtual {v13, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_1
    const/4 v5, 0x0

    .line 273
    :catch_2
    :goto_2
    :try_start_7
    invoke-virtual {v13, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 274
    invoke-virtual {v13, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :goto_3
    move-object v5, v8

    goto :goto_4

    :cond_7
    move v7, v5

    move-object/from16 v5, v16

    .line 277
    invoke-virtual {v13, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 278
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v7

    invoke-virtual {v13, v15, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 279
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v7

    invoke-virtual {v13, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v7, 0x0

    .line 280
    invoke-virtual {v13, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    :goto_4
    const-string v7, "lastModified"

    .line 285
    invoke-virtual {v11}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 283
    invoke-virtual {v13, v7, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 287
    const-string v7, "canWrite"

    const/4 v8, 0x0

    const/4 v15, 0x1

    .line 289
    invoke-virtual {v11, v8, v15}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v12

    .line 287
    invoke-virtual {v13, v7, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 294
    const-string v7, "canRead"

    .line 296
    invoke-virtual {v11, v8, v8}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v11

    .line 294
    invoke-virtual {v13, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 301
    invoke-virtual {v2, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    :cond_8
    :goto_5
    move-object v15, v8

    move v8, v5

    move-object v5, v15

    move v15, v7

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move v7, v8

    move-object v8, v5

    move v5, v7

    move v7, v15

    goto/16 :goto_0

    .line 303
    :cond_9
    iget-object v0, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto :goto_8

    .line 216
    :cond_a
    :goto_7
    iget-object v0, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v2, "FTP ID is required."

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    return-void

    :catch_3
    move-exception v0

    .line 311
    iget-object v2, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    :catch_4
    move-exception v0

    .line 309
    iget-object v2, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    :catch_5
    move-exception v0

    .line 307
    iget-object v2, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_8

    :catch_6
    move-exception v0

    .line 305
    iget-object v2, v1, Lcom/foxdebug/ftp/Ftp$2;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_8
    return-void
.end method

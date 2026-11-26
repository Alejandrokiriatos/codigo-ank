.class Lcom/foxdebug/ftp/Ftp$1;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->connect(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/ftp/Ftp;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$isRetry:Z


# direct methods
.method constructor <init>(Lcom/foxdebug/ftp/Ftp;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
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

    .line 89
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    iput-boolean p4, p0, Lcom/foxdebug/ftp/Ftp$1;->val$isRetry:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 92
    const-string v0, "UTF-8"

    const-string v1, ")"

    const-string v2, "FTP"

    .line 0
    const-string v3, "FTPClient ("

    const-string v4, "Creating new FTPClient ("

    .line 92
    iget-object v5, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    .line 93
    iget-object v7, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    iget-object v8, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    iget-object v9, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    iget-object v10, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 97
    iget-object v10, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 98
    iget-object v10, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 99
    iget-object v11, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 100
    iget-object v11, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 101
    iget-object v11, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    invoke-static {v11, v7, v5, v8}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$mgetFtpId(Lcom/foxdebug/ftp/Ftp;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 105
    :try_start_0
    iget-object v13, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v13, v13, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 106
    iget-object v4, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v4, v4, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/net/ftp/FTPClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 107
    :try_start_1
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v12

    .line 108
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v12}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 109
    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPClient;->setControlEncoding(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4, v6}, Lorg/apache/commons/net/ftp/FTPClient;->setAutodetectUTF8(Z)V

    .line 111
    const-string v5, "ftp.client.encoding"

    invoke-static {v5, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->sendNoOp()Z

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") is connected"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v11}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ") is not connected"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v4}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ") disconnecting..."

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v4

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v12, v4

    goto/16 :goto_3

    .line 122
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 124
    :try_start_3
    iget-object v4, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v4, v4, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v12, v0

    .line 127
    :goto_0
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") connecting..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v12, v7, v5}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    const-wide/16 v4, 0x12c

    .line 129
    invoke-virtual {v12, v4, v5}, Lorg/apache/commons/net/ftp/FTPClient;->setControlKeepAliveTimeout(J)V

    .line 130
    const-string v0, "active"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "Entering Local Active mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalActiveMode()V

    goto :goto_1

    .line 134
    :cond_2
    const-string v0, "Entering Passive Active mode"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 138
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") logging in..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v12, v8, v9}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v0

    .line 142
    invoke-static {v0}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    invoke-virtual {v12}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") server refused connection."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v4, "FTP server refused connection."

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_3
    invoke-virtual {v12, v6}, Lorg/apache/commons/net/ftp/FTPClient;->setListHiddenFiles(Z)V

    .line 153
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v0, v0, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") connected"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v11}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_2
    move-exception v4

    move-object v12, v0

    move-object v0, v4

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v12, v0

    move-object v0, v4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 169
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v12, :cond_4

    .line 172
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v1, v1, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_4
    iget-boolean v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$isRetry:Z

    if-nez v1, :cond_5

    .line 176
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2, v6}, Lcom/foxdebug/ftp/Ftp;->connect(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V

    return-void

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v0

    .line 157
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v12, :cond_6

    .line 159
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v1, v1, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_6
    iget-boolean v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$isRetry:Z

    if-nez v1, :cond_7

    .line 163
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$1;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$args:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1, v2, v6}, Lcom/foxdebug/ftp/Ftp;->connect(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Z)V

    return-void

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$1;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

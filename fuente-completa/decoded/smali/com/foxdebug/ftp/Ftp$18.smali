.class Lcom/foxdebug/ftp/Ftp$18;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->getStat(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 996
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$18;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$18;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 999
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 1000
    iget-object v2, p0, Lcom/foxdebug/ftp/Ftp$18;->val$args:Lorg/json/JSONArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_6

    .line 1002
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz v2, :cond_5

    .line 1007
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    .line 1012
    :cond_1
    iget-object v4, p0, Lcom/foxdebug/ftp/Ftp$18;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v4, v4, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1018
    :cond_2
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1019
    array-length v2, v0

    if-nez v2, :cond_3

    goto/16 :goto_0

    .line 1024
    :cond_3
    aget-object v0, v0, v1

    .line 1025
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1026
    const-string v4, "isFile"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isFile()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1027
    const-string v4, "isValid"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isValid()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1028
    const-string v4, "isUnknown"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isUnknown()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1029
    const-string v4, "isDirectory"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1030
    const-string v4, "isLink"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->isSymbolicLink()Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1031
    const-string v4, "linkCount"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getHardLinkCount()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1032
    const-string v4, "length"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1033
    const-string v4, "name"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/foxdebug/ftp/Ftp;->-$$Nest$smgetBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1034
    const-string v4, "lastModified"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getTimestamp()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1035
    const-string v4, "link"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1036
    const-string v4, "group"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getGroup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1037
    const-string v4, "user"

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPFile;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1038
    const-string v4, "canWrite"

    .line 1040
    invoke-virtual {v0, v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v3

    .line 1038
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1045
    const-string v3, "canRead"

    .line 1047
    invoke-virtual {v0, v1, v1}, Lorg/apache/commons/net/ftp/FTPFile;->hasPermission(II)Z

    move-result v0

    .line 1045
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1050
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    return-void

    .line 1020
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "Path is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1003
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/commons/net/ftp/parser/ParserInitializationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/commons/net/ftp/FTPConnectionClosedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1058
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1056
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1054
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPConnectionClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1052
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$18;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.class Lcom/foxdebug/ftp/Ftp$10;
.super Ljava/lang/Object;
.source "Ftp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/ftp/Ftp;->getKeepAlive(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
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

    .line 730
    iput-object p1, p0, Lcom/foxdebug/ftp/Ftp$10;->this$0:Lcom/foxdebug/ftp/Ftp;

    iput-object p2, p0, Lcom/foxdebug/ftp/Ftp$10;->val$args:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/foxdebug/ftp/Ftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$10;->val$args:Lorg/json/JSONArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 735
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$10;->this$0:Lcom/foxdebug/ftp/Ftp;

    iget-object v1, v1, Lcom/foxdebug/ftp/Ftp;->ftpProfiles:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/ftp/FTPClient;

    if-nez v0, :cond_1

    .line 742
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP client not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPClient;->getControlKeepAliveTimeout()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void

    .line 736
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/ftp/Ftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "FTP ID is required."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 748
    iget-object v1, p0, Lcom/foxdebug/ftp/Ftp$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/foxdebug/sdcard/SDcard$12;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->getStats(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

    .line 1046
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$12;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$12;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$12;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1048
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$12;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$12;->val$filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mformatUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$12;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v1, v0}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetFile(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 1053
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1054
    const-string v2, "exists"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->exists()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1055
    const-string v2, "canRead"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->canRead()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1056
    const-string v2, "canWrite"

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$12;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/foxdebug/sdcard/SDcard;->canWrite(Landroid/net/Uri;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1057
    const-string v2, "name"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    const-string v2, "length"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->length()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1059
    const-string v2, "type"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1060
    const-string v2, "isFile"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1061
    const-string v2, "isDirectory"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1062
    const-string v2, "isVirtual"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->isVirtual()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1063
    const-string v2, "lastModified"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1064
    const-string v2, "url"

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1066
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$12;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1068
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$12;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

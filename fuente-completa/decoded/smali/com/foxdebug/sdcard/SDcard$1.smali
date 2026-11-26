.class Lcom/foxdebug/sdcard/SDcard$1;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->watchFile(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$fileUri:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$listener:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
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

    .line 231
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$1;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$fileUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$listener:Lorg/apache/cordova/CallbackContext;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$fileUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$listener:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$1;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v0}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetSDK_INT(Lcom/foxdebug/sdcard/SDcard;)I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 244
    new-instance v0, Lcom/foxdebug/sdcard/MyFileObserver;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$listener:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v0, v1, v2}, Lcom/foxdebug/sdcard/MyFileObserver;-><init>(Ljava/io/File;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 246
    :cond_1
    new-instance v0, Lcom/foxdebug/sdcard/MyFileObserver;

    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$fileUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$listener:Lorg/apache/cordova/CallbackContext;

    invoke-direct {v0, v1, v2}, Lcom/foxdebug/sdcard/MyFileObserver;-><init>(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 249
    :goto_0
    invoke-virtual {v0}, Lcom/foxdebug/sdcard/MyFileObserver;->startObserving()V

    .line 250
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$1;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v1}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetfileObservers(Lcom/foxdebug/sdcard/SDcard;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$1;->val$id:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

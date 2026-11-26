.class Lcom/foxdebug/sdcard/SDcard$9;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->move(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$destId:Ljava/lang/String;

.field final synthetic val$rootUri:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$srcId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
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

    .line 817
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$9;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$rootUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$srcId:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$destId:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    iput-object p6, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$src:Ljava/lang/String;

    iput-object p7, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Unable to copy "

    .line 821
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$9;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$rootUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$srcId:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$destId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mcopy(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$src:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$contentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$9;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$rootUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$srcId:Ljava/lang/String;

    .line 826
    invoke-static {v2, v3, v4}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 824
    invoke-static {v0, v2}, Landroid/provider/DocumentsContract;->deleteDocument(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    .line 828
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$rootUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 833
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$9;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

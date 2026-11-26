.class Lcom/foxdebug/sdcard/SDcard$10;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->copy(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$destId:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;

.field final synthetic val$srcId:Ljava/lang/String;

.field final synthetic val$srcUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 849
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$10;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$srcUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$srcId:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$destId:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    iput-object p6, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$src:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Unable to copy "

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$10;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$srcUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$srcId:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$destId:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mcopy(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    .line 855
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$src:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$srcUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 858
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 857
    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 862
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$10;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

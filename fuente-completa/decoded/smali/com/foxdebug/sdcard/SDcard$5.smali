.class Lcom/foxdebug/sdcard/SDcard$5;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->writeFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$isArrayBuffer:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;)V
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

    .line 616
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$5;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$callback:Lorg/apache/cordova/CallbackContext;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$isArrayBuffer:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$5;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$filename:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetFile(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$5;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/foxdebug/sdcard/SDcard;->canWrite(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$context:Landroid/content/Context;

    .line 626
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 627
    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "rwt"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 629
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 631
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$isArrayBuffer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$content:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 634
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 636
    :cond_1
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 639
    :goto_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 640
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 641
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 642
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 644
    :cond_2
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No write permission"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 647
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$5;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

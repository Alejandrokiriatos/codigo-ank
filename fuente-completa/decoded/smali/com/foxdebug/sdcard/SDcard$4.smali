.class Lcom/foxdebug/sdcard/SDcard$4;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->writeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
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

    .line 566
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$4;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$encoding:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Charset not supported: "

    .line 569
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$4;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$filename:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mformatUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 570
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v2, v1}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetFile(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    if-nez v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found."

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/foxdebug/sdcard/SDcard;->canWrite(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 576
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$encoding:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    :cond_1
    const-string v2, "UTF-8"

    .line 580
    :cond_2
    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 581
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 584
    :cond_3
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 586
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$context:Landroid/content/Context;

    .line 587
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 588
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "rwt"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :try_start_1
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$content:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 590
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 591
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 592
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 586
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v0

    .line 595
    :cond_6
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "No write permission"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 598
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$4;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

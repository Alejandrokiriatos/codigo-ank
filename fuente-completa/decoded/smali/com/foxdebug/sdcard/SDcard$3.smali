.class Lcom/foxdebug/sdcard/SDcard$3;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->readAsText(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

    .line 513
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$3;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$encoding:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "Charset not supported: "

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$3;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$filename:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mformatUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 519
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$encoding:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 520
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    :cond_0
    const-string v2, "UTF-8"

    .line 523
    :cond_1
    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 524
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 527
    :cond_2
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 529
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$3;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v2}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetcontext(Lcom/foxdebug/sdcard/SDcard;)Landroid/content/Context;

    move-result-object v2

    .line 530
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 531
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_3

    .line 534
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    const-string v1, "File not found"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 538
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 539
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x2000

    .line 540
    :try_start_1
    new-array v0, v0, [C

    .line 542
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/4 v4, 0x0

    .line 543
    invoke-virtual {v2, v0, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 545
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 546
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v0

    .line 539
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 548
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$3;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

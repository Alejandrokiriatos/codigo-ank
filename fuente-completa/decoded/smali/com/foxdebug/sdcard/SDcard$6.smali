.class Lcom/foxdebug/sdcard/SDcard$6;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$parent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 681
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$6;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$parent:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 684
    const-string v0, "::"

    .line 0
    const-string v1, "Unable to create "

    const-string v2, "Uri: "

    .line 687
    :try_start_0
    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$parent:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$parent:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 689
    aget-object v4, v3, v4

    const/4 v5, 0x1

    .line 690
    aget-object v3, v3, v5

    .line 691
    iget-object v5, p0, Lcom/foxdebug/sdcard/SDcard$6;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v5, v4, v3}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 693
    :cond_0
    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$parent:Ljava/lang/String;

    .line 694
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 695
    invoke-static {v3}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 696
    invoke-static {v3, v5}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 702
    :goto_0
    iget-object v5, p0, Lcom/foxdebug/sdcard/SDcard$6;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v5}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetcontext(Lcom/foxdebug/sdcard/SDcard;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 703
    iget-object v6, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$mimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$name:Ljava/lang/String;

    invoke-static {v5, v3, v6, v7}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 709
    iget-object v5, p0, Lcom/foxdebug/sdcard/SDcard$6;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v5}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetcontext(Lcom/foxdebug/sdcard/SDcard;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    .line 713
    const-string v6, "SDcard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$name:Ljava/lang/String;

    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 715
    invoke-virtual {v5}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 718
    :cond_1
    invoke-static {v3}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_2

    .line 720
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$parent:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 725
    const-string v1, "CREATE_FILE"

    const-string v2, "Unable to create file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$6;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

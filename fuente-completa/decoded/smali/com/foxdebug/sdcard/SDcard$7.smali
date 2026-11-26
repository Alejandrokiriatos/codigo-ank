.class Lcom/foxdebug/sdcard/SDcard$7;
.super Ljava/lang/Object;
.source "SDcard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/sdcard/SDcard;->rename(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/sdcard/SDcard;

.field final synthetic val$callback:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$newFile:Ljava/lang/String;


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

    .line 741
    iput-object p1, p0, Lcom/foxdebug/sdcard/SDcard$7;->this$0:Lcom/foxdebug/sdcard/SDcard;

    iput-object p2, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$newFile:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Unable to rename: "

    .line 745
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$filename:Ljava/lang/String;

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$filename:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 747
    aget-object v3, v1, v3

    const/4 v4, 0x1

    .line 748
    aget-object v1, v1, v4

    .line 749
    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$7;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v4, v3, v1}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$mgetUri(Lcom/foxdebug/sdcard/SDcard;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 751
    :cond_0
    iget-object v3, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$filename:Ljava/lang/String;

    .line 752
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 756
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$7;->this$0:Lcom/foxdebug/sdcard/SDcard;

    invoke-static {v4}, Lcom/foxdebug/sdcard/SDcard;->-$$Nest$fgetcontext(Lcom/foxdebug/sdcard/SDcard;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 758
    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$newFile:Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$newFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    .line 762
    :cond_1
    iget-object v4, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$newFile:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroidx/documentfile/provider/DocumentFile;->renameTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 763
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    .line 764
    invoke-virtual {v1}, Landroidx/documentfile/provider/DocumentFile;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 765
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 769
    :cond_2
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$filename:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 771
    iget-object v1, p0, Lcom/foxdebug/sdcard/SDcard$7;->val$callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

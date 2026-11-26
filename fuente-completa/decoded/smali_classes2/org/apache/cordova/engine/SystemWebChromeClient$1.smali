.class Lorg/apache/cordova/engine/SystemWebChromeClient$1;
.super Lorg/apache/cordova/CordovaPlugin;
.source "SystemWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/engine/SystemWebChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/engine/SystemWebChromeClient;

.field final synthetic val$captureUri:Landroid/net/Uri;

.field final synthetic val$filePathsCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lorg/apache/cordova/engine/SystemWebChromeClient;Landroid/net/Uri;Landroid/webkit/ValueCallback;)V
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

    .line 280
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->this$0:Lorg/apache/cordova/engine/SystemWebChromeClient;

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$captureUri:Landroid/net/Uri;

    iput-object p3, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_4

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 288
    const-string v0, "SystemWebChromeClient"

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding file (single): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 291
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$captureUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 292
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Adding camera capture: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$captureUri:Landroid/net/Uri;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/apache/cordova/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object p3, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$captureUri:Landroid/net/Uri;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    .line 294
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 295
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    .line 296
    invoke-virtual {p3}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    move v2, p2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 298
    invoke-virtual {p3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Adding file (multiple): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/cordova/LOG;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 301
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 307
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Receive file chooser URL: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-array p2, p2, [Landroid/net/Uri;

    invoke-interface {p1, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 311
    :goto_2
    iget-object p2, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$1;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    return-void
.end method

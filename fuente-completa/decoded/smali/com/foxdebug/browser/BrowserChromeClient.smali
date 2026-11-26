.class Lcom/foxdebug/browser/BrowserChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "Browser.java"


# instance fields
.field browser:Lcom/foxdebug/browser/Browser;


# direct methods
.method public constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0

    .line 604
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 605
    iput-object p1, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    return-void
.end method


# virtual methods
.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 616
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    .line 617
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setFavicon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 610
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 611
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    iput-object p2, v0, Lcom/foxdebug/browser/Browser;->filePathCallback:Landroid/webkit/ValueCallback;

    .line 630
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 632
    array-length v0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 633
    aget-object p2, p2, v0

    if-eqz p2, :cond_1

    .line 634
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    const-string p2, "*/*"

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 640
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 647
    const-string p2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 650
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    const-string p2, "Select File"

    .line 651
    invoke-static {v0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/foxdebug/browser/BrowserChromeClient;->browser:Lcom/foxdebug/browser/Browser;

    iget v0, v0, Lcom/foxdebug/browser/Browser;->FILE_SELECT_CODE:I

    .line 650
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return p3
.end method

.class public Lcom/foxdebug/webview/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"


# instance fields
.field private webView:Landroid/webkit/WebView;

.field private webviewId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "webviewId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/webview/WebViewActivity;->webviewId:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance()Lcom/foxdebug/webview/WebViewPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 26
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webviewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewActivity;->finish()V

    return-void

    .line 32
    :cond_1
    invoke-virtual {p1, p0}, Lcom/foxdebug/webview/WebViewInstance;->createWebView(Landroid/app/Activity;)V

    .line 33
    invoke-virtual {p1}, Lcom/foxdebug/webview/WebViewInstance;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewActivity;->finish()V

    return-void

    .line 38
    :cond_2
    invoke-virtual {p1, p0}, Lcom/foxdebug/webview/WebViewInstance;->setHostingActivity(Lcom/foxdebug/webview/WebViewActivity;)V

    .line 40
    invoke-virtual {p1}, Lcom/foxdebug/webview/WebViewInstance;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 42
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 46
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_4
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->applySystemBarInsets(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewActivity;->setContentView(Landroid/view/View;)V

    .line 58
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    :cond_5
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    invoke-static {}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance()Lcom/foxdebug/webview/WebViewPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 77
    iget-object v2, p0, Lcom/foxdebug/webview/WebViewActivity;->webviewId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v0, v2}, Lcom/foxdebug/webview/WebViewPlugin;->getInstance(Ljava/lang/String;)Lcom/foxdebug/webview/WebViewInstance;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, p0}, Lcom/foxdebug/webview/WebViewInstance;->clearHostingActivity(Lcom/foxdebug/webview/WebViewActivity;)V

    .line 85
    invoke-virtual {v2}, Lcom/foxdebug/webview/WebViewInstance;->destroy()V

    .line 86
    iget-object v2, p0, Lcom/foxdebug/webview/WebViewActivity;->webviewId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/foxdebug/webview/WebViewPlugin;->removeInstance(Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/foxdebug/webview/WebViewActivity;->webviewId:Ljava/lang/String;

    const-string v3, "closed"

    invoke-virtual {v0, v2, v3, v1}, Lcom/foxdebug/webview/WebViewPlugin;->sendEventToCordova(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 91
    :cond_1
    iput-object v1, p0, Lcom/foxdebug/webview/WebViewActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

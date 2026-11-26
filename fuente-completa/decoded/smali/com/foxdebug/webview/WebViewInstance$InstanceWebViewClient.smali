.class Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "WebViewInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/webview/WebViewInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstanceWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;


# direct methods
.method private constructor <init>(Lcom/foxdebug/webview/WebViewInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/webview/WebViewInstance;Lcom/foxdebug/webview/WebViewInstance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    return-void
.end method

.method private shouldBlockNavigation(Landroid/net/Uri;)Z
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-boolean v0, v0, Lcom/foxdebug/webview/WebViewInstance;->allowNavigation:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 492
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 493
    const-string v0, "http"

    .line 494
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 506
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 507
    iget-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-virtual {p2, p1}, Lcom/foxdebug/webview/WebViewInstance;->onPageFinished(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 499
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 501
    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$sminjectBridge(Landroid/webkit/WebView;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 0

    .line 475
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;->shouldBlockNavigation(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 481
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;->shouldBlockNavigation(Landroid/net/Uri;)Z

    move-result p1

    return p1
.end method

.class Lcom/foxdebug/webview/WebViewInstance$9;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 433
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v2}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "AcodeWebViewNative"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 442
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 443
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 444
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$9;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0, v1}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fputwebView(Lcom/foxdebug/webview/WebViewInstance;Landroid/webkit/WebView;)V

    return-void
.end method

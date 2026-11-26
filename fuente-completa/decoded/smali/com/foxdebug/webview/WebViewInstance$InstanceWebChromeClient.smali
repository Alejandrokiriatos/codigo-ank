.class Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/webview/WebViewInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstanceWebChromeClient"
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

    .line 511
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/foxdebug/webview/WebViewInstance;Lcom/foxdebug/webview/WebViewInstance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 514
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 516
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 517
    const-string v0, "title"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    iget-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object p2, p2, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewInstance;->id:Ljava/lang/String;

    const-string v1, "titleChanged"

    invoke-virtual {p2, v0, v1, p1}, Lcom/foxdebug/webview/WebViewPlugin;->sendEventToCordova(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 520
    const-string p2, "WebViewInstance"

    const-string v0, "onReceivedTitle error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

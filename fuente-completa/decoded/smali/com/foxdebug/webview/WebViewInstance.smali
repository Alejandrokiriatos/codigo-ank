.class public Lcom/foxdebug/webview/WebViewInstance;
.super Ljava/lang/Object;
.source "WebViewInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;,
        Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;,
        Lcom/foxdebug/webview/WebViewInstance$JsBridge;,
        Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;
    }
.end annotation


# static fields
.field private static final BRIDGE_JS:Ljava/lang/String; = "(function(){if(window.webview&&window.webview.__acodeBridge){return;}var callbacks=[];window.webview={__acodeBridge:true,onMessage:function(cb){if(typeof cb===\'function\'){callbacks.push(cb);}},offMessage:function(cb){callbacks=callbacks.filter(function(c){return c!==cb;});},postMessage:function(msg){var data=(typeof msg===\'string\')?msg:JSON.stringify(msg);window.AcodeWebViewNative.postMessage(String(data));},_dispatch:function(msg){callbacks.slice().forEach(function(cb){try{cb(msg);}catch(e){console.error(e);}});}};})();"

.field private static final SCHEME_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "WebViewInstance"


# instance fields
.field final allowDownloads:Z

.field final allowNavigation:Z

.field private hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

.field final id:Ljava/lang/String;

.field private isDestroyed:Z

.field final mode:Ljava/lang/String;

.field private pendingHtml:Ljava/lang/String;

.field private pendingUrl:Ljava/lang/String;

.field final plugin:Lcom/foxdebug/webview/WebViewPlugin;

.field final title:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgethostingActivity(Lcom/foxdebug/webview/WebViewInstance;)Lcom/foxdebug/webview/WebViewActivity;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisDestroyed(Lcom/foxdebug/webview/WebViewInstance;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputwebView(Lcom/foxdebug/webview/WebViewInstance;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method static bridge synthetic -$$Nest$smdecodeJsResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/foxdebug/webview/WebViewInstance;->decodeJsResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smformatSize(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/foxdebug/webview/WebViewInstance;->formatSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sminjectBridge(Landroid/webkit/WebView;)V
    .locals 0

    invoke-static {p0}, Lcom/foxdebug/webview/WebViewInstance;->injectBridge(Landroid/webkit/WebView;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smrunOnUiThread(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 201
    const-string v0, "^([a-zA-Z][a-zA-Z0-9+\\-.]*)://"

    .line 202
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/foxdebug/webview/WebViewInstance;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/foxdebug/webview/WebViewPlugin;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    .line 75
    iput-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingUrl:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->id:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/foxdebug/webview/WebViewInstance;->mode:Ljava/lang/String;

    .line 85
    iput-object p3, p0, Lcom/foxdebug/webview/WebViewInstance;->title:Ljava/lang/String;

    .line 86
    iput-boolean p4, p0, Lcom/foxdebug/webview/WebViewInstance;->allowNavigation:Z

    .line 87
    iput-boolean p5, p0, Lcom/foxdebug/webview/WebViewInstance;->allowDownloads:Z

    .line 88
    iput-object p6, p0, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    return-void
.end method

.method static applySystemBarInsets(Landroid/view/View;)V
    .locals 1

    .line 179
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$1;

    invoke-direct {v0}, Lcom/foxdebug/webview/WebViewInstance$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static decodeJsResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 307
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 308
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    return-object v0

    .line 309
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private static formatSize(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 576
    const-string p0, ""

    return-object p0

    :cond_0
    const-wide/16 v0, 0x400

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 v0, 0x100000

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    .line 578
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f KB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_3

    .line 579
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f MB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 580
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double p0, p0

    const-wide/high16 v1, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.1f GB"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideFullscreen(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 387
    const-string v0, "WebView has been destroyed"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 390
    :cond_0
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$7;

    invoke-direct {v0, p0}, Lcom/foxdebug/webview/WebViewInstance$7;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private static injectBridge(Landroid/webkit/WebView;)V
    .locals 2

    .line 168
    const-string v0, "(function(){if(window.webview&&window.webview.__acodeBridge){return;}var callbacks=[];window.webview={__acodeBridge:true,onMessage:function(cb){if(typeof cb===\'function\'){callbacks.push(cb);}},offMessage:function(cb){callbacks=callbacks.filter(function(c){return c!==cb;});},postMessage:function(msg){var data=(typeof msg===\'string\')?msg:JSON.stringify(msg);window.AcodeWebViewNative.postMessage(String(data));},_dispatch:function(msg){callbacks.slice().forEach(function(cb){try{cb(msg);}catch(e){console.error(e);}});}};})();"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 469
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 215
    :cond_1
    sget-object v1, Lcom/foxdebug/webview/WebViewInstance;->SCHEME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 217
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object p0

    .line 223
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setFileUrlAccessFlags(Landroid/webkit/WebSettings;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 164
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    return-void
.end method


# virtual methods
.method clearHostingActivity(Lcom/foxdebug/webview/WebViewActivity;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    :cond_0
    return-void
.end method

.method createWebView(Landroid/app/Activity;)V
    .locals 10

    .line 120
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    .line 123
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 130
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 131
    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->setFileUrlAccessFlags(Landroid/webkit/WebSettings;)V

    .line 132
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 136
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebViewClient;-><init>(Lcom/foxdebug/webview/WebViewInstance;Lcom/foxdebug/webview/WebViewInstance-IA;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 137
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;

    invoke-direct {v2, p0, v3}, Lcom/foxdebug/webview/WebViewInstance$InstanceWebChromeClient;-><init>(Lcom/foxdebug/webview/WebViewInstance;Lcom/foxdebug/webview/WebViewInstance-IA;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 138
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 139
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 141
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/foxdebug/webview/WebViewInstance$JsBridge;

    invoke-direct {v1, p0}, Lcom/foxdebug/webview/WebViewInstance$JsBridge;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    const-string v2, "AcodeWebViewNative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->allowDownloads:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    invoke-direct {v1, p0, p1}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;-><init>(Lcom/foxdebug/webview/WebViewInstance;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->injectBridge(Landroid/webkit/WebView;)V

    .line 151
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingUrl:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 152
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 153
    iput-object v3, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingUrl:Ljava/lang/String;

    .line 154
    iput-object v3, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    return-void

    .line 155
    :cond_2
    iget-object v6, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 156
    iget-object v4, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    const-string v8, "UTF-8"

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-string v7, "text/html"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput-object v3, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method destroy()V
    .locals 2

    .line 422
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 423
    iput-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    .line 427
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    const/4 v1, 0x0

    .line 428
    iput-object v1, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    if-eqz v0, :cond_1

    .line 429
    invoke-virtual {v0}, Lcom/foxdebug/webview/WebViewActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    invoke-virtual {v0}, Lcom/foxdebug/webview/WebViewActivity;->finish()V

    .line 433
    :cond_1
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$9;

    invoke-direct {v0, p0}, Lcom/foxdebug/webview/WebViewInstance$9;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method evaluate(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 279
    const-string p1, "WebView has been destroyed"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 283
    const-string p1, "WebView is not ready"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 286
    :cond_1
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/foxdebug/webview/WebViewInstance$4;-><init>(Lcom/foxdebug/webview/WebViewInstance;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method getHostingActivity()Lcom/foxdebug/webview/WebViewActivity;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method hide(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 366
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 367
    const-string v0, "WebView has been destroyed"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewInstance;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 375
    :cond_1
    invoke-direct {p0, p1}, Lcom/foxdebug/webview/WebViewInstance;->hideFullscreen(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method isFullscreen()Z
    .locals 2

    .line 100
    const-string v0, "fullscreen"

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method loadHTML(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 257
    const-string p1, "WebView has been destroyed"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 262
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingUrl:Ljava/lang/String;

    .line 264
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 268
    :cond_1
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/foxdebug/webview/WebViewInstance$3;-><init>(Lcom/foxdebug/webview/WebViewInstance;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method loadURL(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 228
    const-string p1, "WebView has been destroyed"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 232
    :cond_0
    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 234
    const-string p1, "Blocked URL: only http:// and https:// URLs are allowed"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    .line 240
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->pendingHtml:Ljava/lang/String;

    .line 242
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 246
    :cond_2
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/foxdebug/webview/WebViewInstance$2;-><init>(Lcom/foxdebug/webview/WebViewInstance;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method onPageFinished(Landroid/webkit/WebView;)V
    .locals 4

    .line 455
    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->injectBridge(Landroid/webkit/WebView;)V

    .line 457
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 458
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 460
    const-string v2, "url"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    :try_start_1
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    const-string v1, "title"

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 462
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance;->id:Ljava/lang/String;

    const-string v2, "pageFinished"

    invoke-virtual {p1, v1, v2, v0}, Lcom/foxdebug/webview/WebViewPlugin;->sendEventToCordova(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 464
    const-string v0, "WebViewInstance"

    const-string v1, "onPageFinished error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method postMessage(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 316
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 317
    const-string p1, "WebView has been destroyed"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 321
    const-string p1, "WebView is not ready"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 329
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(function(){var raw="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ";var msg;try{msg=JSON.parse(raw);}catch(e){msg=raw;}if(window.webview&&window.webview._dispatch){window.webview._dispatch(msg);}})();"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/foxdebug/webview/WebViewInstance$5;-><init>(Lcom/foxdebug/webview/WebViewInstance;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method reload(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 404
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "WebView has been destroyed"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 409
    const-string v0, "WebView is not ready"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 412
    :cond_1
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$8;

    invoke-direct {v0, p0, p1}, Lcom/foxdebug/webview/WebViewInstance$8;-><init>(Lcom/foxdebug/webview/WebViewInstance;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method setHostingActivity(Lcom/foxdebug/webview/WebViewActivity;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance;->hostingActivity:Lcom/foxdebug/webview/WebViewActivity;

    return-void
.end method

.method show(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewInstance;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 347
    const-string v0, "WebView has been destroyed"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
    invoke-virtual {p0}, Lcom/foxdebug/webview/WebViewInstance;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const-string v0, "Hidden WebViews cannot be shown; use mode \"fullscreen\" to display content"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 356
    :cond_1
    new-instance v0, Lcom/foxdebug/webview/WebViewInstance$6;

    invoke-direct {v0, p0}, Lcom/foxdebug/webview/WebViewInstance$6;-><init>(Lcom/foxdebug/webview/WebViewInstance;)V

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 362
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

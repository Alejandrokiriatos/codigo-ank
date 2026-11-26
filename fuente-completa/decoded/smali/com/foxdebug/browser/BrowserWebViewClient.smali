.class Lcom/foxdebug/browser/BrowserWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "Browser.java"


# instance fields
.field private browser:Lcom/foxdebug/browser/Browser;


# direct methods
.method static bridge synthetic -$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    return-object p0
.end method

.method public constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0

    .line 664
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 665
    iput-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 762
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1}, Lcom/foxdebug/browser/Browser;->setDesktopMode()V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .line 683
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 684
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/foxdebug/browser/Browser;->setProgressBarVisible(Z)V

    .line 688
    const-string p1, "http://localhost"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 690
    :try_start_0
    new-instance p2, Ljava/io/File;

    iget-object v1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object v1, v1, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "eruda.js"

    invoke-direct {p2, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 691
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 692
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 694
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 695
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    const-string p2, "\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 698
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 701
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "if(!window.eruda){  var script = document.createElement(\'script\');  script.textContent = `"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 705
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "`;  document.head.appendChild(script);  eruda.init({    theme: \'dark\'  });  eruda._shadowRoot.querySelector(\'.eruda-entry-btn\').style.display = \'none\';  sessionStorage.setItem(\'__console_available\', true);  document.addEventListener(\'showconsole\', function() { eruda.show(); });  document.addEventListener(\'hideconsole\', function() { eruda.hide(); });}"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 717
    iget-object v1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object v1, v1, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p2, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 719
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 737
    iget-object p2, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object p2, p2, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    const-string v1, "if(!window.eruda){  var script = document.createElement(\'script\');  script.src = \'https://cdn.jsdelivr.net/npm/eruda\';  script.crossOrigin = \'anonymous\';  script.onload = function() {    eruda.init({      theme: \'dark\'    });    eruda._shadowRoot.querySelector(\'.eruda-entry-btn\').style.display = \'none\';    sessionStorage.setItem(\'__console_available\', true);    document.addEventListener(\'showconsole\', function() { eruda.show(); });    document.addEventListener(\'hideconsole\', function() { eruda.hide(); });  };  document.head.appendChild(script);}"

    invoke-virtual {p2, v1, p1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 739
    :goto_1
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string p2, "Console"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/foxdebug/browser/Menu;->setChecked(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void

    .line 741
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    new-instance p2, Lcom/foxdebug/browser/BrowserWebViewClient$1;

    invoke-direct {p2, p0}, Lcom/foxdebug/browser/BrowserWebViewClient$1;-><init>(Lcom/foxdebug/browser/BrowserWebViewClient;)V

    const-string v0, "sessionStorage.getItem(\'__console_available\')"

    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 677
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 678
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setProgressBarVisible(Z)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 670
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setUrl(Ljava/lang/String;)V

    .line 671
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient;->browser:Lcom/foxdebug/browser/Browser;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/foxdebug/browser/Browser;->setProgressBarVisible(Z)V

    const/4 p1, 0x0

    return p1
.end method

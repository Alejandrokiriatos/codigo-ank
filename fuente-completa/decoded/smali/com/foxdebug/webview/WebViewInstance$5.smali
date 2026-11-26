.class Lcom/foxdebug/webview/WebViewInstance$5;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance;->postMessage(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$5;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iput-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$5;->val$js:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/webview/WebViewInstance$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 339
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$5;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$5;->val$js:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 340
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$5;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

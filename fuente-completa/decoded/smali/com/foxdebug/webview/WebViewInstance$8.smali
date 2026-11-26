.class Lcom/foxdebug/webview/WebViewInstance$8;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance;->reload(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$8;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iput-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$8;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetwebView(Lcom/foxdebug/webview/WebViewInstance;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 416
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$8;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

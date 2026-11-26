.class Lcom/foxdebug/webview/WebViewPlugin$2;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewPlugin;->destroy(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$instance:Lcom/foxdebug/webview/WebViewInstance;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewPlugin;Lcom/foxdebug/webview/WebViewInstance;Lorg/apache/cordova/CallbackContext;)V
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

    .line 203
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewPlugin$2;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    iput-object p2, p0, Lcom/foxdebug/webview/WebViewPlugin$2;->val$instance:Lcom/foxdebug/webview/WebViewInstance;

    iput-object p3, p0, Lcom/foxdebug/webview/WebViewPlugin$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$2;->val$instance:Lcom/foxdebug/webview/WebViewInstance;

    invoke-virtual {v0}, Lcom/foxdebug/webview/WebViewInstance;->destroy()V

    .line 207
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

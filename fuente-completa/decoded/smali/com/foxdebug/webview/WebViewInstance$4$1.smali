.class Lcom/foxdebug/webview/WebViewInstance$4$1;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/foxdebug/webview/WebViewInstance$4;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$4$1;->this$1:Lcom/foxdebug/webview/WebViewInstance$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 289
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/foxdebug/webview/WebViewInstance$4$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$4$1;->this$1:Lcom/foxdebug/webview/WebViewInstance$4;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewInstance$4;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$smdecodeJsResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void
.end method

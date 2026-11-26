.class Lcom/foxdebug/webview/WebViewInstance$6;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance;->show(Lorg/apache/cordova/CallbackContext;)V
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

    .line 356
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$6;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$6;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$6;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object v1, v1, Lcom/foxdebug/webview/WebViewInstance;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/foxdebug/webview/WebViewPlugin;->showFullscreenActivity(Ljava/lang/String;)V

    return-void
.end method

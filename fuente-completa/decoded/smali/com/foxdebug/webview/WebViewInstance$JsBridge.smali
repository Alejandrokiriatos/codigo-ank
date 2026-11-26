.class public Lcom/foxdebug/webview/WebViewInstance$JsBridge;
.super Ljava/lang/Object;
.source "WebViewInstance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/webview/WebViewInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JsBridge"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;


# direct methods
.method public constructor <init>(Lcom/foxdebug/webview/WebViewInstance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$JsBridge;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$JsBridge;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$JsBridge;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object v1, v1, Lcom/foxdebug/webview/WebViewInstance;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/foxdebug/webview/WebViewPlugin;->sendMessageToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

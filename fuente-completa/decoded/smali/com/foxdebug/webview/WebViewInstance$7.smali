.class Lcom/foxdebug/webview/WebViewInstance$7;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance;->hideFullscreen(Lorg/apache/cordova/CallbackContext;)V
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

    .line 390
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$7;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$7;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgethostingActivity(Lcom/foxdebug/webview/WebViewInstance;)Lcom/foxdebug/webview/WebViewActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$7;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgethostingActivity(Lcom/foxdebug/webview/WebViewInstance;)Lcom/foxdebug/webview/WebViewActivity;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/foxdebug/webview/WebViewActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$7;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgethostingActivity(Lcom/foxdebug/webview/WebViewInstance;)Lcom/foxdebug/webview/WebViewActivity;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Lcom/foxdebug/webview/WebViewActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$7;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgethostingActivity(Lcom/foxdebug/webview/WebViewInstance;)Lcom/foxdebug/webview/WebViewActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/foxdebug/webview/WebViewActivity;->moveTaskToBack(Z)Z

    :cond_0
    return-void
.end method

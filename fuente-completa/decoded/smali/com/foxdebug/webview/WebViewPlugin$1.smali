.class Lcom/foxdebug/webview/WebViewPlugin$1;
.super Ljava/lang/Object;
.source "WebViewPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewPlugin;->create(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/webview/WebViewPlugin;

.field final synthetic val$allowDownloads:Z

.field final synthetic val$allowNavigation:Z

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$mode:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewPlugin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
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

    .line 98
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    iput-object p2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$mode:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$title:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$allowNavigation:Z

    iput-boolean p6, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$allowDownloads:Z

    iput-boolean p7, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$visible:Z

    iput-object p8, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 101
    new-instance v1, Lcom/foxdebug/webview/WebViewInstance;

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    iget-object v3, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$mode:Ljava/lang/String;

    iget-object v4, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$title:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$allowNavigation:Z

    iget-boolean v6, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$allowDownloads:Z

    iget-object v7, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/webview/WebViewInstance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/foxdebug/webview/WebViewPlugin;)V

    .line 106
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewPlugin;->-$$Nest$fgetinstances(Lcom/foxdebug/webview/WebViewPlugin;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :try_start_0
    invoke-virtual {v1}, Lcom/foxdebug/webview/WebViewInstance;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-boolean v0, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$visible:Z

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/foxdebug/webview/WebViewPlugin;->showFullscreenActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/foxdebug/webview/WebViewInstance;->createWebView(Landroid/app/Activity;)V

    .line 120
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 122
    iget-object v2, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->this$0:Lcom/foxdebug/webview/WebViewPlugin;

    invoke-static {v2}, Lcom/foxdebug/webview/WebViewPlugin;->-$$Nest$fgetinstances(Lcom/foxdebug/webview/WebViewPlugin;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :try_start_1
    invoke-virtual {v1}, Lcom/foxdebug/webview/WebViewInstance;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Create error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AcodeWebView"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    iget-object v1, p0, Lcom/foxdebug/webview/WebViewPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.class Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 565
    iget-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    iget-object p1, p1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    iget-object p1, p1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    iget-object p1, p1, Lcom/foxdebug/webview/WebViewInstance;->plugin:Lcom/foxdebug/webview/WebViewPlugin;

    iget-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    iget-object p2, p2, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    iget-object v0, v0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$userAgent:Ljava/lang/String;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    iget-object v1, v1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;->this$2:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    iget-object v2, v2, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/foxdebug/webview/WebViewPlugin;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

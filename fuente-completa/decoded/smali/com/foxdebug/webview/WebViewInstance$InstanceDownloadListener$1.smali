.class Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$1;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 541
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$1;->this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 544
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$1;->this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->-$$Nest$fgetcontext(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "This download type is not supported"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.class Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;
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

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
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
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 556
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    iput-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$userAgent:Ljava/lang/String;

    iput-object p5, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$mimeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 559
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->this$1:Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;

    invoke-static {v1}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->-$$Nest$fgetcontext(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Download file"

    .line 560
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;->val$message:Ljava/lang/String;

    .line 561
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;

    invoke-direct {v1, p0}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2$1;-><init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;)V

    .line 562
    const-string v2, "Download"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    .line 568
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 569
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

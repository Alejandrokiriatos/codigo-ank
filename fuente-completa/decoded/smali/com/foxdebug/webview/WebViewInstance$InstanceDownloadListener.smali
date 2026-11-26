.class Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;
.super Ljava/lang/Object;
.source "WebViewInstance.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/webview/WebViewInstance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstanceDownloadListener"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/foxdebug/webview/WebViewInstance;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->context:Landroid/content/Context;

    return-object p0
.end method

.method constructor <init>(Lcom/foxdebug/webview/WebViewInstance;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 528
    iput-object p1, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p2, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 534
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->this$0:Lcom/foxdebug/webview/WebViewInstance;

    invoke-static {v0}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$fgetisDestroyed(Lcom/foxdebug/webview/WebViewInstance;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 538
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 539
    const-string v1, "http"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 550
    :cond_2
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 551
    invoke-static {p5, p6}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$smformatSize(J)Ljava/lang/String;

    move-result-object p3

    .line 552
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    const-string p6, "Do you want to download \""

    if-eqz p5, :cond_3

    .line 553
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "\"?"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 554
    :cond_3
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string p6, "\" ("

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, ")?"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_1
    move-object v3, p3

    .line 556
    new-instance v1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$2;-><init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$smrunOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :goto_2
    move-object v2, p0

    .line 541
    new-instance p1, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$1;

    invoke-direct {p1, p0}, Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener$1;-><init>(Lcom/foxdebug/webview/WebViewInstance$InstanceDownloadListener;)V

    invoke-static {p1}, Lcom/foxdebug/webview/WebViewInstance;->-$$Nest$smrunOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

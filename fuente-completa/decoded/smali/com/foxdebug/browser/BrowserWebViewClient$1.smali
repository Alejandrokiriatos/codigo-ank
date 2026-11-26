.class Lcom/foxdebug/browser/BrowserWebViewClient$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/BrowserWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/foxdebug/browser/BrowserWebViewClient;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/BrowserWebViewClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 743
    iput-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

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

    .line 743
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/BrowserWebViewClient$1;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 4

    .line 746
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 747
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-static {v0}, Lcom/foxdebug/browser/BrowserWebViewClient;->-$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;

    move-result-object v0

    iget-object v0, v0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-static {v2}, Lcom/foxdebug/browser/BrowserWebViewClient;->-$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;

    move-result-object v2

    iget-boolean v2, v2, Lcom/foxdebug/browser/Browser;->emulator:Z

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Console"

    invoke-virtual {v0, v3, v2}, Lcom/foxdebug/browser/Menu;->setVisible(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 750
    iget-object v0, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-static {v0}, Lcom/foxdebug/browser/BrowserWebViewClient;->-$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;

    move-result-object v0

    iget-boolean v0, v0, Lcom/foxdebug/browser/Browser;->console:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 751
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-static {p1}, Lcom/foxdebug/browser/BrowserWebViewClient;->-$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/foxdebug/browser/Browser;->setConsoleVisible(Z)V

    .line 752
    iget-object p1, p0, Lcom/foxdebug/browser/BrowserWebViewClient$1;->this$0:Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-static {p1}, Lcom/foxdebug/browser/BrowserWebViewClient;->-$$Nest$fgetbrowser(Lcom/foxdebug/browser/BrowserWebViewClient;)Lcom/foxdebug/browser/Browser;

    move-result-object p1

    iget-object p1, p1, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/foxdebug/browser/Menu;->setChecked(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

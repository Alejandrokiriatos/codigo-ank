.class Lcom/foxdebug/browser/Browser$4$1;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Browser$4;->onSelect(Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/foxdebug/browser/Browser$4;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$4$1;->this$1:Lcom/foxdebug/browser/Browser$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/foxdebug/browser/Browser$4$1;->this$1:Lcom/foxdebug/browser/Browser$4;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    .line 275
    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 276
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 277
    iget-object v0, p0, Lcom/foxdebug/browser/Browser$4$1;->this$1:Lcom/foxdebug/browser/Browser$4;

    iget-object v0, v0, Lcom/foxdebug/browser/Browser$4;->this$0:Lcom/foxdebug/browser/Browser;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/foxdebug/browser/Browser;->-$$Nest$msetDesktopMode(Lcom/foxdebug/browser/Browser;Z)V

    return-void
.end method

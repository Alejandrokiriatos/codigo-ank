.class Lcom/foxdebug/browser/Browser$6;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Browser;->createEditText(Ljava/lang/String;)Landroid/widget/EditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Browser;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 504
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 508
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgettitleText(Lcom/foxdebug/browser/Browser;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgeturl(Lcom/foxdebug/browser/Browser;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$mkeyboardVisible(Lcom/foxdebug/browser/Browser;Z)V

    return-void

    .line 511
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgettitleText(Lcom/foxdebug/browser/Browser;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p2, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$fgettitle(Lcom/foxdebug/browser/Browser;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$6;->this$0:Lcom/foxdebug/browser/Browser;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/foxdebug/browser/Browser;->-$$Nest$mkeyboardVisible(Lcom/foxdebug/browser/Browser;Z)V

    return-void
.end method

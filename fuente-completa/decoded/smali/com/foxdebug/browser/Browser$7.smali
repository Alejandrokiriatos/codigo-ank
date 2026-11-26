.class Lcom/foxdebug/browser/Browser$7;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Browser;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lcom/foxdebug/browser/Browser$7;->this$0:Lcom/foxdebug/browser/Browser;

    iput-object p2, p0, Lcom/foxdebug/browser/Browser$7;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    const-string p2, "http://"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "https://"

    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 529
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 532
    :cond_0
    iget-object p2, p0, Lcom/foxdebug/browser/Browser$7;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p2, p1}, Lcom/foxdebug/browser/Browser;->-$$Nest$fputtitle(Lcom/foxdebug/browser/Browser;Ljava/lang/String;)V

    .line 533
    iget-object p2, p0, Lcom/foxdebug/browser/Browser$7;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-virtual {p2, p1}, Lcom/foxdebug/browser/Browser;->setUrl(Ljava/lang/String;)V

    .line 534
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$7;->val$editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 535
    iget-object p1, p0, Lcom/foxdebug/browser/Browser$7;->this$0:Lcom/foxdebug/browser/Browser;

    invoke-static {p1, v0}, Lcom/foxdebug/browser/Browser;->-$$Nest$mkeyboardVisible(Lcom/foxdebug/browser/Browser;Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

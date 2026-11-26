.class Lcom/foxdebug/crashhandler/CrashActivity$4;
.super Ljava/lang/Object;
.source "CrashActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/crashhandler/CrashActivity;->createButton(Ljava/lang/String;IIZ)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/crashhandler/CrashActivity;

.field final synthetic val$btn:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/foxdebug/crashhandler/CrashActivity;Landroid/widget/TextView;)V
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

    .line 434
    iput-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$4;->this$0:Lcom/foxdebug/crashhandler/CrashActivity;

    iput-object p2, p0, Lcom/foxdebug/crashhandler/CrashActivity$4;->val$btn:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 437
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$4;->val$btn:Landroid/widget/TextView;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 440
    :cond_1
    iget-object p1, p0, Lcom/foxdebug/crashhandler/CrashActivity$4;->val$btn:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

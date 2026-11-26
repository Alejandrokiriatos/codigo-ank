.class Lcom/foxdebug/browser/MenuItem$1;
.super Ljava/lang/Object;
.source "Menu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/MenuItem;->setOnClickListener(Lcom/foxdebug/browser/MenuItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/MenuItem;

.field final synthetic val$listener:Lcom/foxdebug/browser/MenuItemCallback;

.field final synthetic val$self:Lcom/foxdebug/browser/MenuItem;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/MenuItem;Lcom/foxdebug/browser/MenuItemCallback;Lcom/foxdebug/browser/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 255
    iput-object p1, p0, Lcom/foxdebug/browser/MenuItem$1;->this$0:Lcom/foxdebug/browser/MenuItem;

    iput-object p2, p0, Lcom/foxdebug/browser/MenuItem$1;->val$listener:Lcom/foxdebug/browser/MenuItemCallback;

    iput-object p3, p0, Lcom/foxdebug/browser/MenuItem$1;->val$self:Lcom/foxdebug/browser/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem$1;->this$0:Lcom/foxdebug/browser/MenuItem;

    iget-object p1, p1, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem$1;->this$0:Lcom/foxdebug/browser/MenuItem;

    iget-object v0, p1, Lcom/foxdebug/browser/MenuItem;->checked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/foxdebug/browser/MenuItem;->checked:Ljava/lang/Boolean;

    .line 260
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem$1;->this$0:Lcom/foxdebug/browser/MenuItem;

    iget-object p1, p1, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/foxdebug/browser/MenuItem$1;->this$0:Lcom/foxdebug/browser/MenuItem;

    iget-object v0, v0, Lcom/foxdebug/browser/MenuItem;->checked:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem$1;->val$listener:Lcom/foxdebug/browser/MenuItemCallback;

    iget-object v0, p0, Lcom/foxdebug/browser/MenuItem$1;->val$self:Lcom/foxdebug/browser/MenuItem;

    invoke-virtual {p1, v0}, Lcom/foxdebug/browser/MenuItemCallback;->onClick(Lcom/foxdebug/browser/MenuItem;)V

    return-void
.end method

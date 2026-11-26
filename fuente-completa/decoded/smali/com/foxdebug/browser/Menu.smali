.class public Lcom/foxdebug/browser/Menu;
.super Landroid/widget/PopupWindow;
.source "Menu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/browser/Menu$Callback;
    }
.end annotation


# instance fields
.field private callback:Lcom/foxdebug/browser/Menu$Callback;

.field context:Landroid/content/Context;

.field imageSize:I

.field itemHeight:I

.field private list:Landroid/widget/LinearLayout;

.field padding:I

.field private theme:Lcom/foxdebug/system/Ui$Theme;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/foxdebug/browser/Menu;)Lcom/foxdebug/browser/Menu$Callback;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Menu;->callback:Lcom/foxdebug/browser/Menu$Callback;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V
    .locals 4

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/foxdebug/browser/Menu;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 40
    iput-object p1, p0, Lcom/foxdebug/browser/Menu;->context:Landroid/content/Context;

    const/4 v0, 0x5

    .line 42
    invoke-static {p1, v0}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/browser/Menu;->padding:I

    const/16 v0, 0x1e

    .line 43
    invoke-static {p1, v0}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/browser/Menu;->imageSize:I

    const/16 v0, 0x28

    .line 44
    invoke-static {p1, v0}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/browser/Menu;->itemHeight:I

    .line 50
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 51
    const-string v1, "popupBackgroundColor"

    invoke-virtual {p2, v1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p2, 0x8

    .line 52
    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 54
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 56
    iget-object p2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object p2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/foxdebug/browser/Menu;->padding:I

    invoke-virtual {p2, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 58
    iget-object p2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 66
    iget-object p1, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 68
    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/Menu;->setElevation(F)V

    .line 69
    invoke-virtual {p0, v1}, Lcom/foxdebug/browser/Menu;->setFocusable(Z)V

    .line 70
    invoke-virtual {p0, p2}, Lcom/foxdebug/browser/Menu;->setContentView(Landroid/view/View;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/Menu;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    sget p1, Lcom/foxdebug/acode/R$style;->MenuAnimation:I

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/Menu;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, p1, p2, v0}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/foxdebug/browser/Menu;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v1, "popupTextColor"

    invoke-virtual {v0, v1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/foxdebug/browser/Menu;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v2, "popupBackgroundColor"

    invoke-virtual {v1, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    .line 86
    new-instance v2, Lcom/foxdebug/browser/MenuItem;

    invoke-direct {v2, p0, p2}, Lcom/foxdebug/browser/MenuItem;-><init>(Lcom/foxdebug/browser/Menu;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2, v1}, Lcom/foxdebug/browser/MenuItem;->setBackgroundColor(I)V

    .line 88
    invoke-virtual {v2, p1, v0}, Lcom/foxdebug/browser/MenuItem;->setIcon(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {v2, p2, v0}, Lcom/foxdebug/browser/MenuItem;->setText(Ljava/lang/String;I)V

    .line 90
    new-instance p1, Lcom/foxdebug/browser/Menu$1;

    invoke-direct {p1, p0}, Lcom/foxdebug/browser/Menu$1;-><init>(Lcom/foxdebug/browser/Menu;)V

    invoke-virtual {v2, p1}, Lcom/foxdebug/browser/MenuItem;->setOnClickListener(Lcom/foxdebug/browser/MenuItemCallback;)V

    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/foxdebug/browser/MenuItem;->setChecked(Z)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public hide()V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/foxdebug/browser/Menu;->dismiss()V

    return-void
.end method

.method public setCallback(Lcom/foxdebug/browser/Menu$Callback;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/foxdebug/browser/Menu;->callback:Lcom/foxdebug/browser/Menu$Callback;

    return-void
.end method

.method public setChecked(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/foxdebug/browser/MenuItem;

    .line 110
    iget-object v2, v1, Lcom/foxdebug/browser/MenuItem;->action:Ljava/lang/String;

    if-ne v2, p1, :cond_0

    .line 111
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/foxdebug/browser/MenuItem;->setChecked(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVisible(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 118
    :goto_0
    iget-object v2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/foxdebug/browser/Menu;->list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/foxdebug/browser/MenuItem;

    .line 120
    iget-object v3, v2, Lcom/foxdebug/browser/MenuItem;->action:Ljava/lang/String;

    if-ne v3, p1, :cond_1

    .line 121
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v2, v0}, Lcom/foxdebug/browser/MenuItem;->setVisibility(I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 2

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    const/16 v0, 0x35

    .line 130
    iget v1, p0, Lcom/foxdebug/browser/Menu;->padding:I

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/foxdebug/browser/Menu;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

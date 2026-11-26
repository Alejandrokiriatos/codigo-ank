.class Lcom/foxdebug/browser/DeviceView;
.super Landroid/widget/LinearLayout;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/browser/DeviceView$Callback;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field device:Lcom/foxdebug/browser/Device;

.field icon:Landroid/widget/ImageView;

.field isSelected:Z

.field label:Landroid/widget/TextView;

.field theme:Lcom/foxdebug/system/Ui$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/foxdebug/browser/Device;Lcom/foxdebug/system/Ui$Theme;)V
    .locals 5

    .line 449
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/foxdebug/browser/DeviceView;->isSelected:Z

    .line 450
    const-string v1, "primaryTextColor"

    invoke-virtual {p3, v1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    .line 451
    iput-object p3, p0, Lcom/foxdebug/browser/DeviceView;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 452
    iput-object p2, p0, Lcom/foxdebug/browser/DeviceView;->device:Lcom/foxdebug/browser/Device;

    .line 453
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceView;->context:Landroid/content/Context;

    .line 454
    iput-object p0, p2, Lcom/foxdebug/browser/Device;->view:Lcom/foxdebug/browser/DeviceView;

    .line 456
    iget p3, p2, Lcom/foxdebug/browser/Device;->id:I

    invoke-virtual {p0, p3}, Lcom/foxdebug/browser/DeviceView;->setId(I)V

    const/4 p3, 0x1

    .line 457
    invoke-virtual {p0, p3}, Lcom/foxdebug/browser/DeviceView;->setClickable(Z)V

    const/4 v2, 0x5

    .line 458
    invoke-virtual {p0, v0, v2, v0, v2}, Lcom/foxdebug/browser/DeviceView;->setPadding(IIII)V

    .line 459
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/DeviceView;->setOrientation(I)V

    .line 461
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    .line 462
    iget-object v4, p2, Lcom/foxdebug/browser/Device;->icon:Ljava/lang/String;

    invoke-static {p1, v4, v1}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 463
    iget-object v3, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v0, v2, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 464
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    .line 472
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 473
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/foxdebug/browser/Device;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/DeviceView;->addView(Landroid/view/View;)V

    .line 477
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/DeviceView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public deselect()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v1, "primaryTextColor"

    invoke-virtual {v0, v1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v0

    .line 494
    iget-object v1, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/foxdebug/browser/DeviceView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/foxdebug/browser/DeviceView;->device:Lcom/foxdebug/browser/Device;

    iget-object v3, v3, Lcom/foxdebug/browser/Device;->icon:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 495
    iget-object v1, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 497
    iput-boolean v2, p0, Lcom/foxdebug/browser/DeviceView;->isSelected:Z

    return-void
.end method

.method public select()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v1, "activeTextColor"

    invoke-virtual {v0, v1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/foxdebug/browser/DeviceView;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/foxdebug/browser/DeviceView;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/foxdebug/browser/DeviceView;->device:Lcom/foxdebug/browser/Device;

    iget-object v3, v3, Lcom/foxdebug/browser/Device;->icon:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 503
    iget-object v1, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 504
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView;->label:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 505
    iput-boolean v2, p0, Lcom/foxdebug/browser/DeviceView;->isSelected:Z

    return-void
.end method

.method public setOnSelect(Lcom/foxdebug/browser/DeviceView$Callback;)V
    .locals 1

    .line 482
    new-instance v0, Lcom/foxdebug/browser/DeviceView$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/foxdebug/browser/DeviceView$1;-><init>(Lcom/foxdebug/browser/DeviceView;Lcom/foxdebug/browser/DeviceView$Callback;Lcom/foxdebug/browser/DeviceView;)V

    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/DeviceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

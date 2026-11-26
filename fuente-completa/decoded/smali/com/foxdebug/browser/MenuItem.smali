.class Lcom/foxdebug/browser/MenuItem;
.super Landroid/widget/LinearLayout;
.source "Menu.java"


# instance fields
.field public action:Ljava/lang/String;

.field public checkBox:Landroid/widget/CheckBox;

.field public checked:Ljava/lang/Boolean;

.field private context:Landroid/content/Context;

.field private iconSize:I

.field private imageSize:I

.field private itemHeight:I

.field private padding:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingVertical:I

.field private textColor:I


# direct methods
.method public constructor <init>(Lcom/foxdebug/browser/Menu;Ljava/lang/String;)V
    .locals 2

    .line 160
    iget-object v0, p1, Lcom/foxdebug/browser/Menu;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/foxdebug/browser/MenuItem;->paddingLeft:I

    .line 156
    iput v0, p0, Lcom/foxdebug/browser/MenuItem;->paddingRight:I

    .line 157
    iput v0, p0, Lcom/foxdebug/browser/MenuItem;->paddingVertical:I

    .line 161
    iput-object p2, p0, Lcom/foxdebug/browser/MenuItem;->action:Ljava/lang/String;

    .line 163
    iget-object p2, p1, Lcom/foxdebug/browser/Menu;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    .line 164
    iget p2, p1, Lcom/foxdebug/browser/Menu;->padding:I

    iput p2, p0, Lcom/foxdebug/browser/MenuItem;->padding:I

    .line 165
    iget p2, p1, Lcom/foxdebug/browser/Menu;->imageSize:I

    iput p2, p0, Lcom/foxdebug/browser/MenuItem;->imageSize:I

    .line 166
    iget p1, p1, Lcom/foxdebug/browser/Menu;->itemHeight:I

    iput p1, p0, Lcom/foxdebug/browser/MenuItem;->itemHeight:I

    .line 167
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/foxdebug/browser/MenuItem;->iconSize:I

    .line 168
    iget p1, p0, Lcom/foxdebug/browser/MenuItem;->imageSize:I

    iput p1, p0, Lcom/foxdebug/browser/MenuItem;->paddingRight:I

    .line 169
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/foxdebug/browser/MenuItem;->paddingVertical:I

    .line 171
    invoke-virtual {p0}, Lcom/foxdebug/browser/MenuItem;->setPadding()V

    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/MenuItem;->setClickable(Z)V

    .line 173
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    iget v1, p0, Lcom/foxdebug/browser/MenuItem;->itemHeight:I

    invoke-direct {p1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/MenuItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x10

    .line 179
    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/MenuItem;->setGravity(I)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/MenuItem;->setOrientation(I)V

    .line 181
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/MenuItem;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 4

    .line 218
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/browser/MenuItem;->checked:Ljava/lang/Boolean;

    .line 219
    iget-object v0, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    .line 224
    :cond_0
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 227
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 228
    iget-object p1, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    new-instance v1, Landroid/content/res/ColorStateList;

    const v2, 0x10100a0

    filled-new-array {v2}, [I

    move-result-object v2

    const v3, -0x10100a0

    filled-new-array {v3}, [I

    move-result-object v3

    filled-new-array {v2, v3}, [[I

    move-result-object v2

    iget v3, p0, Lcom/foxdebug/browser/MenuItem;->textColor:I

    filled-new-array {v3, v3}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 238
    new-instance p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 239
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/foxdebug/browser/MenuItem;->imageSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 243
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 244
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v1, p0, Lcom/foxdebug/browser/MenuItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 247
    iput v0, p0, Lcom/foxdebug/browser/MenuItem;->paddingRight:I

    .line 248
    invoke-virtual {p0}, Lcom/foxdebug/browser/MenuItem;->setPadding()V

    .line 249
    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/MenuItem;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(Ljava/lang/String;I)V
    .locals 2

    .line 189
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 190
    iget-object v1, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 191
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 192
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p0, Lcom/foxdebug/browser/MenuItem;->imageSize:I

    invoke-direct {p1, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 p1, 0x1

    .line 197
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 198
    iget p1, p0, Lcom/foxdebug/browser/MenuItem;->padding:I

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/ImageView;->setPadding(IIII)V

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, v0, p1}, Lcom/foxdebug/browser/MenuItem;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setOnClickListener(Lcom/foxdebug/browser/MenuItemCallback;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/foxdebug/browser/MenuItem$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/foxdebug/browser/MenuItem$1;-><init>(Lcom/foxdebug/browser/MenuItem;Lcom/foxdebug/browser/MenuItemCallback;Lcom/foxdebug/browser/MenuItem;)V

    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/MenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPadding()V
    .locals 3

    .line 185
    iget v0, p0, Lcom/foxdebug/browser/MenuItem;->paddingLeft:I

    iget v1, p0, Lcom/foxdebug/browser/MenuItem;->paddingVertical:I

    iget v2, p0, Lcom/foxdebug/browser/MenuItem;->paddingRight:I

    invoke-virtual {p0, v0, v1, v2, v1}, Lcom/foxdebug/browser/MenuItem;->setPadding(IIII)V

    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 3

    .line 203
    iput p2, p0, Lcom/foxdebug/browser/MenuItem;->textColor:I

    .line 204
    new-instance p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/foxdebug/browser/MenuItem;->context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 210
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget p1, p0, Lcom/foxdebug/browser/MenuItem;->textColor:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x10

    .line 212
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 213
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 214
    invoke-virtual {p0, p2, p1}, Lcom/foxdebug/browser/MenuItem;->addView(Landroid/view/View;I)V

    return-void
.end method

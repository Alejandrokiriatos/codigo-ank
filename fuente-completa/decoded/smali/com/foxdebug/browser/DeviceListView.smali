.class Lcom/foxdebug/browser/DeviceListView;
.super Landroid/widget/ScrollView;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/browser/DeviceListView$Callback;
    }
.end annotation


# instance fields
.field callback:Lcom/foxdebug/browser/DeviceListView$Callback;

.field context:Landroid/content/Context;

.field deviceListLayout:Landroid/widget/LinearLayout;

.field selectedDeviceView:Lcom/foxdebug/browser/DeviceView;

.field theme:Lcom/foxdebug/system/Ui$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V
    .locals 2

    .line 381
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 382
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->context:Landroid/content/Context;

    .line 383
    iput-object p2, p0, Lcom/foxdebug/browser/DeviceListView;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 385
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/foxdebug/browser/DeviceListView;->deviceListLayout:Landroid/widget/LinearLayout;

    const/4 p1, 0x1

    .line 386
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 387
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->deviceListLayout:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->deviceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/DeviceListView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/foxdebug/browser/Device;)V
    .locals 3

    .line 410
    new-instance v0, Lcom/foxdebug/browser/DeviceView;

    iget-object v1, p0, Lcom/foxdebug/browser/DeviceListView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/foxdebug/browser/DeviceListView;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-direct {v0, v1, p1, v2}, Lcom/foxdebug/browser/DeviceView;-><init>(Landroid/content/Context;Lcom/foxdebug/browser/Device;Lcom/foxdebug/system/Ui$Theme;)V

    .line 411
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->deviceListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    new-instance p1, Lcom/foxdebug/browser/DeviceListView$1;

    invoke-direct {p1, p0}, Lcom/foxdebug/browser/DeviceListView$1;-><init>(Lcom/foxdebug/browser/DeviceListView;)V

    invoke-virtual {v0, p1}, Lcom/foxdebug/browser/DeviceView;->setOnSelect(Lcom/foxdebug/browser/DeviceView$Callback;)V

    return-void
.end method

.method public varargs add([Lcom/foxdebug/browser/Device;)V
    .locals 3

    .line 398
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 399
    invoke-virtual {p0, v2}, Lcom/foxdebug/browser/DeviceListView;->add(Lcom/foxdebug/browser/Device;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public select(Lcom/foxdebug/browser/Device;)V
    .locals 0

    .line 404
    iget p1, p1, Lcom/foxdebug/browser/Device;->id:I

    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/DeviceListView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/foxdebug/browser/DeviceView;

    .line 405
    invoke-virtual {p1}, Lcom/foxdebug/browser/DeviceView;->select()V

    .line 406
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->selectedDeviceView:Lcom/foxdebug/browser/DeviceView;

    return-void
.end method

.method public setOnSelect(Lcom/foxdebug/browser/DeviceListView$Callback;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceListView;->callback:Lcom/foxdebug/browser/DeviceListView$Callback;

    return-void
.end method

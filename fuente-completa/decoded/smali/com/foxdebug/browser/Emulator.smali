.class public Lcom/foxdebug/browser/Emulator;
.super Landroid/widget/LinearLayout;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/foxdebug/browser/Emulator$Callback;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private customDevice:Lcom/foxdebug/browser/Device;

.field private deviceListView:Lcom/foxdebug/browser/DeviceListView;

.field private initialized:Z

.field private listener:Lcom/foxdebug/browser/Emulator$Callback;

.field private reference:Landroid/view/View;

.field private seekBars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/widget/SeekBar;",
            ">;"
        }
    .end annotation
.end field

.field private seekBarsLayout:Landroid/widget/LinearLayout;

.field private selectedDevice:Lcom/foxdebug/browser/Device;

.field private theme:Lcom/foxdebug/system/Ui$Theme;


# direct methods
.method static bridge synthetic -$$Nest$fgetcustomDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Emulator;->customDevice:Lcom/foxdebug/browser/Device;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinitialized(Lcom/foxdebug/browser/Emulator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/foxdebug/browser/Emulator;->initialized:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Emulator$Callback;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Emulator;->listener:Lcom/foxdebug/browser/Emulator$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetseekBars(Lcom/foxdebug/browser/Emulator;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Emulator;->selectedDevice:Lcom/foxdebug/browser/Device;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mselectDevice(Lcom/foxdebug/browser/Emulator;Lcom/foxdebug/browser/Device;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/browser/Emulator;->selectDevice(Lcom/foxdebug/browser/Device;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMaxScale(Lcom/foxdebug/browser/Emulator;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/browser/Emulator;->setMaxScale(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V
    .locals 11

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/foxdebug/browser/Emulator;->initialized:Z

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    .line 42
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/foxdebug/browser/Emulator;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 45
    new-instance v2, Lcom/foxdebug/browser/Device;

    const-string v6, "\ue927"

    const/4 v7, 0x0

    const-string v3, "Custom"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;Z)V

    iput-object v2, p0, Lcom/foxdebug/browser/Emulator;->customDevice:Lcom/foxdebug/browser/Device;

    .line 46
    new-instance v1, Lcom/foxdebug/browser/DeviceListView;

    invoke-direct {v1, p1, p2}, Lcom/foxdebug/browser/DeviceListView;-><init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V

    iput-object v1, p0, Lcom/foxdebug/browser/Emulator;->deviceListView:Lcom/foxdebug/browser/DeviceListView;

    .line 47
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x64

    .line 49
    invoke-static {p1, v3}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    invoke-virtual {v1, v2}, Lcom/foxdebug/browser/DeviceListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->deviceListView:Lcom/foxdebug/browser/DeviceListView;

    new-instance v2, Lcom/foxdebug/browser/Emulator$1;

    invoke-direct {v2, p0}, Lcom/foxdebug/browser/Emulator$1;-><init>(Lcom/foxdebug/browser/Emulator;)V

    invoke-virtual {v1, v2}, Lcom/foxdebug/browser/DeviceListView;->setOnSelect(Lcom/foxdebug/browser/DeviceListView$Callback;)V

    .line 63
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->deviceListView:Lcom/foxdebug/browser/DeviceListView;

    const/16 v2, 0x12

    new-array v2, v2, [Lcom/foxdebug/browser/Device;

    iget-object v3, p0, Lcom/foxdebug/browser/Emulator;->customDevice:Lcom/foxdebug/browser/Device;

    aput-object v3, v2, v0

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v5, "iPhone SE"

    const/16 v6, 0x140

    const/16 v7, 0x238

    const-string v8, "\ue928"

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-instance v3, Lcom/foxdebug/browser/Device;

    const/16 v6, 0x29b

    const-string v7, "iPhone 8"

    const/16 v9, 0x177

    invoke-direct {v3, v7, v9, v6, v8}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const/16 v6, 0x19e

    const/16 v7, 0x2e0

    const-string v10, "iPhone 8+"

    invoke-direct {v3, v10, v6, v7, v8}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x3

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "iPhone X"

    const/16 v7, 0x32c

    invoke-direct {v3, v6, v9, v7, v8}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x4

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "iPad"

    const/16 v7, 0x300

    const/16 v8, 0x400

    const-string v9, "\ue92a"

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x5

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "iPad Pro"

    const/16 v7, 0x556

    invoke-direct {v3, v6, v8, v7, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x6

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "Galaxy S5"

    const/16 v7, 0x168

    const/16 v8, 0x280

    const-string v9, "\ue90e"

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v6, 0x7

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "Pixel 2"

    const/16 v7, 0x19b

    const/16 v8, 0x2db

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v6, 0x8

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "Pixel 2 XL"

    const/16 v10, 0x337

    invoke-direct {v3, v6, v7, v10, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v6, 0x9

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v6, "Nexus 5X"

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v6, 0xa

    aput-object v3, v2, v6

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v10, "Nexus 6P"

    invoke-direct {v3, v10, v7, v8, v9}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0xb

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v7, "Nexus 7"

    const/16 v8, 0x258

    const/16 v9, 0x3c0

    const-string v10, "\ue90f"

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0xc

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v7, "Nexus 10"

    const/16 v8, 0x320

    const/16 v9, 0x500

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0xd

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const-string v7, "Laptop"

    const-string v10, "\ue90d"

    invoke-direct {v3, v7, v9, v8, v10}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0xe

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const/16 v7, 0x5a0

    const/16 v8, 0x384

    const-string v9, "Laptop L"

    invoke-direct {v3, v9, v7, v8, v10}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0xf

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const/16 v7, 0x690

    const/16 v8, 0x41a

    const-string v9, "Laptop XL"

    invoke-direct {v3, v9, v7, v8, v10}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0x10

    aput-object v3, v2, v7

    new-instance v3, Lcom/foxdebug/browser/Device;

    const/16 v7, 0x870

    const-string v8, "\ue929"

    const-string v9, "UHD 4k"

    const/16 v10, 0xf00

    invoke-direct {v3, v9, v10, v7, v8}, Lcom/foxdebug/browser/Device;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    const/16 v7, 0x11

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/foxdebug/browser/DeviceListView;->add([Lcom/foxdebug/browser/Device;)V

    .line 84
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->deviceListView:Lcom/foxdebug/browser/DeviceListView;

    iget-object v2, p0, Lcom/foxdebug/browser/Emulator;->customDevice:Lcom/foxdebug/browser/Device;

    invoke-virtual {v1, v2}, Lcom/foxdebug/browser/DeviceListView;->select(Lcom/foxdebug/browser/Device;)V

    .line 86
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBarsLayout:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {v1, v0, v6, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 88
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBarsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBarsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    invoke-direct {v2, v4, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 98
    const-string v2, "borderColor"

    invoke-virtual {p2, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 99
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    const-string p1, "primaryColor"

    invoke-virtual {p2, p1}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 106
    iget-object p1, p0, Lcom/foxdebug/browser/Emulator;->seekBarsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object p1, p0, Lcom/foxdebug/browser/Emulator;->deviceListView:Lcom/foxdebug/browser/DeviceListView;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    const-string p1, "Width"

    const-string p2, "width"

    const/16 v0, 0x32

    invoke-direct {p0, p2, v0, p1}, Lcom/foxdebug/browser/Emulator;->addControl(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    const-string p1, "height"

    const-string p2, "Height"

    invoke-direct {p0, p1, v0, p2}, Lcom/foxdebug/browser/Emulator;->addControl(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    const-string p1, "scale"

    const-string p2, "Scale"

    invoke-direct {p0, p1, v0, p2}, Lcom/foxdebug/browser/Emulator;->addControl(Ljava/lang/String;ILjava/lang/String;)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/foxdebug/browser/Emulator;->addView(Landroid/view/View;)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/foxdebug/browser/Emulator;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {p0, v5}, Lcom/foxdebug/browser/Emulator;->setOrientation(I)V

    return-void
.end method

.method private addControl(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 184
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/foxdebug/browser/Emulator;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 186
    new-instance v2, Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/foxdebug/browser/Emulator;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 188
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x12c

    .line 196
    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMin(I)V

    .line 197
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, p2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p3, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p3, 0xa

    .line 206
    invoke-virtual {v1, p3, p2, p2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 210
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator;->seekBarsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 211
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance p1, Lcom/foxdebug/browser/Emulator$3;

    invoke-direct {p1, p0}, Lcom/foxdebug/browser/Emulator$3;-><init>(Lcom/foxdebug/browser/Emulator;)V

    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private selectDevice(Lcom/foxdebug/browser/Device;)V
    .locals 7

    .line 266
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->selectedDevice:Lcom/foxdebug/browser/Device;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/foxdebug/browser/Device;->deselect()V

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/foxdebug/browser/Device;->select()V

    .line 269
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator;->selectedDevice:Lcom/foxdebug/browser/Device;

    .line 270
    iget v0, p1, Lcom/foxdebug/browser/Device;->id:I

    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->customDevice:Lcom/foxdebug/browser/Device;

    iget v1, v1, Lcom/foxdebug/browser/Device;->id:I

    if-ne v0, v1, :cond_1

    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 275
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v2, "height"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 276
    iget-object v2, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v3, "scale"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 278
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 279
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    .line 282
    iget v5, p1, Lcom/foxdebug/browser/Device;->width:I

    .line 283
    iget p1, p1, Lcom/foxdebug/browser/Device;->height:I

    if-le v5, v3, :cond_2

    sub-int v6, v5, v3

    int-to-float v6, v6

    int-to-float v5, v5

    div-float/2addr v6, v5

    int-to-float p1, p1

    mul-float/2addr v6, p1

    sub-float/2addr p1, v6

    float-to-int p1, p1

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    if-le p1, v4, :cond_3

    sub-int v5, p1, v4

    int-to-float v5, v5

    int-to-float p1, p1

    div-float/2addr v5, p1

    int-to-float p1, v3

    mul-float/2addr v5, p1

    sub-float/2addr p1, v5

    float-to-int v3, p1

    goto :goto_1

    :cond_3
    move v4, p1

    .line 297
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 298
    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 299
    invoke-direct {p0, v3, v4}, Lcom/foxdebug/browser/Emulator;->setMaxScale(II)V

    .line 300
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result p1

    .line 301
    invoke-virtual {v2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 302
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->listener:Lcom/foxdebug/browser/Emulator$Callback;

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, v3, v4, p1}, Lcom/foxdebug/browser/Emulator$Callback;->onChange(IIF)V

    return-void
.end method

.method private setMaxScale(II)V
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 307
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 308
    iget-object v2, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 309
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 310
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    int-to-float v1, v1

    int-to-float p1, p1

    div-float/2addr v1, p1

    int-to-float p1, v2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 314
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 316
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    const/16 p1, 0x64

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public getHeightProgress()I
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScaleProgress()F
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getWidthProgress()I
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public setChangeListener(Lcom/foxdebug/browser/Emulator$Callback;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator;->listener:Lcom/foxdebug/browser/Emulator$Callback;

    return-void
.end method

.method public setReference(Landroid/view/View;)V
    .locals 10

    .line 128
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/SeekBar;

    .line 129
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "height"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/SeekBar;

    .line 130
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator;->seekBars:Ljava/util/HashMap;

    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/SeekBar;

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 133
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    .line 134
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 135
    invoke-virtual {v6}, Landroid/widget/SeekBar;->getMin()I

    .line 136
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMin()I

    .line 138
    invoke-virtual {p0}, Lcom/foxdebug/browser/Emulator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/foxdebug/browser/Emulator$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/foxdebug/browser/Emulator$2;-><init>(Lcom/foxdebug/browser/Emulator;IIILandroid/widget/SeekBar;ILandroid/widget/SeekBar;Landroid/widget/SeekBar;)V

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

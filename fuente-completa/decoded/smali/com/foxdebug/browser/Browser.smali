.class public Lcom/foxdebug/browser/Browser;
.super Landroid/widget/LinearLayout;
.source "Browser.java"


# instance fields
.field public FILE_SELECT_CODE:I

.field final REQUEST_SELECT_FILE:I

.field public console:Z

.field public context:Landroid/content/Context;

.field public desktopMode:Z

.field private deviceEmulator:Lcom/foxdebug/browser/Emulator;

.field public emulator:Z

.field private favicon:Landroid/widget/ImageView;

.field filePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private fontSize:I

.field private imageSize:I

.field private loading:Landroid/widget/ProgressBar;

.field private main:Landroid/widget/LinearLayout;

.field public menu:Lcom/foxdebug/browser/Menu;

.field private onlyConsole:Z

.field private padding:I

.field private theme:Lcom/foxdebug/system/Ui$Theme;

.field private title:Ljava/lang/String;

.field private titleHeight:I

.field private titleText:Landroid/widget/TextView;

.field private titleTextHeight:I

.field private url:Ljava/lang/String;

.field private urlText:Landroid/widget/TextView;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetdeviceEmulator(Lcom/foxdebug/browser/Browser;)Lcom/foxdebug/browser/Emulator;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Browser;->deviceEmulator:Lcom/foxdebug/browser/Emulator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitle(Lcom/foxdebug/browser/Browser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettitleText(Lcom/foxdebug/browser/Browser;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Browser;->titleText:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturl(Lcom/foxdebug/browser/Browser;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/browser/Browser;->url:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputtitle(Lcom/foxdebug/browser/Browser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateDeviceEmulatorLayout(Lcom/foxdebug/browser/Browser;)V
    .locals 0

    invoke-direct {p0}, Lcom/foxdebug/browser/Browser;->createDeviceEmulatorLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfitWebViewTo(Lcom/foxdebug/browser/Browser;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/browser/Browser;->fitWebViewTo(IIF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mkeyboardVisible(Lcom/foxdebug/browser/Browser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/browser/Browser;->keyboardVisible(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDesktopMode(Lcom/foxdebug/browser/Browser;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/browser/Browser;->setDesktopMode(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;Ljava/lang/Boolean;)V
    .locals 2

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/foxdebug/browser/Browser;->FILE_SELECT_CODE:I

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/foxdebug/browser/Browser;->emulator:Z

    .line 72
    iput-boolean v1, p0, Lcom/foxdebug/browser/Browser;->console:Z

    .line 73
    iput-boolean v1, p0, Lcom/foxdebug/browser/Browser;->desktopMode:Z

    .line 75
    const-string v1, ""

    iput-object v1, p0, Lcom/foxdebug/browser/Browser;->url:Ljava/lang/String;

    .line 76
    const-string v1, "Browser"

    iput-object v1, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/foxdebug/browser/Browser;->REQUEST_SELECT_FILE:I

    .line 90
    iput-object p2, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 91
    iput-object p1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    .line 92
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/foxdebug/browser/Browser;->onlyConsole:Z

    const/4 p2, 0x5

    .line 93
    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/foxdebug/browser/Browser;->padding:I

    .line 94
    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/foxdebug/browser/Browser;->fontSize:I

    const/16 p2, 0x23

    .line 95
    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/foxdebug/browser/Browser;->imageSize:I

    const/16 p3, 0x2d

    .line 96
    invoke-static {p1, p3}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/foxdebug/browser/Browser;->titleHeight:I

    .line 97
    invoke-static {p1, p2}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/foxdebug/browser/Browser;->titleTextHeight:I

    .line 99
    invoke-virtual {p0}, Lcom/foxdebug/browser/Browser;->init()V

    return-void
.end method

.method private createDeviceEmulatorLayout()V
    .locals 3

    .line 313
    new-instance v0, Lcom/foxdebug/browser/Emulator;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-direct {v0, v1, v2}, Lcom/foxdebug/browser/Emulator;-><init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V

    iput-object v0, p0, Lcom/foxdebug/browser/Browser;->deviceEmulator:Lcom/foxdebug/browser/Emulator;

    .line 314
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/foxdebug/browser/Emulator;->setReference(Landroid/view/View;)V

    .line 315
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->deviceEmulator:Lcom/foxdebug/browser/Emulator;

    new-instance v1, Lcom/foxdebug/browser/Browser$5;

    invoke-direct {v1, p0}, Lcom/foxdebug/browser/Browser$5;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v0, v1}, Lcom/foxdebug/browser/Emulator;->setChangeListener(Lcom/foxdebug/browser/Emulator$Callback;)V

    return-void
.end method

.method private createEditText(Ljava/lang/String;)Landroid/widget/EditText;
    .locals 6

    .line 487
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 488
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 489
    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {v2}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object v2

    .line 491
    iget v3, p0, Lcom/foxdebug/browser/Browser;->titleTextHeight:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    int-to-float v5, v3

    .line 492
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 493
    const-string v5, "light"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x11000000

    goto :goto_0

    :cond_0
    const v2, 0x11ffffff

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget v1, p0, Lcom/foxdebug/browser/Browser;->titleTextHeight:I

    invoke-direct {p0, v0, v1}, Lcom/foxdebug/browser/Browser;->setTextViewProperties(Landroid/widget/TextView;I)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 498
    invoke-virtual {v0, v3, p1, v3, p1}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 499
    iget p1, p0, Lcom/foxdebug/browser/Browser;->fontSize:I

    const/16 v1, 0xa

    if-ge p1, v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const/16 p1, 0x10

    .line 500
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 501
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 503
    new-instance p1, Lcom/foxdebug/browser/Browser$6;

    invoke-direct {p1, p0}, Lcom/foxdebug/browser/Browser$6;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 518
    new-instance p1, Lcom/foxdebug/browser/Browser$7;

    invoke-direct {p1, p0, v0}, Lcom/foxdebug/browser/Browser$7;-><init>(Lcom/foxdebug/browser/Browser;Landroid/widget/EditText;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-object v0
.end method

.method private createIcon(Ljava/lang/String;)Landroid/widget/ImageView;
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v2, "primaryTextColor"

    invoke-virtual {v1, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 577
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 579
    invoke-direct {p0, v0}, Lcom/foxdebug/browser/Browser;->styleIcon(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private createIconButton(Landroid/graphics/Bitmap;)Landroid/widget/ImageButton;
    .locals 2

    .line 569
    new-instance v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 571
    invoke-direct {p0, v0}, Lcom/foxdebug/browser/Browser;->styleIcon(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method private createIconButton(Ljava/lang/String;)Landroid/widget/ImageButton;
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v2, "primaryTextColor"

    invoke-virtual {v1, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/foxdebug/system/Ui$Icons;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 564
    invoke-direct {p0, p1}, Lcom/foxdebug/browser/Browser;->createIconButton(Landroid/graphics/Bitmap;)Landroid/widget/ImageButton;

    move-result-object p1

    return-object p1
.end method

.method private createMenu()V
    .locals 4

    .line 234
    new-instance v0, Lcom/foxdebug/browser/Menu;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-direct {v0, v1, v2}, Lcom/foxdebug/browser/Menu;-><init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V

    iput-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const/4 v1, 0x0

    .line 236
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "\ue907"

    const-string v3, "Devices"

    invoke-virtual {v0, v2, v3, v1}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string v2, "Disable Cache"

    const-string v3, "\ue901"

    invoke-virtual {v0, v3, v2, v1}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 238
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string v2, "Console"

    const-string v3, "\ue923"

    invoke-virtual {v0, v3, v2, v1}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 239
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string v1, "\ue91f"

    const-string v2, "Open in Browser"

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string v1, "\ue902"

    const-string v2, "Exit"

    invoke-virtual {v0, v1, v2}, Lcom/foxdebug/browser/Menu;->addItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    new-instance v1, Lcom/foxdebug/browser/Browser$4;

    invoke-direct {v1, p0}, Lcom/foxdebug/browser/Browser$4;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v0, v1}, Lcom/foxdebug/browser/Menu;->setCallback(Lcom/foxdebug/browser/Menu$Callback;)V

    return-void
.end method

.method private createTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 480
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 481
    iget v1, p0, Lcom/foxdebug/browser/Browser;->titleHeight:I

    invoke-direct {p0, v0, v1}, Lcom/foxdebug/browser/Browser;->setTextViewProperties(Landroid/widget/TextView;I)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private createTile()Landroid/widget/LinearLayout;
    .locals 1

    .line 547
    iget v0, p0, Lcom/foxdebug/browser/Browser;->titleHeight:I

    invoke-direct {p0, v0}, Lcom/foxdebug/browser/Browser;->createTile(I)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private createTile(I)Landroid/widget/LinearLayout;
    .locals 3

    .line 551
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 553
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v2, "primaryColor"

    invoke-virtual {v1, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 554
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x3

    .line 557
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    const/16 p1, 0x30

    .line 558
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    return-object v0
.end method

.method private fitWebViewTo(IIF)V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setScaleX(F)V

    .line 422
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p3}, Landroid/webkit/WebView;->setScaleY(F)V

    .line 423
    iget-object p3, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, p2

    .line 426
    :goto_1
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    invoke-virtual {p3, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    .line 430
    invoke-direct {p0, p1, p2}, Lcom/foxdebug/browser/Browser;->updateViewportDimension(II)V

    :cond_2
    return-void
.end method

.method private keyboardVisible(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 450
    const-string v1, "input_method"

    if-eqz p1, :cond_0

    .line 451
    iget-object p1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x2

    .line 454
    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    return-void

    .line 456
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 459
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private setDesktopMode(Z)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 346
    iput-boolean p1, p0, Lcom/foxdebug/browser/Browser;->desktopMode:Z

    if-eqz p1, :cond_0

    .line 349
    const-string v1, "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36"

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 347
    :goto_0
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredWidth()I

    .line 355
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    .line 358
    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 359
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 363
    iget-object p1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method private setTextViewProperties(Landroid/widget/TextView;I)V
    .locals 3

    .line 326
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, p2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 p2, 0x10

    .line 331
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v1, 0x1

    .line 332
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 333
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 334
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 335
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 336
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v2, "primaryTextColor"

    invoke-virtual {v1, v2}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 338
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private styleIcon(Landroid/widget/ImageView;)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/foxdebug/system/Ui;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 436
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/foxdebug/browser/Browser;->imageSize:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x10

    .line 441
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x0

    .line 442
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 443
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v1, 0x1

    .line 445
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 446
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    return-void
.end method

.method private updateViewportDimension(II)V
    .locals 2

    if-lez p1, :cond_0

    .line 408
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 410
    const-string v0, "0.1"

    const-string v1, ""

    goto :goto_0

    .line 407
    :cond_0
    const-string p1, "device-width"

    const-string v1, "device-height"

    const-string v0, "1"

    :goto_0
    if-lez p2, :cond_1

    .line 414
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_1
    iget-object p2, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    filled-new-array {p1, v1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "!function(){var e=document.head;if(e){e.querySelectorAll(\"meta[name=viewport]\").forEach(function(e){e.remove()});var t=document.createElement(\"meta\");t.name=\"viewport\",t.content=\"width=%s, height=%s, initial-scale=%s\",e.append(t)}}();"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 584
    iget-boolean v0, p0, Lcom/foxdebug/browser/Browser;->console:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/Browser;->setConsoleVisible(Z)V

    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 595
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public goBack()Z
    .locals 5

    .line 464
    iget-boolean v0, p0, Lcom/foxdebug/browser/Browser;->console:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->menu:Lcom/foxdebug/browser/Menu;

    const-string v3, "Console"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/foxdebug/browser/Menu;->setChecked(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 466
    invoke-virtual {p0, v2}, Lcom/foxdebug/browser/Browser;->setConsoleVisible(Z)V

    return v1

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 472
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/browser/Browser;->url:Ljava/lang/String;

    return v1

    :cond_1
    return v2
.end method

.method public init()V
    .locals 7

    .line 111
    const-string v0, "\ue922"

    invoke-direct {p0, v0}, Lcom/foxdebug/browser/Browser;->createIcon(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/browser/Browser;->favicon:Landroid/widget/ImageView;

    .line 112
    const-string v0, "\ue91a"

    invoke-direct {p0, v0}, Lcom/foxdebug/browser/Browser;->createIconButton(Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v0

    .line 113
    new-instance v1, Lcom/foxdebug/browser/Browser$1;

    invoke-direct {v1, p0}, Lcom/foxdebug/browser/Browser$1;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const-string v1, "\ue91b"

    invoke-direct {p0, v1}, Lcom/foxdebug/browser/Browser;->createIconButton(Ljava/lang/String;)Landroid/widget/ImageButton;

    move-result-object v1

    .line 123
    new-instance v2, Lcom/foxdebug/browser/Browser$2;

    invoke-direct {v2, p0}, Lcom/foxdebug/browser/Browser$2;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v2, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const v5, 0x1010077

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/foxdebug/browser/Browser;->loading:Landroid/widget/ProgressBar;

    .line 133
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/foxdebug/browser/Browser;->imageSize:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    .line 142
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 143
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v3, p0, Lcom/foxdebug/browser/Browser;->favicon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 145
    iget-object v3, p0, Lcom/foxdebug/browser/Browser;->loading:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcom/foxdebug/browser/Browser;->createTile()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 148
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    iget-boolean v2, p0, Lcom/foxdebug/browser/Browser;->onlyConsole:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/foxdebug/browser/Browser;->createTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/foxdebug/browser/Browser;->createEditText(Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/foxdebug/browser/Browser;->titleText:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    iget-boolean v2, p0, Lcom/foxdebug/browser/Browser;->onlyConsole:Z

    if-nez v2, :cond_1

    .line 152
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    :cond_1
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 158
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 159
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 162
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    new-instance v4, Lcom/foxdebug/browser/Browser$3;

    invoke-direct {v4, p0}, Lcom/foxdebug/browser/Browser$3;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 200
    invoke-direct {p0, v0, v0, v4}, Lcom/foxdebug/browser/Browser;->fitWebViewTo(IIF)V

    .line 202
    iget-object v5, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/foxdebug/browser/BrowserChromeClient;

    invoke-direct {v6, p0}, Lcom/foxdebug/browser/BrowserChromeClient;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 203
    iget-object v5, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    new-instance v6, Lcom/foxdebug/browser/BrowserWebViewClient;

    invoke-direct {v6, p0}, Lcom/foxdebug/browser/BrowserWebViewClient;-><init>(Lcom/foxdebug/browser/Browser;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 205
    iget-object v5, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    .line 206
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 207
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 208
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 209
    invoke-virtual {v5, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 210
    invoke-virtual {v5, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 212
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/foxdebug/browser/Browser;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v5, 0x11

    .line 213
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 214
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->theme:Lcom/foxdebug/system/Ui$Theme;

    const-string v4, "primaryColor"

    invoke-virtual {v2, v4}, Lcom/foxdebug/system/Ui$Theme;->get(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 222
    iget-object v2, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0, v1}, Lcom/foxdebug/browser/Browser;->setOrientation(I)V

    .line 225
    invoke-virtual {p0, v1}, Lcom/foxdebug/browser/Browser;->setFocusableInTouchMode(Z)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/foxdebug/browser/Browser;->setFocusable(Z)V

    .line 227
    invoke-direct {p0}, Lcom/foxdebug/browser/Browser;->createMenu()V

    .line 228
    invoke-virtual {p0, v3}, Lcom/foxdebug/browser/Browser;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/Browser;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setConsoleVisible(Z)V
    .locals 2

    .line 391
    iput-boolean p1, p0, Lcom/foxdebug/browser/Browser;->console:Z

    if-eqz p1, :cond_0

    .line 393
    const-string p1, "show"

    goto :goto_0

    :cond_0
    const-string p1, "hide"

    :goto_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "document.dispatchEvent(new CustomEvent(\'%sconsole\'))"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 394
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public setDesktopMode()V
    .locals 2

    .line 367
    iget-boolean v0, p0, Lcom/foxdebug/browser/Browser;->desktopMode:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    .line 369
    iget-object v1, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v1

    .line 370
    invoke-direct {p0, v0, v1}, Lcom/foxdebug/browser/Browser;->updateViewportDimension(II)V

    :cond_0
    return-void
.end method

.method public setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->favicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->loading:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 382
    iput-object p1, p0, Lcom/foxdebug/browser/Browser;->title:Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->titleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1

    .line 375
    iput-object p1, p0, Lcom/foxdebug/browser/Browser;->url:Ljava/lang/String;

    .line 376
    invoke-virtual {p0, p1}, Lcom/foxdebug/browser/Browser;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 377
    invoke-virtual {p0, v0}, Lcom/foxdebug/browser/Browser;->setProgressBarVisible(Z)V

    .line 378
    iget-object v0, p0, Lcom/foxdebug/browser/Browser;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

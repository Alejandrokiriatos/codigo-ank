.class public Lcom/foxdebug/crashhandler/CrashActivity;
.super Landroid/app/Activity;
.source "CrashActivity.java"


# instance fields
.field private colorBorder:I

.field private colorButtonPrimaryBg:I

.field private colorButtonPrimaryText:I

.field private colorButtonSecondaryBg:I

.field private colorButtonSecondaryText:I

.field private colorLinkText:I

.field private colorMetaLabel:I

.field private colorMetaValue:I

.field private colorPrimaryBg:I

.field private colorPrimaryText:I

.field private colorSecondaryBg:I

.field private colorSecondaryText:I

.field private colorTraceBg:I

.field private errorMessage:Ljava/lang/String;

.field private errorType:Ljava/lang/String;

.field private fullReport:Ljava/lang/String;

.field private isDarkTheme:Z

.field private stackTrace:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetfullReport(Lcom/foxdebug/crashhandler/CrashActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->fullReport:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private applySystemBarColors()V
    .locals 2

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/foxdebug/crashhandler/CrashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 365
    iget v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 366
    iget v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 368
    iget-boolean v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->isDarkTheme:Z

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x2000

    .line 370
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private createButton(Ljava/lang/String;IIZ)Landroid/widget/TextView;
    .locals 3

    .line 410
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41700000    # 15.0f

    .line 412
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 413
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 p1, 0x11

    .line 414
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 p1, 0x41800000    # 16.0f

    .line 415
    invoke-direct {p0, p1}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result p2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-direct {p0, v1}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result p1

    invoke-direct {p0, v1}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 416
    const-string p1, "sans-serif-medium"

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 419
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 p2, 0x40800000    # 4.0f

    .line 420
    invoke-direct {p0, p2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz p4, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 423
    invoke-direct {p0, p2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result p2

    iget p3, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorBorder:I

    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 426
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 428
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x1

    const/4 p3, -0x2

    invoke-direct {p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 431
    invoke-direct {p0, p2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 432
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    new-instance p1, Lcom/foxdebug/crashhandler/CrashActivity$4;

    invoke-direct {p1, p0, v0}, Lcom/foxdebug/crashhandler/CrashActivity$4;-><init>(Lcom/foxdebug/crashhandler/CrashActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method private createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 6

    .line 377
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 379
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x40c00000    # 6.0f

    .line 382
    invoke-direct {p0, v5}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v5

    invoke-virtual {v2, v1, v1, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 383
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41500000    # 13.0f

    .line 387
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 388
    iget v2, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorMetaLabel:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 389
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 390
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42c80000    # 100.0f

    .line 391
    invoke-direct {p0, v5}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v5

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 393
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 396
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 398
    iget p1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorMetaValue:I

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 399
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 402
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private deriveBorderColor(II)I
    .locals 3

    .line 325
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 326
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 327
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    add-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 328
    iget-boolean p2, p0, Lcom/foxdebug/crashhandler/CrashActivity;->isDarkTheme:Z

    if-eqz p2, :cond_0

    add-int/lit8 v0, v0, 0x14

    const/16 p2, 0xff

    .line 329
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x14

    .line 330
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 p1, p1, 0x14

    .line 331
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x14

    const/4 p2, 0x0

    .line 333
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, -0x14

    .line 334
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 p1, p1, -0x14

    .line 335
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 337
    :goto_0
    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private deriveMetaLabelColor(I)I
    .locals 3

    .line 356
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 357
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 358
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xb4

    .line 354
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private deriveTraceBg(I)I
    .locals 3

    .line 341
    iget-boolean v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->isDarkTheme:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 344
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 345
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit8 p1, p1, -0xc

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 342
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1

    .line 348
    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    const/16 v1, 0xff

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 349
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 350
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x8

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 347
    invoke-static {v0, v2, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private dp(F)I
    .locals 2

    .line 522
    invoke-virtual {p0}, Lcom/foxdebug/crashhandler/CrashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 519
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getAppLanguage()Ljava/lang/String;
    .locals 5

    .line 489
    const-string v0, "lang"

    const-string v1, "settings.json"

    .line 491
    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/foxdebug/crashhandler/CrashActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 493
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/foxdebug/crashhandler/CrashActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 497
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 501
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 503
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 504
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 506
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 508
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 515
    :catch_0
    :cond_2
    const-string v0, "en-us"

    return-object v0
.end method

.method private getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    .line 298
    invoke-direct {p0, p3}, Lcom/foxdebug/crashhandler/CrashActivity;->safeParseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 300
    :try_start_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 302
    invoke-direct {p0, p1, p3}, Lcom/foxdebug/crashhandler/CrashActivity;->safeParseColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 305
    :catch_0
    :cond_1
    invoke-direct {p0, p3}, Lcom/foxdebug/crashhandler/CrashActivity;->safeParseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private getWebViewVersion()Ljava/lang/String;
    .locals 6

    .line 452
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 v0, 0x3

    .line 462
    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.google.android.webview"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.android.chrome"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "com.android.webview"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    .line 467
    aget-object v4, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 469
    :try_start_2
    invoke-virtual {p0}, Lcom/foxdebug/crashhandler/CrashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 471
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :catch_2
    :cond_2
    :try_start_3
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    .line 485
    :catch_3
    const-string v0, "Unknown"

    return-object v0
.end method

.method private loadThemeColors()V
    .locals 3

    .line 269
    :try_start_0
    invoke-virtual {p0}, Lcom/foxdebug/crashhandler/CrashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "acode_theme"

    const/4 v2, 0x0

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 273
    :goto_0
    const-string v1, "primaryColor"

    const-string v2, "#23272a"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    .line 274
    const-string v1, "secondaryColor"

    const-string v2, "#2d3134"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryBg:I

    .line 275
    const-string v1, "primaryTextColor"

    const-string v2, "#f5f5f5"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryText:I

    .line 276
    const-string v1, "secondaryTextColor"

    const-string v2, "#e4e4e4"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryText:I

    .line 277
    const-string v1, "linkTextColor"

    const-string v2, "#8ab4f8"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorLinkText:I

    .line 278
    const-string v1, "activeColor"

    const-string v2, "#4285f4"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonPrimaryBg:I

    .line 279
    const-string v1, "buttonTextColor"

    const-string v2, "#ffffff"

    invoke-direct {p0, v0, v1, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->getThemeColor(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonPrimaryText:I

    .line 280
    iget v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryBg:I

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryBg:I

    .line 281
    iget v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryText:I

    iput v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryText:I

    .line 284
    const-string v1, "dark"

    if-eqz v0, :cond_0

    .line 286
    :try_start_1
    const-string v2, "type"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :catch_1
    :cond_0
    const-string v0, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->isDarkTheme:Z

    .line 291
    iget v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    iget v1, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryBg:I

    invoke-direct {p0, v0, v1}, Lcom/foxdebug/crashhandler/CrashActivity;->deriveBorderColor(II)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorBorder:I

    .line 292
    iget v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    invoke-direct {p0, v0}, Lcom/foxdebug/crashhandler/CrashActivity;->deriveTraceBg(I)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorTraceBg:I

    .line 293
    iget v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryText:I

    invoke-direct {p0, v0}, Lcom/foxdebug/crashhandler/CrashActivity;->deriveMetaLabelColor(I)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorMetaLabel:I

    .line 294
    iget v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryText:I

    iput v0, p0, Lcom/foxdebug/crashhandler/CrashActivity;->colorMetaValue:I

    return-void
.end method

.method private safeParseColor(Ljava/lang/String;)I
    .locals 1

    .line 309
    const-string v0, "#000000"

    invoke-direct {p0, p1, v0}, Lcom/foxdebug/crashhandler/CrashActivity;->safeParseColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private safeParseColor(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 314
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 317
    :catch_0
    :try_start_1
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    const/high16 p1, -0x1000000

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v0, p0

    .line 57
    const-string v1, "Unknown"

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->loadThemeColors()V

    .line 60
    invoke-direct {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->applySystemBarColors()V

    .line 62
    invoke-virtual {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 63
    const-string v3, "error_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->errorType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 64
    const-string v3, "Unexpected Crash"

    iput-object v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->errorType:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v3, "error_message"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->errorMessage:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 66
    const-string v3, "No error message provided"

    iput-object v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->errorMessage:Ljava/lang/String;

    .line 67
    :cond_1
    const-string v3, "stack_trace"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->stackTrace:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 68
    const-string v2, "No stack trace details available."

    iput-object v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->stackTrace:Ljava/lang/String;

    :cond_2
    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 74
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_3

    .line 76
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_3
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v4, v1

    .line 84
    :catch_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (SDK "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    invoke-direct {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getWebViewVersion()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-direct {v0}, Lcom/foxdebug/crashhandler/CrashActivity;->getAppLanguage()Ljava/lang/String;

    move-result-object v8

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Informe de fallo de Código ANK\n==================\nWebView: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nApp Language: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nError Message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/foxdebug/crashhandler/CrashActivity;->errorMessage:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nApp Version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")\nDevice: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\nAndroid Version: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\n\nStack Trace:\n"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v0, Lcom/foxdebug/crashhandler/CrashActivity;->stackTrace:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/foxdebug/crashhandler/CrashActivity;->fullReport:Ljava/lang/String;

    .line 100
    new-instance v9, Landroid/widget/ScrollView;

    invoke-direct {v9, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 101
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget v11, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryBg:I

    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    const/4 v11, 0x1

    .line 105
    invoke-virtual {v9, v11}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 107
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    invoke-direct {v14, v12, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 112
    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v12

    .line 113
    invoke-virtual {v13, v12, v12, v12, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 114
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    new-instance v12, Landroid/widget/TextView;

    invoke-direct {v12, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 117
    const-string v14, "Código ANK se detuvo"

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v14, 0x41c00000    # 24.0f

    .line 118
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    iget v14, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorPrimaryText:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    const-string v14, "sans-serif-medium"

    invoke-static {v14, v11}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 121
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v14, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x41200000    # 10.0f

    .line 124
    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v11

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v2

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v11, v15, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 129
    const-string v11, "Ocurrió un error grave en el sistema nativo de Código ANK. Los detalles y el registro quedaron guardados abajo."

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41600000    # 14.0f

    .line 130
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 131
    iget v11, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryText:I

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v14, -0x1

    invoke-direct {v11, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x41a00000    # 20.0f

    .line 135
    invoke-direct {v0, v12}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v15, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    const-string v11, "DEVICE & APP INFO"

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41300000    # 11.0f

    .line 141
    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 142
    iget v12, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorLinkText:I

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    const-string v12, "sans-serif"

    const/4 v14, 0x1

    invoke-static {v12, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v14, -0x1

    invoke-direct {v15, v14, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x40c00000    # 6.0f

    .line 147
    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v14

    const/4 v11, 0x0

    invoke-virtual {v15, v11, v11, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 148
    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x1

    .line 152
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v11, 0x41800000    # 16.0f

    .line 153
    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v14

    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v15

    move-object/from16 v16, v9

    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v9

    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v11

    invoke-virtual {v2, v14, v15, v9, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 155
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 156
    iget v11, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryBg:I

    invoke-virtual {v9, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v11, 0x40800000    # 4.0f

    .line 157
    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v14}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v14, 0x3f800000    # 1.0f

    .line 158
    invoke-direct {v0, v14}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v15

    iget v14, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorBorder:I

    invoke-virtual {v9, v15, v14}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 159
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x1

    invoke-direct {v9, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v14, 0x41a00000    # 20.0f

    .line 164
    invoke-direct {v0, v14}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v9, v15, v15, v15, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 165
    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "App Version"

    invoke-direct {v0, v4, v1}, Lcom/foxdebug/crashhandler/CrashActivity;->createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 168
    const-string v1, "Device"

    invoke-direct {v0, v1, v3}, Lcom/foxdebug/crashhandler/CrashActivity;->createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    const-string v1, "Android OS"

    invoke-direct {v0, v1, v5}, Lcom/foxdebug/crashhandler/CrashActivity;->createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    const-string v1, "WebView"

    invoke-direct {v0, v1, v7}, Lcom/foxdebug/crashhandler/CrashActivity;->createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    const-string v1, "App Language"

    invoke-direct {v0, v1, v8}, Lcom/foxdebug/crashhandler/CrashActivity;->createMetaRow(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 175
    const-string v2, "STACK TRACE"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41300000    # 11.0f

    .line 176
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 177
    iget v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorLinkText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v14, 0x1

    .line 178
    invoke-static {v12, v14}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 179
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v15, -0x1

    invoke-direct {v2, v15, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x40c00000    # 6.0f

    .line 182
    invoke-direct {v0, v3}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v3

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v15, v15, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 188
    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v3

    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v4

    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v5

    invoke-direct {v0, v2}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 189
    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 190
    iget v4, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorTraceBg:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 191
    invoke-direct {v0, v11}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 192
    invoke-direct {v0, v4}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v4

    iget v5, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorBorder:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 193
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 195
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x438c0000    # 280.0f

    .line 197
    invoke-direct {v0, v4}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v4

    const/4 v14, -0x1

    invoke-direct {v3, v14, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41c00000    # 24.0f

    .line 198
    invoke-direct {v0, v4}, Lcom/foxdebug/crashhandler/CrashActivity;->dp(F)I

    move-result v4

    const/4 v15, 0x0

    invoke-virtual {v3, v15, v15, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 202
    new-instance v4, Landroid/widget/HorizontalScrollView;

    invoke-direct {v4, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 204
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v6, v0, Lcom/foxdebug/crashhandler/CrashActivity;->stackTrace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 207
    iget v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorSecondaryText:I

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 208
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v14, 0x1

    .line 209
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 210
    invoke-virtual {v5, v14}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 212
    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 213
    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 215
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 218
    invoke-virtual {v1, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v14, -0x1

    invoke-direct {v2, v14, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 222
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonPrimaryText:I

    iget v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonPrimaryBg:I

    const-string v4, "Reiniciar Código ANK"

    const/4 v15, 0x0

    invoke-direct {v0, v4, v2, v3, v15}, Lcom/foxdebug/crashhandler/CrashActivity;->createButton(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 225
    new-instance v3, Lcom/foxdebug/crashhandler/CrashActivity$1;

    invoke-direct {v3, v0}, Lcom/foxdebug/crashhandler/CrashActivity$1;-><init>(Lcom/foxdebug/crashhandler/CrashActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryText:I

    iget v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryBg:I

    const-string v4, "Copy Error Details"

    const/4 v14, 0x1

    invoke-direct {v0, v4, v2, v3, v14}, Lcom/foxdebug/crashhandler/CrashActivity;->createButton(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 240
    new-instance v3, Lcom/foxdebug/crashhandler/CrashActivity$2;

    invoke-direct {v3, v0}, Lcom/foxdebug/crashhandler/CrashActivity$2;-><init>(Lcom/foxdebug/crashhandler/CrashActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget v2, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryText:I

    iget v3, v0, Lcom/foxdebug/crashhandler/CrashActivity;->colorButtonSecondaryBg:I

    const-string v4, "Close"

    invoke-direct {v0, v4, v2, v3, v14}, Lcom/foxdebug/crashhandler/CrashActivity;->createButton(Ljava/lang/String;IIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 252
    new-instance v3, Lcom/foxdebug/crashhandler/CrashActivity$3;

    invoke-direct {v3, v0}, Lcom/foxdebug/crashhandler/CrashActivity$3;-><init>(Lcom/foxdebug/crashhandler/CrashActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v1, v16

    .line 262
    invoke-virtual {v1, v13}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 263
    invoke-virtual {v0, v1}, Lcom/foxdebug/crashhandler/CrashActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

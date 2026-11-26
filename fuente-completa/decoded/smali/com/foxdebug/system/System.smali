.class public Lcom/foxdebug/system/System;
.super Lorg/apache/cordova/CordovaPlugin;
.source "System.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemPlugin"


# instance fields
.field private REQ_PERMISSION:I

.field private REQ_PERMISSIONS:I

.field private activity:Landroid/app/Activity;

.field private context:Landroid/content/Context;

.field private fileProviderAuthority:Ljava/lang/String;

.field private intentHandler:Lorg/apache/cordova/CallbackContext;

.field private requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

.field private rewardPassManager:Lcom/foxdebug/system/RewardPassManager;

.field private systemBarColor:I

.field private theme:Lcom/foxdebug/system/Ui$Theme;

.field private webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/foxdebug/system/System;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$maddShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/foxdebug/system/System;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearCache(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->clearCache(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompareFileText(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/foxdebug/system/System;->compareFileText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompareTexts(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/system/System;->compareTexts(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdecode(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/system/System;->decode(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mencode(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/system/System;->encode(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mextractAsset(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/system/System;->extractAsset(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfileAction(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/foxdebug/system/System;->fileAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAndroidVersion(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getAndroidVersion(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAppInfo(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getAppInfo(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAvailableEncodings(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getAvailableEncodings(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGlobalSetting(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->getGlobalSetting(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMimeTypeFromExtension(Lcom/foxdebug/system/System;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWebkitInfo(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getWebkitInfo(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasPermission(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->hasPermission(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misPowerSaveMode(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->isPowerSaveMode(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchApp(Lcom/foxdebug/system/System;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/foxdebug/system/System;->launchApp(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenInBrowser(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->openInBrowser(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpinFileShortcut(Lcom/foxdebug/system/System;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->pinFileShortcut(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpinShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->pinShortcut(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveShortcut(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->removeShortcut(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPermission(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->requestPermission(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPermissions(Lcom/foxdebug/system/System;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->requestPermissions(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNativeContextMenuDisabled(Lcom/foxdebug/system/System;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->setNativeContextMenuDisabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUiTheme(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/foxdebug/system/System;->setUiTheme(Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/foxdebug/system/System;->REQ_PERMISSIONS:I

    const/4 v0, 0x2

    .line 82
    iput v0, p0, Lcom/foxdebug/system/System;->REQ_PERMISSION:I

    const/high16 v0, -0x1000000

    .line 83
    iput v0, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    return-void
.end method

.method private addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1638
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 1639
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1640
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 1638
    invoke-static {v0, p4}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p4

    .line 1642
    invoke-static {p4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1643
    invoke-static {p4}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    .line 1644
    iget-object v0, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    .line 1645
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    .line 1646
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1647
    const-string v1, "action"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    const-string p5, "data"

    invoke-virtual {v0, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    new-instance p5, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    iget-object p6, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-direct {p5, p6, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p5, p2}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1652
    invoke-virtual {p1, p3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1653
    invoke-virtual {p1, p4}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1654
    invoke-virtual {p1, v0}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1655
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    .line 1657
    iget-object p2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {p2, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 1658
    invoke-virtual {p7}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1660
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p7, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private applySystemBarTheme()V
    .locals 4

    .line 1745
    iget-object v0, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1746
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0xc000000

    .line 1751
    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    const/high16 v2, -0x80000000

    .line 1752
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1754
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1755
    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 1756
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    .line 1759
    :cond_0
    iget v2, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1761
    iget-object v1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1763
    iget v2, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1767
    :cond_1
    iget v1, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1768
    iget v1, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 1771
    invoke-direct {p0, v0}, Lcom/foxdebug/system/System;->setStatusBarStyle(Landroid/view/Window;)V

    .line 1772
    invoke-direct {p0, v0}, Lcom/foxdebug/system/System;->setNavigationBarStyle(Landroid/view/Window;)V

    return-void
.end method

.method private checkPermissions(Lorg/json/JSONArray;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1064
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1065
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1067
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1068
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1071
    iget-object v3, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3, v2}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1072
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1069
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Permission cannot be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid permission entry at index "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemPlugin"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1079
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 1080
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private clearCache(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2167
    iget-object v0, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->clearCache(Z)V

    .line 2168
    const-string v0, "Cache cleared"

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void
.end method

.method private compareFileText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 10

    .line 732
    const-string v0, "::"

    const-string v1, "Failed to close input stream while reading file."

    const-string v2, "SystemPlugin"

    .line 0
    const-string v3, "SAF_FALLBACK: Invalid SAF URI format - "

    const-string v4, "Unsupported URI scheme: "

    const-string v5, "Charset not supported: "

    if-eqz p1, :cond_10

    .line 732
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p2, :cond_1

    .line 737
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 738
    :cond_1
    const-string p2, "UTF-8"

    .line 741
    :cond_2
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 742
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 746
    :cond_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 747
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 751
    const-string v6, "file"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_7

    .line 752
    new-instance p1, Ljava/io/File;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 756
    const-string p1, "File does not exist"

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 759
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_5

    .line 760
    const-string p1, "Path is not a file"

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 763
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_6

    .line 764
    const-string p1, "File is not readable"

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 768
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    .line 769
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_2

    .line 770
    :cond_7
    const-string v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_f

    const/4 v4, 0x0

    .line 778
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v6, :cond_8

    const/4 v5, 0x2

    .line 781
    :try_start_2
    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 782
    aget-object v0, p1, v8

    .line 783
    aget-object p1, p1, v7

    .line 786
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 787
    invoke-static {v0, p1}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 792
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 792
    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 800
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 801
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 802
    invoke-virtual {p1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    if-nez v4, :cond_9

    .line 805
    const-string p1, "Cannot open file"

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_11

    .line 825
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_1
    move-exception p1

    .line 827
    :try_start_5
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_6

    .line 809
    :cond_9
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 p2, 0x2000

    .line 815
    :try_start_7
    new-array p2, p2, [C

    .line 817
    :goto_1
    invoke-virtual {v0, p2}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_a

    .line 818
    invoke-virtual {p1, p2, v8, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 820
    :cond_a
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 821
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_b

    .line 825
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catch_2
    move-exception p1

    .line 827
    :try_start_a
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 841
    :cond_b
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_c

    .line 842
    invoke-virtual {p4, v7}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_6

    .line 847
    :cond_c
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 848
    invoke-virtual {p4, v8}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_6

    .line 850
    :cond_d
    invoke-virtual {p4, v7}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 810
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    :try_start_c
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v4, :cond_e

    .line 825
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_4

    :catch_3
    move-exception p2

    .line 827
    :try_start_e
    invoke-static {v2, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 834
    :cond_e
    :goto_4
    throw p1

    .line 836
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 733
    :cond_10
    :goto_5
    const-string p1, "File URI is required"

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    return-void

    :catch_4
    move-exception p1

    .line 853
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_11
    :goto_6
    return-void
.end method

.method private compareTexts(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 872
    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p2, :cond_1

    move-object p2, v0

    .line 876
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    .line 877
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void

    .line 882
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 883
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void

    .line 885
    :cond_3
    invoke-virtual {p3, v2}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 888
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2053
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2054
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 p2, 0x2000

    .line 2056
    :try_start_1
    new-array p2, p2, [B

    .line 2058
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2059
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2061
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2062
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    .line 2052
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method private createFileShortcutBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1254
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 1257
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42900000    # 72.0f

    .line 1254
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/4 v3, 0x0

    cmpg-float v4, v0, v3

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 1262
    :goto_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1263
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1264
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1265
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x7

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 1269
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->pickShortcutColor(Ljava/lang/String;)I

    move-result v6

    .line 1270
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, v0

    const v6, 0x3e75c28f    # 0.24f

    mul-float/2addr v6, v0

    .line 1272
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7, v3, v3, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1273
    invoke-virtual {v4, v7, v6, v6, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v3, -0x1

    .line 1275
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1276
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1277
    const-string v3, "sans-serif-medium"

    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1279
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getShortcutLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1280
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    const v1, 0x3e6147ae    # 0.22f

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    const v1, 0x3e851eb8    # 0.26f

    goto :goto_1

    :cond_2
    const v1, 0x3eae147b    # 0.34f

    :goto_1
    mul-float/2addr v1, v0

    .line 1282
    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1283
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 1284
    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float v3, v0, v3

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    div-float/2addr v0, v1

    .line 1285
    invoke-virtual {v4, p1, v0, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v2
.end method

.method private decode(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "Charset not supported: "

    const/4 v1, 0x0

    .line 679
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 681
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 686
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 687
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p1

    .line 688
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 689
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 691
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private deprecatedFlagUiLightStatusBar()I
    .locals 1

    const/16 v0, 0x2000

    return v0
.end method

.method private encode(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const-string v0, "Charset not supported: "

    .line 701
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 706
    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    .line 707
    invoke-virtual {p2, p1}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 708
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    new-array p2, p2, [B

    .line 709
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 710
    invoke-virtual {p3, p2}, Lorg/apache/cordova/CallbackContext;->success([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private ensureShareableCopy(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2004
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2005
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2006
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unable to create shared cache directory"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2009
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2010
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    .line 2012
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2013
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    :cond_4
    if-eqz p2, :cond_5

    .line 2015
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2016
    :cond_5
    const-string p2, "shared-file"

    .line 2019
    :cond_6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2020
    invoke-direct {p0, v1}, Lcom/foxdebug/system/System;->ensureUniqueFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 2021
    invoke-direct {p0, p1, p2}, Lcom/foxdebug/system/System;->copyFile(Ljava/io/File;Ljava/io/File;)V

    return-object p2
.end method

.method private ensureUniqueFile(Ljava/io/File;)Ljava/io/File;
    .locals 8

    .line 2026
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2030
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    .line 2033
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    .line 2035
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2036
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    .line 2034
    :cond_1
    const-string v1, ""

    :goto_0
    const/4 v2, 0x1

    move-object v3, p1

    move v4, v2

    .line 2041
    :goto_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2042
    new-instance v3, Ljava/io/File;

    .line 2043
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private extractAsset(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 2194
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 p2, 0x2000

    .line 2197
    :try_start_2
    new-array p2, p2, [B

    .line 2199
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2200
    invoke-virtual {v0, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2202
    :cond_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 2203
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2204
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catchall_0
    move-exception p2

    .line 2193
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p1

    .line 2205
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 2206
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 2207
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private fileAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 1452
    const-string v4, "android.intent.action.SEND"

    iget-object v5, v1, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    .line 1453
    iget-object v6, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 1454
    invoke-direct/range {p0 .. p2}, Lcom/foxdebug/system/System;->getContentProviderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to access file for action "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1460
    :cond_0
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1462
    const-string v9, ""

    move-object/from16 v10, p4

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1463
    const-string v9, "text/plain"

    move-object v10, v9

    .line 1466
    :cond_1
    invoke-direct {v1, v10, v7, v0}, Lcom/foxdebug/system/System;->resolveMimeType(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v0, :cond_2

    .line 1469
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 1470
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_3

    .line 1472
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1473
    :cond_3
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1475
    :cond_4
    const-string v12, "shared-file"

    if-eqz v11, :cond_5

    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    move-object v11, v12

    .line 1478
    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "android.intent.extra.TITLE"

    const-string v15, "android.intent.extra.STREAM"

    const-string v10, "android.intent.action.EDIT"

    if-eqz v13, :cond_7

    .line 1479
    :try_start_2
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x1

    .line 1480
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1482
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v11, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v6

    .line 1481
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1484
    invoke-virtual {v8, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1485
    invoke-virtual {v8, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    const-string v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v8, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_a

    .line 1487
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1488
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1495
    :cond_7
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x43

    goto :goto_1

    :cond_8
    const/16 v0, 0x41

    .line 1499
    :goto_1
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1500
    invoke-virtual {v8, v7, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1502
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v11, v7}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    .line 1501
    invoke-virtual {v8, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const/4 v9, 0x1

    .line 1504
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1505
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1506
    invoke-virtual {v8, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1508
    :cond_9
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1509
    invoke-virtual {v8, v15, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1514
    :cond_a
    :goto_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    goto :goto_3

    :cond_b
    const/4 v0, 0x1

    .line 1517
    :goto_3
    invoke-direct {v1, v8, v7, v0}, Lcom/foxdebug/system/System;->grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 1519
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 1520
    invoke-static {v8, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v9, 0x1

    .line 1521
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1522
    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    .line 1524
    :cond_c
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 1533
    :cond_d
    invoke-virtual {v5, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_e
    :goto_4
    const/4 v0, 0x0

    .line 1526
    invoke-static {v8, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v9, 0x1

    .line 1527
    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1528
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x2

    .line 1529
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1531
    :cond_f
    invoke-virtual {v5, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1535
    :goto_5
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1537
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private getAndroidVersion(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private getAppInfo(Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    .line 1542
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1544
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1545
    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1546
    iget-object v3, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1547
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    .line 1549
    const-string v5, "firstInstallTime"

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1550
    const-string v5, "lastUpdateTime"

    iget-wide v6, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1551
    const-string v5, "label"

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1552
    const-string v1, "packageName"

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1553
    const-string v1, "versionName"

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1554
    const-string v1, "versionCode"

    invoke-virtual {v2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1555
    const-string v1, "isDebuggable"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1557
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1561
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1559
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getAvailableEncodings(Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    .line 894
    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->availableCharsets()Ljava/util/SortedMap;

    move-result-object v0

    .line 895
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 896
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 897
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 898
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/charset/Charset;

    .line 899
    const-string v4, "label"

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 900
    const-string v4, "aliases"

    new-instance v5, Lorg/json/JSONArray;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->aliases()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 901
    const-string v4, "name"

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 904
    :cond_0
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 906
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private getConfiguration(Lorg/apache/cordova/CallbackContext;)V
    .locals 7

    .line 643
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 644
    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 645
    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 648
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    const-string v4, "getInputMethodWindowVisibleHeight"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 652
    const-string v4, "isAcceptingText"

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v6

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 653
    const-string v4, "keyboardHeight"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 654
    const-string v2, "locale"

    iget-object v3, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 655
    const-string v2, "fontScale"

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 656
    const-string v2, "keyboard"

    iget v3, v1, Landroid/content/res/Configuration;->keyboard:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 657
    const-string v2, "keyboardHidden"

    iget v3, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 658
    const-string v2, "hardKeyboardHidden"

    iget v3, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 659
    const-string v2, "navigationHidden"

    iget v3, v1, Landroid/content/res/Configuration;->navigationHidden:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 660
    const-string v2, "navigation"

    iget v3, v1, Landroid/content/res/Configuration;->navigation:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 661
    const-string v2, "orientation"

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 662
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 669
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private getContentProviderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1961
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/foxdebug/system/System;->getContentProviderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getContentProviderUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1965
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1969
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 1974
    :cond_1
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1975
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v3, "System"

    if-nez v1, :cond_2

    .line 1977
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "File does not exist for URI: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1981
    :cond_2
    invoke-direct {p0}, Lcom/foxdebug/system/System;->getFileProviderAuthority()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1983
    const-string p1, "No FileProvider authority available."

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1988
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {v1, p1, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1991
    :catch_0
    :try_start_1
    invoke-direct {p0, v2, p2}, Lcom/foxdebug/system/System;->ensureShareableCopy(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 1992
    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 1994
    const-string p2, "Failed to expose file via FileProvider"

    invoke-static {v3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    return-object v0
.end method

.method private getCordovaIntent(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 1871
    iget-object v0, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1872
    invoke-direct {p0, v0}, Lcom/foxdebug/system/System;->isReservedAuthIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1873
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void

    .line 1878
    :cond_0
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    .line 1879
    invoke-direct {p0, v0}, Lcom/foxdebug/system/System;->getIntentJson(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 1878
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private getDeprecatedSystemUiVisibility(Landroid/view/View;)I
    .locals 0

    .line 1863
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    return p1
.end method

.method private getExtrasJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 5

    .line 1930
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_7

    .line 1932
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1934
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1935
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1936
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1937
    :cond_0
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 1938
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1939
    :cond_1
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 1940
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1941
    :cond_2
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_3

    .line 1942
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1943
    :cond_3
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 1944
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1945
    :cond_4
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    .line 1946
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1947
    :cond_5
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_6

    .line 1948
    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/foxdebug/system/System;->getExtrasJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1950
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1953
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_7
    return-object v0
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1291
    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 v1, 0x2e

    .line 1292
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 1293
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1294
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getFileProviderAuthority()Ljava/lang/String;
    .locals 6

    .line 2107
    iget-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;

    return-object v0

    .line 2112
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2113
    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 2114
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 2113
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2117
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v1, :cond_2

    .line 2118
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 2119
    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    const-class v5, Landroidx/core/content/FileProvider;

    .line 2122
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2124
    iget-object v0, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2130
    const-string v1, "SystemPlugin"

    const-string v2, "Unable to inspect package providers for FileProvider authority."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2137
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2138
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;

    .line 2141
    :cond_4
    iget-object v0, p0, Lcom/foxdebug/system/System;->fileProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method private getFileShortcutIcon(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 1245
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->createFileShortcutBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1247
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    return-object p1
.end method

.method private getGlobalSetting(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 2158
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 2159
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/high16 v1, -0x40800000    # -1.0f

    .line 2158
    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p1

    float-to-int p1, p1

    .line 2163
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private getIntentJson(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 3

    .line 1916
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1918
    :try_start_0
    const-string v1, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1919
    const-string v1, "data"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1920
    const-string v1, "type"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1921
    const-string v1, "package"

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1922
    const-string v1, "extras"

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getExtrasJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 1924
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method private getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2e

    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 631
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 635
    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 638
    :cond_1
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method private getShortcutLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1298
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, ""

    const-string v3, "[^A-Za-z0-9]"

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v1, :cond_20

    .line 1300
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v1, 0x4

    const/4 v7, -0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    move v4, v7

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "markdown"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "yaml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "json"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_3
    const-string p1, "java"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_5
    const-string p1, "bash"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_6
    const-string p1, "yml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_7
    const-string p1, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string p1, "txt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "tsx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "php"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_b
    const-string p1, "kts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_c
    const-string p1, "jsx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string p1, "htm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_e
    const-string p1, "hpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_f
    const-string p1, "cxx"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_10
    const-string p1, "css"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_11
    const-string p1, "cpp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_12
    const-string p1, "ts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_13
    const-string p1, "sh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_14
    const-string p1, "rs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_15
    const-string p1, "rb"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_16
    const-string p1, "py"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_17
    const-string p1, "md"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_18
    const-string p1, "kt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_19
    const-string p1, "js"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_0

    :cond_19
    move v4, v1

    goto :goto_1

    :sswitch_1a
    const-string p1, "go"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    move v4, v5

    goto :goto_1

    :sswitch_1b
    const-string p1, "cc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1c
    const-string p1, "h"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    goto/16 :goto_0

    :sswitch_1d
    const-string p1, "c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move v4, v6

    :cond_1d
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 1352
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1353
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_2

    :cond_1e
    move-object v0, p1

    .line 1354
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v1, :cond_1f

    .line 1355
    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1357
    :cond_1f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1311
    :pswitch_0
    const-string p1, "JSON"

    return-object p1

    .line 1318
    :pswitch_1
    const-string p1, "JAVA"

    return-object p1

    .line 1345
    :pswitch_2
    const-string p1, "YML"

    return-object p1

    .line 1342
    :pswitch_3
    const-string p1, "XML"

    return-object p1

    .line 1347
    :pswitch_4
    const-string p1, "TXT"

    return-object p1

    .line 1340
    :pswitch_5
    const-string p1, "PHP"

    return-object p1

    .line 1314
    :pswitch_6
    const-string p1, "HTML"

    return-object p1

    .line 1316
    :pswitch_7
    const-string p1, "CSS"

    return-object p1

    .line 1306
    :pswitch_8
    const-string p1, "TS"

    return-object p1

    .line 1350
    :pswitch_9
    const-string p1, "SH"

    return-object p1

    .line 1338
    :pswitch_a
    const-string p1, "RS"

    return-object p1

    .line 1325
    :pswitch_b
    const-string p1, "RB"

    return-object p1

    .line 1323
    :pswitch_c
    const-string p1, "PY"

    return-object p1

    .line 1309
    :pswitch_d
    const-string p1, "MD"

    return-object p1

    .line 1321
    :pswitch_e
    const-string p1, "KOT"

    return-object p1

    .line 1303
    :pswitch_f
    const-string p1, "JS"

    return-object p1

    .line 1336
    :pswitch_10
    const-string p1, "GO"

    return-object p1

    .line 1331
    :pswitch_11
    const-string p1, "CPP"

    return-object p1

    .line 1334
    :pswitch_12
    const-string p1, "HDR"

    return-object p1

    .line 1327
    :pswitch_13
    const-string p1, "C"

    return-object p1

    :cond_20
    if-eqz p1, :cond_23

    .line 1361
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    .line 1362
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    .line 1364
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v5, :cond_21

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1365
    :cond_21
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1367
    :cond_22
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1370
    :cond_23
    const-string p1, "FILE"

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1d
        0x68 -> :sswitch_1c
        0xc60 -> :sswitch_1b
        0xce8 -> :sswitch_1a
        0xd49 -> :sswitch_19
        0xd69 -> :sswitch_18
        0xd97 -> :sswitch_17
        0xe09 -> :sswitch_16
        0xe30 -> :sswitch_15
        0xe41 -> :sswitch_14
        0xe55 -> :sswitch_13
        0xe7f -> :sswitch_12
        0x181a3 -> :sswitch_11
        0x18203 -> :sswitch_10
        0x182a3 -> :sswitch_f
        0x19468 -> :sswitch_e
        0x194e1 -> :sswitch_d
        0x19c4f -> :sswitch_c
        0x1a02a -> :sswitch_b
        0x1b178 -> :sswitch_a
        0x1c1d9 -> :sswitch_9
        0x1c270 -> :sswitch_8
        0x1d017 -> :sswitch_7
        0x1d3d8 -> :sswitch_6
        0x2e06d4 -> :sswitch_5
        0x3107ab -> :sswitch_4
        0x31aa22 -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x387aa7 -> :sswitch_1
        0xeb7fcef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_d
    .end packed-switch
.end method

.method private getWebkitInfo(Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 1089
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1093
    :try_start_0
    invoke-static {}, Landroid/webkit/WebView;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1110
    const-string v2, "packageName"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1111
    const-string v2, "versionName"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1112
    const-string v2, "versionCode"

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1114
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    .line 1122
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot determine current WebView engine. ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1122
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private grantUriPermissions(Landroid/content/Intent;Landroid/net/Uri;I)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_1

    .line 2067
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    .line 2068
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 2072
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2073
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2074
    iget-object v1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v1, v0, p2, p3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private hasPermission(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    if-nez p1, :cond_1

    .line 955
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 964
    :cond_0
    const-string p1, "No permission passed to check."

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 957
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    .line 961
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;Lorg/apache/cordova/CallbackContext;)Z
    .locals 0

    const/4 p3, 0x0

    .line 2150
    :try_start_0
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return p3
.end method

.method private isPowerSaveMode(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1131
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1134
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 1136
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private isReservedAuthIntent(Landroid/content/Intent;)Z
    .locals 3

    if-eqz p1, :cond_0

    .line 1906
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1907
    const-string v1, "acode"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 1910
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1911
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 1912
    const-string v2, "auth"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "/callback"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private launchApp(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    if-eqz p1, :cond_9

    .line 1576
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p2, :cond_8

    .line 1581
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 1587
    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1588
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1589
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1590
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1591
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_7

    .line 1594
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1596
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1597
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1598
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1600
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 1601
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1602
    :cond_2
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 1603
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1604
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_4

    .line 1605
    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1606
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    .line 1607
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 1608
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1609
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1611
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1616
    :cond_7
    iget-object p2, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1617
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Launched "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1619
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1582
    :cond_8
    :goto_1
    const-string p1, "No activity class name provided."

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1577
    :cond_9
    :goto_2
    const-string p1, "No package name provided."

    invoke-virtual {p4, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private openInBrowser(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1566
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1567
    iget-object p1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private pickShortcutColor(Ljava/lang/String;)I
    .locals 4

    .line 1374
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "markdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x1d

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "yaml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x1c

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x1b

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x1a

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x19

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "bash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x18

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "yml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x17

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_8
    const-string v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_9
    const-string v1, "tsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_a
    const-string v1, "php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_b
    const-string v1, "kts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_c
    const-string v1, "jsx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_d
    const-string v1, "htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_e
    const-string v1, "hpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_f
    const-string v1, "cxx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_10
    const-string v1, "css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_11
    const-string v1, "cpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_12
    const-string v1, "ts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_13
    const-string v1, "sh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_14
    const-string v1, "rs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "rb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    move v3, v2

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_17
    const-string v1, "md"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_18
    const-string v1, "kt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_0

    :cond_18
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_19
    const-string v1, "js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_0

    :cond_19
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_1a
    const-string v1, "go"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_0

    :cond_1a
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1b
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_0

    :cond_1b
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1c
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_0

    :cond_1c
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_1d
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_0

    :cond_1d
    const/4 v3, 0x0

    :goto_0
    const v1, -0xab9186

    packed-switch v3, :pswitch_data_0

    .line 1427
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 1437
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    if-nez p1, :cond_1f

    .line 1438
    const-string p1, "file"

    goto :goto_1

    :cond_1e
    move-object p1, v0

    .line 1440
    :cond_1f
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1441
    rem-int/2addr p1, v2

    aget p1, v1, p1

    return p1

    :pswitch_0
    const p1, -0xb350b0

    return p1

    :pswitch_1
    const p1, -0x1390d3

    return p1

    :pswitch_2
    const p1, -0x8a8a8b

    return p1

    :pswitch_3
    const p1, -0xa39440

    return p1

    :pswitch_4
    return v1

    :pswitch_5
    const p1, -0x776d41

    return p1

    :pswitch_6
    const p1, -0xbaee2

    return p1

    :pswitch_7
    const p1, -0xd69d01

    return p1

    :pswitch_8
    const p1, -0xce873a

    return p1

    :pswitch_9
    const p1, -0xc771c4

    return p1

    :pswitch_a
    const p1, -0x48bef2

    return p1

    :pswitch_b
    const p1, -0x33cbd3

    return p1

    :pswitch_c
    const p1, -0xcf9668

    return p1

    :pswitch_d
    return v1

    :pswitch_e
    const p1, -0x80ad01

    return p1

    :pswitch_f
    const p1, -0x820e2

    return p1

    :pswitch_10
    const p1, -0xff5228

    return p1

    :pswitch_11
    const p1, -0xffa664

    return p1

    :pswitch_12
    const p1, -0x72919d

    return p1

    :pswitch_13
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_1d
        0x68 -> :sswitch_1c
        0xc60 -> :sswitch_1b
        0xce8 -> :sswitch_1a
        0xd49 -> :sswitch_19
        0xd69 -> :sswitch_18
        0xd97 -> :sswitch_17
        0xe09 -> :sswitch_16
        0xe30 -> :sswitch_15
        0xe41 -> :sswitch_14
        0xe55 -> :sswitch_13
        0xe7f -> :sswitch_12
        0x181a3 -> :sswitch_11
        0x18203 -> :sswitch_10
        0x182a3 -> :sswitch_f
        0x19468 -> :sswitch_e
        0x194e1 -> :sswitch_d
        0x19c4f -> :sswitch_c
        0x1a02a -> :sswitch_b
        0x1b178 -> :sswitch_a
        0x1c1d9 -> :sswitch_9
        0x1c270 -> :sswitch_8
        0x1d017 -> :sswitch_7
        0x1d3d8 -> :sswitch_6
        0x2e06d4 -> :sswitch_5
        0x3107ab -> :sswitch_4
        0x31aa22 -> :sswitch_3
        0x31ece8 -> :sswitch_2
        0x387aa7 -> :sswitch_1
        0xeb7fcef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_11
        :pswitch_7
        :pswitch_11
        :pswitch_12
        :pswitch_6
        :pswitch_f
        :pswitch_e
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_d
    .end packed-switch

    :array_0
    .array-data 4
        -0xe1771b
        -0x92b3bf
        -0xff7685
        -0x71db56
        -0xc6b655
        -0xfc641b
        -0x27e4a0
        -0xbc5fb9
    .end array-data
.end method

.method private pinFileShortcut(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 8

    const-string v0, "Launch intent not found for package: "

    if-nez p1, :cond_0

    .line 1144
    const-string p1, "Invalid shortcut data"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1148
    :cond_0
    const-string v1, "id"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    const-string v3, "label"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1150
    const-string v4, "description"

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    const-string v5, "icon"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1152
    const-string v6, "uri"

    invoke-virtual {p1, v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1154
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 1159
    :cond_1
    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/content/pm/ShortcutManagerCompat;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1160
    const-string p1, "Pin shortcut not supported on this launcher"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1165
    :cond_2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1166
    iget-object v6, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1167
    iget-object v7, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1169
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1175
    :cond_3
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1177
    const-string p1, "ComponentName is null"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 1181
    :cond_4
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1183
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1184
    const-string v0, "acodeFileUri"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v5, :cond_6

    .line 1188
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_6

    .line 1190
    :try_start_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_5

    .line 1195
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 1196
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1195
    invoke-static {v0, p1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 1199
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 1202
    :cond_5
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 1203
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1202
    invoke-static {v0, p1}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1208
    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1210
    :catch_0
    :try_start_2
    invoke-direct {p0, v3}, Lcom/foxdebug/system/System;->getFileShortcutIcon(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    goto :goto_1

    .line 1213
    :cond_6
    invoke-direct {p0, v3}, Lcom/foxdebug/system/System;->getFileShortcutIcon(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 1216
    :goto_1
    new-instance v0, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1217
    invoke-virtual {v0, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    if-eqz v4, :cond_7

    .line 1219
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move-object v3, v4

    .line 1218
    :cond_7
    invoke-virtual {v0, v3}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object v0

    .line 1221
    invoke-virtual {v0, p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1222
    invoke-virtual {p1, v6}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->setIntent(Landroid/content/Intent;)Landroidx/core/content/pm/ShortcutInfoCompat$Builder;

    move-result-object p1

    .line 1223
    invoke-virtual {p1}, Landroidx/core/content/pm/ShortcutInfoCompat$Builder;->build()Landroidx/core/content/pm/ShortcutInfoCompat;

    move-result-object p1

    .line 1225
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/core/content/pm/ShortcutManagerCompat;->pushDynamicShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;)Z

    .line 1227
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroidx/core/content/pm/ShortcutManagerCompat;->requestPinShortcut(Landroid/content/Context;Landroidx/core/content/pm/ShortcutInfoCompat;Landroid/content/IntentSender;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1234
    const-string p1, "Failed to request pin shortcut"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 1238
    :cond_8
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1240
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return-void

    .line 1155
    :cond_9
    :goto_3
    const-string p1, "Missing required shortcut fields"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private pinShortcut(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    .line 1665
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const-class v1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 1669
    invoke-virtual {v0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1670
    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    .line 1676
    invoke-virtual {v0, p1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 1678
    iget-object v2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1687
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 1685
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z

    .line 1690
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void

    .line 1694
    :cond_0
    const-string p1, "Not supported"

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private removeShortcut(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 1699
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1700
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1701
    iget-object p1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/core/content/pm/ShortcutManagerCompat;->removeDynamicShortcuts(Landroid/content/Context;Ljava/util/List;)V

    .line 1702
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1704
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private requestPermission(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    if-nez p1, :cond_1

    .line 940
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    const-string p1, "No permission passed to request."

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void

    .line 941
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 942
    iput-object p2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    .line 943
    iget-object p2, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget v0, p0, Lcom/foxdebug/system/System;->REQ_PERMISSION:I

    invoke-interface {p2, p0, v0, p1}, Lorg/apache/cordova/CordovaInterface;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 947
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return-void
.end method

.method private requestPermissions(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 921
    :try_start_0
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->checkPermissions(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object p1

    .line 923
    array-length v0, p1

    if-lez v0, :cond_0

    .line 924
    iput-object p2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    .line 925
    iget-object v0, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget v1, p0, Lcom/foxdebug/system/System;->REQ_PERMISSIONS:I

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    return-void

    .line 928
    :cond_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 930
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private resolveMimeType(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2079
    const-string v0, "*/*"

    if-eqz p1, :cond_0

    .line 2081
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2082
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 2089
    iget-object p1, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2092
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    .line 2093
    invoke-direct {p0, p3}, Lcom/foxdebug/system/System;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 2096
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    .line 2097
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2099
    invoke-direct {p0, p2}, Lcom/foxdebug/system/System;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 2103
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    return-object p1

    :cond_6
    return-object v0
.end method

.method private sendLogToJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "if (typeof window.log === \'function\')  window.log("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 607
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");else  console.log("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 611
    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 613
    invoke-static {p2}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 616
    iget-object p2, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    new-instance v0, Lcom/foxdebug/system/System$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/foxdebug/system/System$$ExternalSyntheticLambda0;-><init>(Lcom/foxdebug/system/System;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDeprecatedSystemUiVisibility(Landroid/view/View;I)V
    .locals 0

    .line 1867
    invoke-virtual {p1, p2}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setInputType(Ljava/lang/String;)V
    .locals 1

    .line 2173
    const-string v0, "NO_SUGGESTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2175
    :cond_0
    const-string v0, "NO_SUGGESTIONS_AGGRESSIVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 2178
    :goto_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebView;->setInputType(I)V

    return-void
.end method

.method private setIntentHandler(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 1884
    iput-object p1, p0, Lcom/foxdebug/system/System;->intentHandler:Lorg/apache/cordova/CallbackContext;

    .line 1885
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 v1, 0x1

    .line 1886
    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 1887
    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private setNativeContextMenuDisabled(Z)V
    .locals 1

    .line 2182
    iget-object v0, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    if-nez v0, :cond_0

    return-void

    .line 2185
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebView;->setNativeContextMenuDisabled(Z)V

    return-void
.end method

.method private setNavigationBarStyle(Landroid/view/Window;)V
    .locals 5

    .line 1811
    iget-object v0, p0, Lcom/foxdebug/system/System;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {v0}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1812
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1816
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const-string v3, "light"

    const/16 v4, 0x10

    if-gt v1, v2, :cond_1

    .line 1817
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getDeprecatedSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    .line 1820
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v0, v1, 0x10

    .line 1821
    invoke-direct {p0, p1, v0}, Lcom/foxdebug/system/System;->setDeprecatedSystemUiVisibility(Landroid/view/View;I)V

    return-void

    :cond_0
    and-int/lit8 v0, v1, -0x11

    .line 1827
    invoke-direct {p0, p1, v0}, Lcom/foxdebug/system/System;->setDeprecatedSystemUiVisibility(Landroid/view/View;I)V

    return-void

    .line 1835
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 1834
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsController;

    .line 1836
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    .line 1840
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1842
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    or-int/lit8 v0, v1, 0x10

    .line 1843
    invoke-interface {p1, v0, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void

    .line 1851
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    and-int/lit8 v0, v1, -0x11

    .line 1852
    invoke-interface {p1, v0, v4}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method private setStatusBarStyle(Landroid/view/Window;)V
    .locals 4

    .line 1776
    iget-object v0, p0, Lcom/foxdebug/system/System;->theme:Lcom/foxdebug/system/Ui$Theme;

    invoke-virtual {v0}, Lcom/foxdebug/system/Ui$Theme;->getType()Ljava/lang/String;

    move-result-object v0

    .line 1777
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 1781
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const-string v3, "light"

    if-gt v1, v2, :cond_1

    .line 1782
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getDeprecatedSystemUiVisibility(Landroid/view/View;)I

    move-result v1

    .line 1783
    invoke-direct {p0}, Lcom/foxdebug/system/System;->deprecatedFlagUiLightStatusBar()I

    move-result v2

    .line 1785
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int v0, v1, v2

    .line 1786
    invoke-direct {p0, p1, v0}, Lcom/foxdebug/system/System;->setDeprecatedSystemUiVisibility(Landroid/view/View;I)V

    return-void

    :cond_0
    not-int v0, v2

    and-int/2addr v0, v1

    .line 1789
    invoke-direct {p0, p1, v0}, Lcom/foxdebug/system/System;->setDeprecatedSystemUiVisibility(Landroid/view/View;I)V

    return-void

    .line 1794
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v1

    .line 1793
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInsetsController;

    .line 1795
    invoke-interface {v1}, Landroid/view/WindowInsetsController;->getSystemBarsAppearance()I

    move-result v1

    .line 1798
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_2

    .line 1800
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    or-int/lit8 v0, v1, 0x8

    .line 1801
    invoke-interface {p1, v0, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void

    .line 1806
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p1

    and-int/lit8 v0, v1, -0x9

    .line 1807
    invoke-interface {p1, v0, v2}, Landroid/view/WindowInsetsController;->setSystemBarsAppearance(II)V

    return-void
.end method

.method private setUiTheme(Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 1714
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    .line 1715
    new-instance v0, Lcom/foxdebug/system/Ui$Theme;

    invoke-direct {v0, p2}, Lcom/foxdebug/system/Ui$Theme;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/foxdebug/system/System;->theme:Lcom/foxdebug/system/Ui$Theme;

    .line 1717
    iget-object v0, p0, Lcom/foxdebug/system/System;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "BackgroundColor"

    iget v2, p0, Lcom/foxdebug/system/System;->systemBarColor:I

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->set(Ljava/lang/String;I)V

    .line 1718
    iget-object v0, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v0

    const-string v1, "updateSystemBars"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1719
    invoke-direct {p0}, Lcom/foxdebug/system/System;->applySystemBarTheme()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_1

    .line 1723
    :try_start_1
    iget-object v0, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    .line 1724
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "acode_theme"

    const/4 v2, 0x0

    .line 1725
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1726
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1727
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1728
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1729
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1730
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 1732
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1736
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1740
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 1738
    :catch_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid color: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public createSymlink(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    .line 989
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ln"

    aput-object v3, v2, v0

    const-string v3, "-s"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    aput-object p1, v2, v3

    const/4 p1, 0x3

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    .line 995
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v4

    :catch_0
    :cond_0
    return v0
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "package:"

    const/4 v5, 0x0

    .line 111
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x1

    .line 112
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    move-object v9, v7

    .line 113
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x3

    .line 114
    invoke-virtual {v3, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x4

    move-object v14, v9

    .line 115
    invoke-virtual {v3, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v15, 0x5

    move/from16 v16, v10

    .line 116
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v13, 0x1e

    const/16 v18, -0x1

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v15, "pin-file-shortcut"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v15, 0x2f

    goto/16 :goto_0

    :sswitch_1
    const-string v15, "add-shortcut"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v15, 0x2e

    goto/16 :goto_0

    :sswitch_2
    const-string v15, "compare-texts"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v15, 0x2d

    goto/16 :goto_0

    :sswitch_3
    const-string v15, "setExec"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v15, 0x2c

    goto/16 :goto_0

    :sswitch_4
    const-string v15, "set-ui-theme"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v15, 0x2b

    goto/16 :goto_0

    :sswitch_5
    const-string v15, "request-permissions"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v15, 0x2a

    goto/16 :goto_0

    :sswitch_6
    const-string v15, "deleteFile"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v15, 0x29

    goto/16 :goto_0

    :sswitch_7
    const-string v15, "set-native-context-menu-disabled"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v15, 0x28

    goto/16 :goto_0

    :sswitch_8
    const-string v15, "pin-shortcut"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v15, 0x27

    goto/16 :goto_0

    :sswitch_9
    const-string v15, "clear-cache"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v15, 0x26

    goto/16 :goto_0

    :sswitch_a
    const-string v15, "copyToUri"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v15, 0x25

    goto/16 :goto_0

    :sswitch_b
    const-string v15, "hasGrantedStorageManager"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v15, 0x24

    goto/16 :goto_0

    :sswitch_c
    const-string v15, "fileExists"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v15, 0x23

    goto/16 :goto_0

    :sswitch_d
    const-string v15, "get-configuration"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v15, 0x22

    goto/16 :goto_0

    :sswitch_e
    const-string v15, "getFilesDir"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v15, 0x21

    goto/16 :goto_0

    :sswitch_f
    const-string v15, "compare-file-text"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v15, 0x20

    goto/16 :goto_0

    :sswitch_10
    const-string v15, "requestStorageManager"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v15, 0x1f

    goto/16 :goto_0

    :sswitch_11
    const-string v15, "get-android-version"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto/16 :goto_1

    :cond_11
    move/from16 v18, v13

    goto/16 :goto_1

    :sswitch_12
    const-string v15, "redeemReward"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v15, 0x1d

    goto/16 :goto_0

    :sswitch_13
    const-string v15, "checksumText"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v15, 0x1c

    goto/16 :goto_0

    :sswitch_14
    const-string v15, "extractAsset"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v15, 0x1b

    goto/16 :goto_0

    :sswitch_15
    const-string v15, "launch-app"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v15, 0x1a

    goto/16 :goto_0

    :sswitch_16
    const-string v15, "createSymlink"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v15, 0x19

    goto/16 :goto_0

    :sswitch_17
    const-string v15, "isManageExternalStorageDeclared"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v15, 0x18

    goto/16 :goto_0

    :sswitch_18
    const-string v15, "set-intent-handler"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v15, 0x17

    goto/16 :goto_0

    :sswitch_19
    const-string v15, "get-available-encodings"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v15, 0x16

    goto/16 :goto_0

    :sswitch_1a
    const-string v15, "getNativeLibraryPath"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v15, 0x15

    goto/16 :goto_0

    :sswitch_1b
    const-string v15, "file-action"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v15, 0x14

    goto/16 :goto_0

    :sswitch_1c
    const-string v15, "remove-shortcut"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v15, 0x13

    goto/16 :goto_0

    :sswitch_1d
    const-string v15, "getInstaller"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v15, 0x12

    goto/16 :goto_0

    :sswitch_1e
    const-string v15, "getArch"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v15, 0x11

    goto/16 :goto_0

    :sswitch_1f
    const-string v15, "get-webkit-info"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v15, 0x10

    goto/16 :goto_0

    :sswitch_20
    const-string v15, "get-cordova-intent"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v15, 0xf

    goto/16 :goto_0

    :sswitch_21
    const-string v15, "getParentPath"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v15, 0xe

    goto/16 :goto_0

    :sswitch_22
    const-string v15, "get-app-info"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v15, 0xd

    goto :goto_0

    :sswitch_23
    const-string v15, "request-permission"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v15, 0xc

    goto :goto_0

    :sswitch_24
    const-string v15, "getRewardStatus"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_24

    goto/16 :goto_1

    :cond_24
    const/16 v15, 0xb

    goto :goto_0

    :sswitch_25
    const-string v15, "mkdirs"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_25

    goto/16 :goto_1

    :cond_25
    const/16 v15, 0xa

    goto :goto_0

    :sswitch_26
    const-string v15, "encode"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_26

    goto/16 :goto_1

    :cond_26
    const/16 v15, 0x9

    goto :goto_0

    :sswitch_27
    const-string v15, "decode"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_27

    goto/16 :goto_1

    :cond_27
    const/16 v15, 0x8

    goto :goto_0

    :sswitch_28
    const-string v15, "writeText"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_28

    goto/16 :goto_1

    :cond_28
    const/4 v15, 0x7

    goto :goto_0

    :sswitch_29
    const-string v15, "has-permission"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_29

    goto :goto_1

    :cond_29
    const/4 v15, 0x6

    :goto_0
    move/from16 v18, v15

    goto :goto_1

    :sswitch_2a
    const-string v15, "listChildren"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2a

    goto :goto_1

    :cond_2a
    const/16 v18, 0x5

    goto :goto_1

    :sswitch_2b
    const-string v15, "shareText"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2b

    goto :goto_1

    :cond_2b
    const/16 v18, 0x4

    goto :goto_1

    :sswitch_2c
    const-string v15, "get-global-setting"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2c

    goto :goto_1

    :cond_2c
    move/from16 v18, v16

    goto :goto_1

    :sswitch_2d
    const-string v15, "is-powersave-mode"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2d

    goto :goto_1

    :cond_2d
    move/from16 v18, v8

    goto :goto_1

    :sswitch_2e
    const-string v15, "open-in-browser"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2e

    goto :goto_1

    :cond_2e
    move/from16 v18, v11

    goto :goto_1

    :sswitch_2f
    const-string v15, "set-input-type"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2f

    goto :goto_1

    :cond_2f
    move/from16 v18, v5

    .line 352
    :goto_1
    const-string v15, "false"

    const-string v8, "true"

    packed-switch v18, :pswitch_data_0

    return v5

    .line 340
    :pswitch_0
    new-instance v0, Ljava/io/File;

    .line 341
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 341
    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 345
    invoke-virtual {v4}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_2

    .line 347
    :cond_30
    const-string v0, "set exec failed"

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_2
    return v11

    .line 188
    :pswitch_1
    iget-object v0, v1, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v2, Lcom/foxdebug/system/System$3;

    invoke-direct {v2, v1, v6, v3, v4}, Lcom/foxdebug/system/System$3;-><init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v11

    .line 333
    :pswitch_2
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 334
    invoke-virtual {v4}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_3

    .line 336
    :cond_31
    const-string v0, "delete failed"

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_3
    return v11

    .line 152
    :pswitch_3
    iget-object v0, v1, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v2, Lcom/foxdebug/system/System$2;

    invoke-direct {v2, v1, v6, v4}, Lcom/foxdebug/system/System$2;-><init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v11

    .line 197
    :pswitch_4
    iget-object v0, v1, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v2, Lcom/foxdebug/system/System$4;

    invoke-direct {v2, v1, v4}, Lcom/foxdebug/system/System$4;-><init>(Lcom/foxdebug/system/System;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v11

    .line 288
    :pswitch_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v13, :cond_32

    .line 289
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    goto :goto_4

    .line 292
    :cond_32
    iget-object v0, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 293
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_33

    move v5, v11

    :cond_33
    move v0, v5

    .line 298
    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 207
    :pswitch_6
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/foxdebug/system/System;->fileExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 206
    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return v11

    .line 145
    :pswitch_7
    invoke-direct {v1, v4}, Lcom/foxdebug/system/System;->getConfiguration(Lorg/apache/cordova/CallbackContext;)V

    return v11

    .line 218
    :pswitch_8
    invoke-virtual {v1}, Lcom/foxdebug/system/System;->getFilesDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 264
    :pswitch_9
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v13, :cond_34

    const/high16 v2, 0x10000000

    .line 266
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 270
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 271
    iget-object v0, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    invoke-virtual {v4, v8}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 275
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.MANAGE_ALL_FILES_ACCESS_PERMISSION"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    iget-object v2, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 280
    invoke-virtual {v4, v8}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_5

    .line 283
    :cond_34
    invoke-virtual {v4, v15}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :goto_5
    return v11

    .line 224
    :pswitch_a
    iget-object v0, v1, Lcom/foxdebug/system/System;->rewardPassManager:Lcom/foxdebug/system/RewardPassManager;

    .line 225
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/foxdebug/system/RewardPassManager;->redeemReward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 211
    :pswitch_b
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/foxdebug/system/System;->createSymlink(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 212
    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    return v11

    .line 301
    :pswitch_c
    iget-object v0, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 303
    :try_start_1
    iget-object v2, v1, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 304
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1000

    .line 303
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 307
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_36

    .line 311
    array-length v2, v0

    :goto_6
    if-ge v5, v2, :cond_36

    aget-object v3, v0, v5

    .line 312
    const-string v6, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    move-object v15, v8

    goto :goto_7

    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 318
    :cond_36
    :goto_7
    invoke-virtual {v4, v15}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    .line 320
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 321
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_8
    return v11

    .line 166
    :pswitch_d
    invoke-direct {v1, v4}, Lcom/foxdebug/system/System;->setIntentHandler(Lorg/apache/cordova/CallbackContext;)V

    return v11

    .line 215
    :pswitch_e
    invoke-virtual {v1}, Lcom/foxdebug/system/System;->getNativeLibraryPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 256
    :pswitch_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v5

    .line 261
    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 163
    :pswitch_10
    invoke-direct {v1, v4}, Lcom/foxdebug/system/System;->getCordovaIntent(Lorg/apache/cordova/CallbackContext;)V

    return v11

    .line 229
    :pswitch_11
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/foxdebug/system/System;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 221
    :pswitch_12
    iget-object v0, v1, Lcom/foxdebug/system/System;->rewardPassManager:Lcom/foxdebug/system/RewardPassManager;

    invoke-virtual {v0}, Lcom/foxdebug/system/RewardPassManager;->getRewardStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return v11

    .line 326
    :pswitch_13
    new-instance v0, Ljava/io/File;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 327
    invoke-virtual {v4}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_9

    .line 329
    :cond_37
    const-string v0, "mkdirs failed"

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_9
    return v11

    .line 236
    :pswitch_14
    :try_start_2
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    new-array v3, v5, [Ljava/lang/String;

    .line 240
    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 241
    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    sget-object v6, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v6, v3, v5

    sget-object v5, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    aput-object v5, v3, v11

    .line 239
    invoke-static {v0, v2, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;

    .line 246
    const-string v0, "File written successfully"

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to write file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    :goto_a
    return v11

    .line 232
    :pswitch_15
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/foxdebug/system/System;->listChildren(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return v11

    .line 169
    :pswitch_16
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v2, v1, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    new-instance v3, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0, v4}, Lcom/foxdebug/system/System$$ExternalSyntheticLambda1;-><init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v11

    .line 355
    :pswitch_17
    iget-object v0, v1, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v13

    new-instance v0, Lcom/foxdebug/system/System$5;

    move-object v5, v6

    move-object v8, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v10}, Lcom/foxdebug/system/System$5;-><init>(Lcom/foxdebug/system/System;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v11

    :pswitch_18
    move-object v5, v6

    .line 148
    invoke-direct {v1, v5}, Lcom/foxdebug/system/System;->setInputType(Ljava/lang/String;)V

    .line 149
    invoke-virtual/range {p3 .. p3}, Lorg/apache/cordova/CallbackContext;->success()V

    return v11

    :sswitch_data_0
    .sparse-switch
        -0x7713da58 -> :sswitch_2f
        -0x717f861d -> :sswitch_2e
        -0x6baacc6f -> :sswitch_2d
        -0x69e29683 -> :sswitch_2c
        -0x5e4bfe54 -> :sswitch_2b
        -0x5c7c0b43 -> :sswitch_2a
        -0x5c1a251e -> :sswitch_29
        -0x53d2f654 -> :sswitch_28
        -0x4f9d6e12 -> :sswitch_27
        -0x4d69c1ea -> :sswitch_26
        -0x3fece3dc -> :sswitch_25
        -0x373dc189 -> :sswitch_24
        -0x3625a033 -> :sswitch_23
        -0x2526f28f -> :sswitch_22
        -0x2056cc1b -> :sswitch_21
        -0x14fa1e1c -> :sswitch_20
        -0xef9bb5e -> :sswitch_1f
        -0x482c734 -> :sswitch_1e
        0x128a8d2 -> :sswitch_1d
        0x207bb6f -> :sswitch_1c
        0x59c0fa7 -> :sswitch_1b
        0x866e233 -> :sswitch_1a
        0xb35fa85 -> :sswitch_19
        0xfa675e4 -> :sswitch_18
        0x15a3ec5b -> :sswitch_17
        0x1e00d6a5 -> :sswitch_16
        0x20800107 -> :sswitch_15
        0x2721c6ef -> :sswitch_14
        0x2a653c10 -> :sswitch_13
        0x2a984feb -> :sswitch_12
        0x36007b03 -> :sswitch_11
        0x372a4d21 -> :sswitch_10
        0x3e1383f6 -> :sswitch_f
        0x5010680c -> :sswitch_e
        0x5180e6bf -> :sswitch_d
        0x53b3c8f8 -> :sswitch_c
        0x53d0d5d3 -> :sswitch_b
        0x59212a7c -> :sswitch_a
        0x5fafcc02 -> :sswitch_9
        0x62b1a57e -> :sswitch_8
        0x63bd4fe1 -> :sswitch_7
        0x692721c7 -> :sswitch_6
        0x71719a46 -> :sswitch_5
        0x740bee5b -> :sswitch_4
        0x7649e813 -> :sswitch_3
        0x7a99b1fe -> :sswitch_2
        0x7bf30bf2 -> :sswitch_1
        0x7c8d0f3f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_17
        :pswitch_17
        :pswitch_13
        :pswitch_12
        :pswitch_17
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_17
        :pswitch_f
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_e
        :pswitch_17
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_17
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_17
        :pswitch_4
        :pswitch_17
        :pswitch_3
        :pswitch_2
        :pswitch_17
        :pswitch_1
        :pswitch_0
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public fileExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 968
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 969
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 979
    :try_start_0
    new-array p2, p2, [Ljava/nio/file/LinkOption;

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    return p1

    .line 981
    :cond_0
    new-array p2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public getFilesDir()Ljava/lang/String;
    .locals 1

    .line 1007
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNativeLibraryPath()Ljava/lang/String;
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1003
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method public getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1011
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1012
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1013
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1

    .line 91
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 92
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    .line 93
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    .line 94
    iput-object p2, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 95
    new-instance p1, Lcom/foxdebug/system/RewardPassManager;

    iget-object p2, p0, Lcom/foxdebug/system/System;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/foxdebug/system/RewardPassManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/foxdebug/system/System;->rewardPassManager:Lcom/foxdebug/system/RewardPassManager;

    .line 96
    iget-object p1, p0, Lcom/foxdebug/system/System;->activity:Landroid/app/Activity;

    new-instance p2, Lcom/foxdebug/system/System$1;

    invoke-direct {p2, p0}, Lcom/foxdebug/system/System$1;-><init>(Lcom/foxdebug/system/System;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$execute$0$com-foxdebug-system-System(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 173
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object p1, p0, Lcom/foxdebug/system/System;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 178
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const-string v1, "Share"

    .line 179
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$sendLogToJavaScript$1$com-foxdebug-system-System(Ljava/lang/String;)V
    .locals 2

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 619
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const/4 v1, 0x0

    .line 620
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to send log to JavaScript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemPlugin"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public listChildren(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1017
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1018
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1019
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1023
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1892
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->isReservedAuthIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/system/System;->intentHandler:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_1

    .line 1896
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    .line 1898
    invoke-direct {p0, p1}, Lcom/foxdebug/system/System;->getIntentJson(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    .line 1900
    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 1901
    iget-object p1, p0, Lcom/foxdebug/system/System;->intentHandler:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1035
    iget-object p2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    if-nez p2, :cond_0

    return-void

    .line 1037
    :cond_0
    iget v0, p0, Lcom/foxdebug/system/System;->REQ_PERMISSIONS:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_3

    .line 1038
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 1039
    array-length p2, p3

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_2

    aget v5, p3, v0

    if-ne v5, v1, :cond_1

    .line 1041
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1043
    :cond_1
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_2
    iget-object p2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 1047
    iput-object v2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    return-void

    .line 1051
    :cond_3
    array-length p1, p3

    if-lt p1, v4, :cond_4

    aget p1, p3, v3

    if-ne p1, v1, :cond_4

    .line 1054
    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->success(I)V

    .line 1055
    iput-object v2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    return-void

    .line 1058
    :cond_4
    invoke-virtual {p2, v4}, Lorg/apache/cordova/CallbackContext;->success(I)V

    .line 1059
    iput-object v2, p0, Lcom/foxdebug/system/System;->requestPermissionCallback:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.class public Lorg/apache/cordova/CordovaWebViewImpl;
.super Ljava/lang/Object;
.source "CordovaWebViewImpl.java"

# interfaces
.implements Lorg/apache/cordova/CordovaWebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;,
        Lorg/apache/cordova/CordovaWebViewImpl$WrapperView;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TAG:Ljava/lang/String; = "CordovaWebViewImpl"


# instance fields
.field private appPlugin:Lorg/apache/cordova/CoreAndroid;

.field private boundKeyCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field protected final engine:Lorg/apache/cordova/CordovaWebViewEngine;

.field private engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

.field private hasPausedEver:Z

.field private loadUrlTimeout:I

.field loadedUrl:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

.field private pluginManager:Lorg/apache/cordova/PluginManager;

.field private preferences:Lorg/apache/cordova/CordovaPreferences;

.field private resourceApi:Lorg/apache/cordova/CordovaResourceApi;


# direct methods
.method static bridge synthetic -$$Nest$fgetboundKeyCodes(Lorg/apache/cordova/CordovaWebViewImpl;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcordova(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/CordovaInterface;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadUrlTimeout(Lorg/apache/cordova/CordovaWebViewImpl;)I
    .locals 0

    iget p0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomView(Lorg/apache/cordova/CordovaWebViewImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpluginManager(Lorg/apache/cordova/CordovaWebViewImpl;)Lorg/apache/cordova/PluginManager;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputloadUrlTimeout(Lorg/apache/cordova/CordovaWebViewImpl;I)V
    .locals 0

    iput p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    return-void
.end method

.method static bridge synthetic -$$Nest$msendJavascriptEvent(Lorg/apache/cordova/CordovaWebViewImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewEngine;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 45
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    invoke-direct {v0, p0}, Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    .line 69
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    return-void
.end method

.method public static createEngine(Landroid/content/Context;Lorg/apache/cordova/CordovaPreferences;)Lorg/apache/cordova/CordovaWebViewEngine;
    .locals 4

    .line 58
    const-class v0, Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-virtual {p1, v1, v0}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    .line 61
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lorg/apache/cordova/CordovaPreferences;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 62
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/cordova/CordovaWebViewEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 64
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create webview. "

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private sendJavascriptEvent(Ljava/lang/String;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string v1, "CoreAndroid"

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CoreAndroid;

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    .line 380
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    if-nez v0, :cond_1

    .line 381
    const-string p1, "CordovaWebViewImpl"

    const-string v0, "Unable to fire event without existing plugin"

    invoke-static {p1, v0}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 384
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/cordova/CoreAndroid;->fireJavascriptEvent(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public backHistory()Z
    .locals 1

    .line 451
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->goBack()Z

    move-result v0

    return v0
.end method

.method public canGoBack()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public clearCache()V
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->clearCache()V

    return-void
.end method

.method public clearCache(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebViewEngine;->clearCache()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->clearHistory()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;
    .locals 1

    .line 356
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getCookieManager()Lorg/apache/cordova/ICordovaCookieManager;

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/apache/cordova/CordovaWebViewEngine;
    .locals 1

    .line 364
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    return-object v0
.end method

.method public getPluginManager()Lorg/apache/cordova/PluginManager;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    return-object v0
.end method

.method public getPreferences()Lorg/apache/cordova/CordovaPreferences;
    .locals 1

    .line 352
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method public getResourceApi()Lorg/apache/cordova/CordovaResourceApi;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleDestroy()V
    .locals 1

    .line 509
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 513
    :cond_0
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 516
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onDestroy()V

    .line 520
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrl(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->destroy()V

    .line 524
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->hideCustomView()V

    return-void
.end method

.method public handlePause(Z)V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->hasPausedEver:Z

    .line 467
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v1, p1}, Lorg/apache/cordova/PluginManager;->onPause(Z)V

    .line 468
    const-string v1, "pause"

    invoke-direct {p0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 473
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p1, v0}, Lorg/apache/cordova/CordovaWebViewEngine;->setPaused(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleResume(Z)V
    .locals 2

    .line 478
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebViewEngine;->setPaused(Z)V

    .line 484
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onResume(Z)V

    .line 489
    iget-boolean p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->hasPausedEver:Z

    if-eqz p1, :cond_1

    .line 490
    const-string p1, "resume"

    invoke-direct {p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl;->sendJavascriptEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleStart()V
    .locals 1

    .line 495
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onStart()V

    return-void
.end method

.method public handleStop()V
    .locals 1

    .line 502
    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0}, Lorg/apache/cordova/PluginManager;->onStop()V

    return-void
.end method

.method public hideCustomView()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    const-string v0, "CordovaWebViewImpl"

    const-string v1, "Hiding Custom View"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 320
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    .line 322
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 325
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public init(Lorg/apache/cordova/CordovaInterface;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/apache/cordova/CordovaPreferences;

    invoke-direct {v1}, Lorg/apache/cordova/CordovaPreferences;-><init>()V

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;)V

    return-void
.end method

.method public init(Lorg/apache/cordova/CordovaInterface;Ljava/util/List;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/cordova/CordovaInterface;",
            "Ljava/util/List<",
            "Lorg/apache/cordova/PluginEntry;",
            ">;",
            "Lorg/apache/cordova/CordovaPreferences;",
            ")V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-nez v0, :cond_1

    .line 85
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 86
    iput-object p3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 87
    new-instance v0, Lorg/apache/cordova/PluginManager;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {v0, p0, v1, p2}, Lorg/apache/cordova/PluginManager;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    .line 88
    new-instance p2, Lorg/apache/cordova/CordovaResourceApi;

    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-direct {p2, v0, v1}, Lorg/apache/cordova/CordovaResourceApi;-><init>(Landroid/content/Context;Lorg/apache/cordova/PluginManager;)V

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    .line 89
    new-instance p2, Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-direct {p2}, Lorg/apache/cordova/NativeToJsMessageQueue;-><init>()V

    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    .line 90
    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;

    invoke-direct {v0}, Lorg/apache/cordova/NativeToJsMessageQueue$NoOpBridgeMode;-><init>()V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 91
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    new-instance v0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;-><init>(Lorg/apache/cordova/CordovaWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    invoke-virtual {p2, v0}, Lorg/apache/cordova/NativeToJsMessageQueue;->addBridgeMode(Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;)V

    .line 93
    const-string p2, "DisallowOverscroll"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 94
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engineClient:Lorg/apache/cordova/CordovaWebViewImpl$EngineClient;

    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    iget-object v5, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    iget-object v6, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/cordova/CordovaWebViewEngine;->init(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebViewEngine$Client;Lorg/apache/cordova/CordovaResourceApi;Lorg/apache/cordova/PluginManager;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    .line 100
    iget-object p1, v1, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string p2, "org.apache.cordova.CoreAndroid"

    const/4 p3, 0x1

    const-string v0, "CoreAndroid"

    invoke-virtual {p1, v0, p2, p3}, Lorg/apache/cordova/PluginManager;->addService(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 101
    iget-object p1, v1, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {p1}, Lorg/apache/cordova/PluginManager;->init()V

    return-void

    :cond_1
    move-object v1, p0

    .line 83
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public isButtonPlumbedToJs(I)Z
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCustomViewShowing()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 192
    invoke-virtual {p0, p1, v0}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    return-void
.end method

.method public loadUrlIntoView(Ljava/lang/String;Z)V
    .locals 9

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> loadUrl("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CordovaWebViewImpl"

    invoke-static {v1, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "about:blank"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_6

    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 117
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    if-nez p2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    move v8, v2

    if-eqz v8, :cond_4

    .line 121
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 122
    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->appPlugin:Lorg/apache/cordova/CoreAndroid;

    .line 123
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {p2}, Lorg/apache/cordova/PluginManager;->init()V

    .line 125
    :cond_3
    iput-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadedUrl:Ljava/lang/String;

    .line 129
    :cond_4
    iget p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    .line 130
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v2, "LoadUrlTimeoutValue"

    const/16 v3, 0x4e20

    invoke-virtual {v0, v2, v3}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v5

    .line 133
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/cordova/CordovaWebViewImpl$1;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;Ljava/lang/String;)V

    .line 153
    new-instance v6, Lorg/apache/cordova/CordovaWebViewImpl$2;

    invoke-direct {v6, p0, v5, p2, v0}, Lorg/apache/cordova/CordovaWebViewImpl$2;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;IILjava/lang/Runnable;)V

    .line 173
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 175
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    new-instance v3, Lorg/apache/cordova/CordovaWebViewImpl$3;

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lorg/apache/cordova/CordovaWebViewImpl$3;-><init>(Lorg/apache/cordova/CordovaWebViewImpl;ILjava/lang/Runnable;Ljava/lang/String;Z)V

    invoke-virtual {p2, v3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    move-object v4, p0

    .line 185
    const-string p1, "Cordova activity does not exist."

    invoke-static {v1, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_0
    move-object v4, p0

    move-object v7, p1

    .line 113
    iget-object p1, v4, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p1, v7, v2}, Lorg/apache/cordova/CordovaWebViewEngine;->loadUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0, p1}, Lorg/apache/cordova/PluginManager;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendJavascript(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue;->addJavaScript(Ljava/lang/String;)V

    return-void
.end method

.method public sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->nativeToJsMessageQueue:Lorg/apache/cordova/NativeToJsMessageQueue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/cordova/NativeToJsMessageQueue;->addPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V

    return-void
.end method

.method public setButtonPlumbedToJs(IZ)V
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported keycode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 396
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 398
    :cond_2
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->boundKeyCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebViewEngine;->setInputType(I)V

    return-void
.end method

.method public setNativeContextMenuDisabled(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v0, p1}, Lorg/apache/cordova/CordovaWebViewEngine;->setNativeContextMenuDisabled(Z)V

    return-void
.end method

.method public showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    const-string v0, "CordovaWebViewImpl"

    const-string v1, "showing Custom View"

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void

    .line 286
    :cond_0
    new-instance v0, Lorg/apache/cordova/CordovaWebViewImpl$WrapperView;

    invoke-virtual {p0}, Lorg/apache/cordova/CordovaWebViewImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/CordovaWebViewImpl$WrapperView;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaWebViewEngine;)V

    .line 287
    invoke-virtual {v0, p1}, Lorg/apache/cordova/CordovaWebViewImpl$WrapperView;->addView(Landroid/view/View;)V

    .line 290
    iput-object v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomView:Landroid/view/View;

    .line 291
    iput-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 294
    iget-object p1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 295
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {p2, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 304
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 305
    invoke-virtual {p1}, Landroid/view/ViewGroup;->bringToFront()V

    return-void
.end method

.method public showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 197
    const-string v0, "intent://"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "CordovaWebViewImpl"

    const-string v3, "showWebPage(%s, %b, %b, HashMap)"

    invoke-static {v2, v3, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 201
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebViewEngine;->clearHistory()V

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    .line 207
    iget-object p2, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/PluginManager;->shouldAllowNavigation(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p0, p1, v1}, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlIntoView(Ljava/lang/String;Z)V

    return-void

    .line 213
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "showWebPage: Refusing to load URL into webview since it is not in the <allow-navigation> allow list. URL="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 217
    :cond_2
    iget-object v3, p0, Lorg/apache/cordova/CordovaWebViewImpl;->pluginManager:Lorg/apache/cordova/PluginManager;

    invoke-virtual {v3, p1}, Lorg/apache/cordova/PluginManager;->shouldOpenExternalUrl(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "showWebPage: Refusing to send intent for URL since it is not in the <allow-intent> allow list. URL="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v3, 0x0

    .line 224
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 225
    invoke-static {p1, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 227
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    :try_start_1
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 233
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 234
    iget-object v4, p0, Lorg/apache/cordova/CordovaWebViewImpl;->resourceApi:Lorg/apache/cordova/CordovaResourceApi;

    invoke-virtual {v4, v3}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 236
    :cond_5
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 239
    :goto_1
    :try_start_2
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 240
    iget-object v1, p0, Lorg/apache/cordova/CordovaWebViewImpl;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 242
    :cond_6
    const-string v1, "Cordova activity does not exist."

    invoke-static {v2, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_0
    move-exception v3

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2

    :catch_1
    move-exception v1

    .line 247
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v3, :cond_7

    const-string v0, "browser_fallback_url"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 248
    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/cordova/CordovaWebViewImpl;->showWebPage(Ljava/lang/String;ZZLjava/util/Map;)V

    goto :goto_3

    .line 250
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error loading url "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_2
    move-exception p2

    .line 245
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Error parsing url "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .line 425
    iget v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/cordova/CordovaWebViewImpl;->loadUrlTimeout:I

    return-void
.end method

.class public Lorg/apache/cordova/engine/SystemWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SystemWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;
    }
.end annotation


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1435

.field private static final LOG_TAG:Ljava/lang/String; = "SystemWebChromeClient"


# instance fields
.field private final dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

.field private mVideoProgressView:Landroid/view/View;

.field protected final parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

.field private final permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissionListener:Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V
    .locals 2

    .line 83
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    .line 85
    new-instance v0, Lorg/apache/cordova/CordovaDialogsHelper;

    iget-object v1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->webView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/cordova/CordovaDialogsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    .line 86
    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$RequestMultiplePermissions;-><init>()V

    new-instance v1, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda1;-><init>(Lorg/apache/cordova/engine/SystemWebChromeClient;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method private createTempFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    const-string v0, ".jpg"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    const-string v1, "temp"

    invoke-static {v1, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private createUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cdv.core.file.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$onJsAlert$1(Landroid/webkit/JsResult;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onJsConfirm$2(Landroid/webkit/JsResult;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/webkit/JsResult;->confirm()V

    return-void

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onJsPrompt$3(Landroid/webkit/JsPromptResult;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method

.method static synthetic lambda$onPermissionRequest$4(Landroid/webkit/PermissionRequest;Ljava/lang/Boolean;)V
    .locals 0

    .line 345
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/PermissionRequest;->deny()V

    return-void
.end method


# virtual methods
.method public destroyLastDialog()V
    .locals 1

    .line 358
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    invoke-virtual {v0}, Lorg/apache/cordova/CordovaDialogsHelper;->destroyLastDialog()V

    return-void
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 4

    .line 207
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 213
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xd

    .line 214
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v3, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v3}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 218
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    .line 219
    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 220
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    iput-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->mVideoProgressView:Landroid/view/View;

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method synthetic lambda$new$0$org-apache-cordova-engine-SystemWebChromeClient(Ljava/util/Map;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->permissionListener:Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;

    if-eqz v0, :cond_2

    .line 89
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 90
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->permissionListener:Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;->onPermissionSelect(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0

    .line 161
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SystemWebChromeClient"

    const-string p3, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d"

    invoke-static {p2, p3, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/32 p1, 0x6400000

    .line 163
    invoke-interface {p9, p1, p2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .line 176
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 177
    invoke-interface {p2, p1, v0, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 179
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->pluginManager:Lorg/apache/cordova/PluginManager;

    const-string p2, "Geolocation"

    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Lorg/apache/cordova/CordovaPlugin;->hasPermisssion()Z

    move-result p2

    if-nez p2, :cond_0

    .line 182
    invoke-virtual {p1, v1}, Lorg/apache/cordova/CordovaPlugin;->requestPermissions(I)V

    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->hideCustomView()V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 102
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance p2, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda2;

    invoke-direct {p2, p4}, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda2;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {p1, p3, p2}, Lorg/apache/cordova/CordovaDialogsHelper;->showAlert(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 0

    .line 117
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance p2, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda0;

    invoke-direct {p2, p4}, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda0;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {p1, p3, p2}, Lorg/apache/cordova/CordovaDialogsHelper;->showConfirm(Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 138
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object p1, p1, Lorg/apache/cordova/engine/SystemWebViewEngine;->bridge:Lorg/apache/cordova/CordovaBridge;

    invoke-virtual {p1, p2, p3, p4}, Lorg/apache/cordova/CordovaBridge;->promptOnJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 140
    invoke-virtual {p5, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->dialogsHelper:Lorg/apache/cordova/CordovaDialogsHelper;

    new-instance p2, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda3;

    invoke-direct {p2, p5}, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda3;-><init>(Landroid/webkit/JsPromptResult;)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/cordova/CordovaDialogsHelper;->showPrompt(Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CordovaDialogsHelper$Result;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPermissionRequest: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemWebChromeClient"

    invoke-static {v1, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 335
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.webkit.resource.VIDEO_CAPTURE"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const-string v1, "android.permission.CAMERA"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "android.webkit.resource.AUDIO_CAPTURE"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 343
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 344
    new-instance v1, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda4;-><init>(Landroid/webkit/PermissionRequest;)V

    iput-object v1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->permissionListener:Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;

    .line 351
    iget-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->permissionLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {p1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    return-void

    .line 353
    :cond_2
    invoke-virtual {p1}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v0}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getCordovaWebView()Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/cordova/CordovaWebView;->showCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    const-string p1, "Temporary photo capture URI: "

    const-string v0, "Temporary photo capture file: "

    .line 231
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 234
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 235
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 236
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 238
    :cond_0
    const-string v4, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v3

    .line 242
    array-length v4, v3

    if-le v4, v5, :cond_1

    .line 243
    const-string v4, "*/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v4, "android.intent.extra.MIME_TYPES"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_1
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result p3

    const-string v3, "SystemWebChromeClient"

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    .line 251
    new-instance p3, Landroid/content/Intent;

    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {p3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    iget-object v6, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-virtual {v6}, Lorg/apache/cordova/engine/SystemWebViewEngine;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 253
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.camera.any"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 254
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p3, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 256
    :try_start_0
    invoke-direct {p0, v6}, Lorg/apache/cordova/engine/SystemWebChromeClient;->createTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 257
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-direct {p0, v6, v7}, Lorg/apache/cordova/engine/SystemWebChromeClient;->createUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string p1, "output"

    invoke-virtual {p3, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, v4

    .line 262
    :goto_0
    const-string p3, "Unable to create temporary file for photo capture"

    invoke-static {v3, p3, p1}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v4

    goto :goto_1

    .line 266
    :cond_2
    const-string p1, "Device does not support photo capture"

    invoke-static {v3, p1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object p3, v4

    move-object v0, p3

    .line 273
    :goto_1
    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p3, :cond_4

    .line 275
    new-array v1, v5, [Landroid/content/Intent;

    aput-object p3, v1, v2

    const-string p3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, p3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 279
    :cond_4
    :try_start_2
    const-string p3, "Starting intent for file chooser"

    invoke-static {v3, p3}, Lorg/apache/cordova/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object p3, p0, Lorg/apache/cordova/engine/SystemWebChromeClient;->parentEngine:Lorg/apache/cordova/engine/SystemWebViewEngine;

    iget-object p3, p3, Lorg/apache/cordova/engine/SystemWebViewEngine;->cordova:Lorg/apache/cordova/CordovaInterface;

    new-instance v1, Lorg/apache/cordova/engine/SystemWebChromeClient$1;

    invoke-direct {v1, p0, v0, p2}, Lorg/apache/cordova/engine/SystemWebChromeClient$1;-><init>(Lorg/apache/cordova/engine/SystemWebChromeClient;Landroid/net/Uri;Landroid/webkit/ValueCallback;)V

    const/16 v0, 0x1435

    invoke-interface {p3, v1, p1, v0}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 315
    const-string p3, "No activity found to handle file chooser intent."

    invoke-static {v3, p3, p1}, Lorg/apache/cordova/LOG;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    invoke-interface {p2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :goto_2
    return v5
.end method

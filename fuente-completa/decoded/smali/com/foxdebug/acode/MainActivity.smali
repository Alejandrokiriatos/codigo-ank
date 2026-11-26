.class public Lcom/foxdebug/acode/MainActivity;
.super Lorg/apache/cordova/CordovaActivity;
.source "MainActivity.java"


# static fields
.field private static weakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/apache/cordova/CordovaActivity;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 35
    sget-object v0, Lcom/foxdebug/acode/MainActivity;->weakContext:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasBrokenRealmeSplashTransfer()Z
    .locals 2

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 40
    const-string v1, "realme"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected loadConfig()V
    .locals 3

    .line 46
    invoke-super {p0}, Lorg/apache/cordova/CordovaActivity;->loadConfig()V

    .line 50
    invoke-static {}, Lcom/foxdebug/acode/MainActivity;->hasBrokenRealmeSplashTransfer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/foxdebug/acode/MainActivity;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "FadeSplashScreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->set(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p1, Lcom/foxdebug/acode/MainActivity;->weakContext:Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {p0}, Lcom/foxdebug/acode/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    const-string v0, "cdvStartInBackground"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/foxdebug/acode/MainActivity;->moveTaskToBack(Z)Z

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/foxdebug/acode/MainActivity;->launchUrl:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/foxdebug/acode/MainActivity;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

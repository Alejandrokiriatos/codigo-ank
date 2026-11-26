.class Lorg/apache/cordova/SplashScreenPlugin$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SplashScreenPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/SplashScreenPlugin$1;->onSplashScreenExit(Landroidx/core/splashscreen/SplashScreenViewProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/SplashScreenPlugin$1;

.field final synthetic val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;


# direct methods
.method constructor <init>(Lorg/apache/cordova/SplashScreenPlugin$1;Landroidx/core/splashscreen/SplashScreenViewProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lorg/apache/cordova/SplashScreenPlugin$1$1;->this$1:Lorg/apache/cordova/SplashScreenPlugin$1;

    iput-object p2, p0, Lorg/apache/cordova/SplashScreenPlugin$1$1;->val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 156
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 157
    iget-object p1, p0, Lorg/apache/cordova/SplashScreenPlugin$1$1;->val$splashScreenViewProvider:Landroidx/core/splashscreen/SplashScreenViewProvider;

    invoke-virtual {p1}, Landroidx/core/splashscreen/SplashScreenViewProvider;->remove()V

    .line 158
    iget-object p1, p0, Lorg/apache/cordova/SplashScreenPlugin$1$1;->this$1:Lorg/apache/cordova/SplashScreenPlugin$1;

    iget-object p1, p1, Lorg/apache/cordova/SplashScreenPlugin$1;->this$0:Lorg/apache/cordova/SplashScreenPlugin;

    iget-object p1, p1, Lorg/apache/cordova/SplashScreenPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object p1

    const-string v0, "updateSystemBars"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/apache/cordova/PluginManager;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

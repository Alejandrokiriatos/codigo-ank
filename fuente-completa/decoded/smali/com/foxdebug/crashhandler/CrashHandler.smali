.class public Lcom/foxdebug/crashhandler/CrashHandler;
.super Lorg/apache/cordova/CordovaPlugin;
.source "CrashHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 1

    .line 18
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 19
    const-string p2, "CrashHandler"

    const-string v0, "Initializing CrashHandler..."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    new-instance p2, Lcom/foxdebug/crashhandler/CrashHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/foxdebug/crashhandler/CrashHandler$1;-><init>(Lcom/foxdebug/crashhandler/CrashHandler;Lorg/apache/cordova/CordovaInterface;)V

    invoke-static {p2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

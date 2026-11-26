.class Lcom/foxdebug/sdcard/MyFileObserver;
.super Landroid/os/FileObserver;
.source "SDcard.java"


# static fields
.field private static final mask:I = 0xc02


# instance fields
.field private listener:Lorg/apache/cordova/CallbackContext;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    const/16 v0, 0xc02

    .line 1216
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 1217
    iput-object p2, p0, Lcom/foxdebug/sdcard/MyFileObserver;->listener:Lorg/apache/cordova/CallbackContext;

    .line 1218
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MyFileObserver: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyFileObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    const/16 v0, 0xc02

    .line 1210
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 1211
    iput-object p2, p0, Lcom/foxdebug/sdcard/MyFileObserver;->listener:Lorg/apache/cordova/CallbackContext;

    .line 1212
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "MyFileObserver: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyFileObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    .line 1223
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onEvent: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MyFileObserver"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object p2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    const/4 p2, 0x1

    .line 1225
    invoke-virtual {p1, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 1226
    iget-object p2, p0, Lcom/foxdebug/sdcard/MyFileObserver;->listener:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method public startObserving()V
    .locals 0

    .line 1230
    invoke-virtual {p0}, Lcom/foxdebug/sdcard/MyFileObserver;->startWatching()V

    return-void
.end method

.method public stopObserving()V
    .locals 0

    .line 1234
    invoke-virtual {p0}, Lcom/foxdebug/sdcard/MyFileObserver;->stopWatching()V

    return-void
.end method

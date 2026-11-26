.class public Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;
.super Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnlineEventsBridgeMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;
    }
.end annotation


# instance fields
.field private final delegate:Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;

.field private ignoreNextFlush:Z

.field private online:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;)Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;
    .locals 0

    iget-object p0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->delegate:Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonline(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->online:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputignoreNextFlush(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->ignoreNextFlush:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputonline(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->online:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;)V
    .locals 0

    .line 325
    invoke-direct {p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;-><init>()V

    .line 326
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->delegate:Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;

    return-void
.end method


# virtual methods
.method public notifyOfFlush(Lorg/apache/cordova/NativeToJsMessageQueue;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 357
    iget-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->ignoreNextFlush:Z

    if-nez p1, :cond_0

    .line 358
    iget-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->online:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->online:Z

    :cond_0
    return-void
.end method

.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->delegate:Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$2;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$2;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    invoke-interface {v0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 331
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;->delegate:Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$1;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode;)V

    invoke-interface {v0, v1}, Lorg/apache/cordova/NativeToJsMessageQueue$OnlineEventsBridgeMode$OnlineEventsBridgeModeDelegate;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

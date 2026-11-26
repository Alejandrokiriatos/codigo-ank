.class public final synthetic Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/cordova/CordovaDialogsHelper$Result;


# instance fields
.field public final synthetic f$0:Landroid/webkit/JsResult;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/JsResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/JsResult;

    return-void
.end method


# virtual methods
.method public final gotResult(ZLjava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda2;->f$0:Landroid/webkit/JsResult;

    invoke-static {v0, p1, p2}, Lorg/apache/cordova/engine/SystemWebChromeClient;->lambda$onJsAlert$1(Landroid/webkit/JsResult;ZLjava/lang/String;)V

    return-void
.end method

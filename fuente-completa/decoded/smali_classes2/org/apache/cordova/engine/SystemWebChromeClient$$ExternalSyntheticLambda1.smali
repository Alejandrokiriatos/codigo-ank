.class public final synthetic Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/engine/SystemWebChromeClient;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/engine/SystemWebChromeClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/engine/SystemWebChromeClient;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda1;->f$0:Lorg/apache/cordova/engine/SystemWebChromeClient;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;->lambda$new$0$org-apache-cordova-engine-SystemWebChromeClient(Ljava/util/Map;)V

    return-void
.end method

.class public final synthetic Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/cordova/engine/SystemWebChromeClient$PermissionListener;


# instance fields
.field public final synthetic f$0:Landroid/webkit/PermissionRequest;


# direct methods
.method public synthetic constructor <init>(Landroid/webkit/PermissionRequest;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda4;->f$0:Landroid/webkit/PermissionRequest;

    return-void
.end method


# virtual methods
.method public final onPermissionSelect(Ljava/lang/Boolean;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebChromeClient$$ExternalSyntheticLambda4;->f$0:Landroid/webkit/PermissionRequest;

    invoke-static {v0, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;->lambda$onPermissionRequest$4(Landroid/webkit/PermissionRequest;Ljava/lang/Boolean;)V

    return-void
.end method

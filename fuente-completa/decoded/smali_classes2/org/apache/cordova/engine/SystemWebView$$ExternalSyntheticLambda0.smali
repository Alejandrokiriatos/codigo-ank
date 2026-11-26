.class public final synthetic Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/engine/SystemWebView;

.field public final synthetic f$1:Landroid/view/ActionMode;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/engine/SystemWebView;Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/engine/SystemWebView;

    iput-object p2, p0, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;->f$1:Landroid/view/ActionMode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v1, p0, Lorg/apache/cordova/engine/SystemWebView$$ExternalSyntheticLambda0;->f$1:Landroid/view/ActionMode;

    invoke-virtual {v0, v1}, Lorg/apache/cordova/engine/SystemWebView;->lambda$suppressActionModeUi$0$org-apache-cordova-engine-SystemWebView(Landroid/view/ActionMode;)V

    return-void
.end method

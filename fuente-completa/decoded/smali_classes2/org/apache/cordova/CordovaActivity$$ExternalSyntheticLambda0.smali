.class public final synthetic Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic f$0:Lorg/apache/cordova/CordovaActivity;

.field public final synthetic f$1:Landroid/view/View;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/cordova/CordovaActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/CordovaActivity;

    iput-object p2, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iput-object p3, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$0:Lorg/apache/cordova/CordovaActivity;

    iget-object v1, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v2, p0, Lorg/apache/cordova/CordovaActivity$$ExternalSyntheticLambda0;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/cordova/CordovaActivity;->lambda$createViews$0$org-apache-cordova-CordovaActivity(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    return-object p1
.end method

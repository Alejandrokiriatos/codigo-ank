.class public final synthetic Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/WebViewStartUpConfig;

.field public final synthetic f$1:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/WebViewStartUpConfig;

    iput-object p2, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    iput-object p3, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$0:Landroidx/webkit/WebViewStartUpConfig;

    iget-object v1, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$1:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    iget-object v2, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Landroidx/webkit/WebViewCompat;->lambda$startUpWebView$3(Landroidx/webkit/WebViewStartUpConfig;Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroid/content/Context;)V

    return-void
.end method

.class public final synthetic Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

.field public final synthetic f$1:Landroidx/webkit/WebViewStartUpResult;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    iput-object p2, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda1;->f$1:Landroidx/webkit/WebViewStartUpResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda1;->f$0:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    iget-object v1, p0, Landroidx/webkit/WebViewCompat$$ExternalSyntheticLambda1;->f$1:Landroidx/webkit/WebViewStartUpResult;

    invoke-static {v0, v1}, Landroidx/webkit/WebViewCompat;->lambda$startUpWebView$0(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method

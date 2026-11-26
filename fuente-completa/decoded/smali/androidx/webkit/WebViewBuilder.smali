.class public final Landroidx/webkit/WebViewBuilder;
.super Ljava/lang/Object;
.source "WebViewBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewBuilder$Experimental;
    }
.end annotation


# instance fields
.field mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

.field private mPolicy:Landroidx/webkit/Policy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/webkit/WebViewBuilderException;
        }
    .end annotation

    .line 88
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 89
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$NoFramework;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    move-result-object v0

    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 101
    :cond_0
    new-instance v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    invoke-direct {v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;-><init>()V

    .line 103
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mPolicy:Landroidx/webkit/Policy;

    invoke-virtual {v1, v0}, Landroidx/webkit/Policy;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 105
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    invoke-interface {v1, p1, v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->build(Landroid/content/Context;Ljava/util/function/Consumer;)Landroid/webkit/WebView;

    move-result-object p1

    return-object p1

    .line 90
    :cond_1
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setPolicy(Landroidx/webkit/Policy;)Landroidx/webkit/WebViewBuilder;
    .locals 0

    .line 73
    iput-object p1, p0, Landroidx/webkit/WebViewBuilder;->mPolicy:Landroidx/webkit/Policy;

    return-object p0
.end method

.class public Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;
.super Ljava/lang/Object;
.source "WebViewStartUpCallbackAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/WebViewStartUpCallbackBoundaryInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$BlockingStartUpLocationImpl;
    }
.end annotation


# instance fields
.field private final mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    return-void
.end method

.method private webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;
    .locals 1

    .line 79
    new-instance v0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;

    invoke-direct {v0, p0, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;-><init>(Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)V

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/reflect/InvocationHandler;)V
    .locals 1

    .line 53
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 54
    invoke-static {v0, p1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 53
    invoke-direct {p0, p1}, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;

    move-result-object p1

    .line 56
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->mWebViewStartUpCallback:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    invoke-interface {v0, p1}, Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;->onSuccess(Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method

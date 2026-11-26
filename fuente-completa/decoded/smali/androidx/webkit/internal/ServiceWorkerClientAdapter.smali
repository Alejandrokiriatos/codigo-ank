.class public Landroidx/webkit/internal/ServiceWorkerClientAdapter;
.super Ljava/lang/Object;
.source "ServiceWorkerClientAdapter.java"

# interfaces
.implements Lorg/chromium/support_lib_boundary/ServiceWorkerClientBoundaryInterface;


# instance fields
.field private final mClient:Landroidx/webkit/ServiceWorkerClientCompat;


# direct methods
.method public constructor <init>(Landroidx/webkit/ServiceWorkerClientCompat;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/webkit/internal/ServiceWorkerClientAdapter;->mClient:Landroidx/webkit/ServiceWorkerClientCompat;

    return-void
.end method


# virtual methods
.method public getSupportedFeatures()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1

    .line 44
    iget-object v0, p0, Landroidx/webkit/internal/ServiceWorkerClientAdapter;->mClient:Landroidx/webkit/ServiceWorkerClientCompat;

    invoke-virtual {v0, p1}, Landroidx/webkit/ServiceWorkerClientCompat;->shouldInterceptRequest(Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

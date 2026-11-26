.class public Landroidx/webkit/PrefetchNetworkException;
.super Landroidx/webkit/PrefetchException;
.source "PrefetchNetworkException.java"


# static fields
.field public static final NO_HTTP_RESPONSE_STATUS_CODE:I


# instance fields
.field public final httpResponseStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Landroidx/webkit/PrefetchNetworkException;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroidx/webkit/PrefetchException;-><init>()V

    .line 46
    iput p1, p0, Landroidx/webkit/PrefetchNetworkException;->httpResponseStatusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Landroidx/webkit/PrefetchNetworkException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/webkit/PrefetchException;-><init>(Ljava/lang/String;)V

    .line 41
    iput p2, p0, Landroidx/webkit/PrefetchNetworkException;->httpResponseStatusCode:I

    return-void
.end method

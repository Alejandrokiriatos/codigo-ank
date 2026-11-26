.class public final synthetic Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/apache/commons/io/function/IOSupplier;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/net/finger/FingerClient;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/net/finger/FingerClient;ZLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/net/finger/FingerClient;

    iput-boolean p2, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$0:Lorg/apache/commons/net/finger/FingerClient;

    iget-boolean v1, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lorg/apache/commons/net/finger/FingerClient$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/finger/FingerClient;->lambda$query$0$org-apache-commons-net-finger-FingerClient(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

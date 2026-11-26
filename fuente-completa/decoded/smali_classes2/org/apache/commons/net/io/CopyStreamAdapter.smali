.class public Lorg/apache/commons/net/io/CopyStreamAdapter;
.super Ljava/lang/Object;
.source "CopyStreamAdapter.java"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# instance fields
.field private final listeners:Lorg/apache/commons/net/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/net/util/ListenerList<",
            "Lorg/apache/commons/net/io/CopyStreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    return-void
.end method

.method static synthetic lambda$bytesTransferred$0(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    .line 63
    invoke-interface {p1, p0}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    return-void
.end method

.method static synthetic lambda$bytesTransferred$1(JIJLorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 2

    move-wide v0, p3

    move p3, p2

    move-wide p1, p0

    move-object p0, p5

    move-wide p4, v0

    .line 78
    invoke-interface/range {p0 .. p5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    return-void
.end method


# virtual methods
.method public addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public bytesTransferred(JIJ)V
    .locals 7

    .line 78
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    new-instance v1, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;-><init>(JIJ)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/util/ListenerList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    new-instance v1, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/util/ListenerList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    return-void
.end method

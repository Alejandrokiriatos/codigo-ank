.class public final synthetic Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/apache/commons/net/io/CopyStreamEvent;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/net/io/CopyStreamEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/apache/commons/net/io/CopyStreamEvent;

    check-cast p1, Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-static {v0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->lambda$bytesTransferred$0(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V

    return-void
.end method

.class public final synthetic Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(JIJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$0:J

    iput p3, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p4, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-wide v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$0:J

    iget v2, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v3, p0, Lorg/apache/commons/net/io/CopyStreamAdapter$$ExternalSyntheticLambda0;->f$2:J

    move-object v5, p1

    check-cast v5, Lorg/apache/commons/net/io/CopyStreamListener;

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/net/io/CopyStreamAdapter;->lambda$bytesTransferred$1(JIJLorg/apache/commons/net/io/CopyStreamListener;)V

    return-void
.end method

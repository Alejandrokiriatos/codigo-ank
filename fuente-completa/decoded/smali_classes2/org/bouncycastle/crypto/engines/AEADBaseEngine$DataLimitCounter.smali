.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DataLimitCounter"
.end annotation


# instance fields
.field private count:J

.field private max:J

.field private n:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public increment()V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->count:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->max:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total data limit exceeded: maximum 2^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->n:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes per key (including nonce, AAD, and message)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public increment(I)V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->count:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->count:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->max:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total data limit exceeded: maximum 2^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " bytes per key (including nonce, AAD, and message)"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(I)V
    .locals 2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->n:I

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->max:J

    return-void
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->count:J

    return-void
.end method

.class public Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DecryptionFailureCounter"
.end annotation


# instance fields
.field private counter:[I

.field private n:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public increment()Z
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    aget v3, v2, v0

    add-int/2addr v3, v1

    aput v3, v2, v0

    if-eqz v3, :cond_0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->n:I

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    aget v0, v0, v3

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    shl-int v2, v1, v2

    :goto_0
    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    return v3
.end method

.method public init(I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->n:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->n:I

    add-int/lit8 p1, p1, 0x1f

    ushr-int/lit8 p1, p1, 0x5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    if-eqz v0, :cond_1

    array-length v0, v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->reset()V

    return-void

    :cond_1
    :goto_0
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    :cond_2
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->counter:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    return-void
.end method

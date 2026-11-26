.class abstract Lorg/bouncycastle/crypto/digests/AsconXofBase;
.super Lorg/bouncycastle/crypto/digests/AsconBaseDigest;

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# instance fields
.field private final buffer:[B

.field private bytesInBuffer:I

.field private m_squeezing:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;-><init>()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->BlockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->buffer:[B

    return-void
.end method

.method private ensureNoAbsorbWhileSqueezing(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "attempt to absorb while squeezing"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public doFinal([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->doOutput([BII)I

    move-result p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->reset()V

    return p1
.end method

.method public doOutput([BII)I
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->ensureSufficientOutputBuffer([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->BlockSize:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    sub-int/2addr v0, v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->buffer:[B

    invoke-static {v3, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sub-int v0, p3, v2

    iget v3, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->BlockSize:I

    if-lt v0, v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->BlockSize:I

    rem-int v3, v0, v3

    sub-int/2addr v0, v3

    add-int v3, p2, v2

    invoke-virtual {p0, p1, v3, v0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->hash([BII)I

    move-result v0

    add-int/2addr v2, v0

    :cond_1
    if-ge v2, p3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->BlockSize:I

    invoke-virtual {p0, v0, v1, v3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->hash([BII)I

    sub-int/2addr p3, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->buffer:[B

    add-int/2addr p2, v2

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->buffer:[B

    array-length p1, p1

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    add-int/2addr v2, p3

    :cond_2
    return v2
.end method

.method protected padAndAbsorb()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->m_squeezing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->m_squeezing:Z

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->padAndAbsorb()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget v1, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->ASCON_PB_ROUNDS:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->m_squeezing:Z

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->bytesInBuffer:I

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->m_squeezing:Z

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->ensureNoAbsorbWhileSqueezing(Z)V

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/AsconXofBase;->m_squeezing:Z

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->ensureNoAbsorbWhileSqueezing(Z)V

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->update([BII)V

    return-void
.end method

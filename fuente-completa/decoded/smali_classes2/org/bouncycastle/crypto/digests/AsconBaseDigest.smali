.class abstract Lorg/bouncycastle/crypto/digests/AsconBaseDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;
    }
.end annotation


# instance fields
.field protected ASCON_PB_ROUNDS:I

.field p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;


# direct methods
.method protected constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->ASCON_PB_ROUNDS:I

    invoke-static {}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;->getFriend(Lorg/bouncycastle/crypto/digests/AsconBaseDigest$Friend;)Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend;->getAsconPermutation(Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;)Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->DigestSize:I

    return-void
.end method


# virtual methods
.method protected ensureSufficientOutputBuffer([BII)V
    .locals 0

    add-int/2addr p2, p3

    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected finish([BI)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->padAndAbsorb()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->DigestSize:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->squeeze([BII)V

    return-void
.end method

.method protected hash([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->ensureSufficientOutputBuffer([BII)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->padAndAbsorb()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->squeeze([BII)V

    return p3
.end method

.method protected abstract loadBytes([BI)J
.end method

.method protected abstract loadBytes([BII)J
.end method

.method protected abstract pad(I)J
.end method

.method protected padAndAbsorb()V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->m_buf:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->m_bufPos:I

    invoke-virtual {p0, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->loadBytes([BII)J

    move-result-wide v3

    iget v5, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->m_bufPos:I

    invoke-virtual {p0, v5}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->pad(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method protected processBytes([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->loadBytes([BI)J

    move-result-wide p1

    xor-long/2addr p1, v1

    iput-wide p1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->ASCON_PB_ROUNDS:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method protected abstract setBytes(J[BI)V
.end method

.method protected abstract setBytes(J[BII)V
.end method

.method protected squeeze([BII)V
    .locals 6

    move v4, p2

    move v5, p3

    :goto_0
    iget p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->BlockSize:I

    if-le v5, p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p2, p2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p2, p3, p1, v4}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->setBytes(J[BI)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget p3, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->ASCON_PB_ROUNDS:I

    invoke-virtual {p2, p3}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->BlockSize:I

    add-int/2addr v4, p2

    iget p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->BlockSize:I

    sub-int/2addr v5, p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, p2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->setBytes(J[BII)V

    return-void
.end method

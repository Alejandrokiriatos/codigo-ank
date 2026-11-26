.class public Lorg/bouncycastle/crypto/digests/ISAPDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;
    }
.end annotation


# instance fields
.field private final p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend;->getAsconPermutation(Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;)Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->DigestSize:I

    const-string v0, "ISAP Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->reset()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finish([BI)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget v3, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_bufPos:I

    rsub-int/lit8 v3, v3, 0x7

    shl-int/lit8 v3, v3, 0x3

    const-wide/16 v4, 0x80

    shl-long v3, v4, v3

    :goto_0
    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_bufPos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_bufPos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_bufPos:I

    aget-byte v3, v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    iget v5, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->m_bufPos:I

    rsub-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    shl-long/2addr v3, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v1, v2, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteLength()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDigestSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method protected processBytes([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    xor-long/2addr p1, v1

    iput-wide p1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method public reset()V
    .locals 11

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v7, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    const-wide v9, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    const-wide v1, -0x116c675524980fc3L    # -4.533484413786092E224

    const-wide v3, -0x744de7ce39f0effeL

    const-wide v5, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    return-void
.end method

.method public bridge synthetic update(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->update(B)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->update([BII)V

    return-void
.end method

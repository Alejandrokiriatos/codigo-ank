.class public Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;
    }
.end annotation


# static fields
.field private static final D:I = 0x8

.field private static final SQUEEZE_RATE_INBYTES:I = 0x10


# instance fields
.field private blockCount:I

.field private final state:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const-string v0, "Photon-Beetle Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->algorithmName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

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
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    sub-int/2addr v3, v2

    aget-byte v2, v0, v3

    xor-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_buf:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    shl-int/2addr v5, v4

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    shl-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    add-int/2addr v3, v4

    aget-byte v4, v0, v3

    xor-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    sub-int/2addr v3, v2

    aget-byte v2, v0, v3

    xor-int/lit8 v2, v2, 0x20

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    goto :goto_1

    :cond_1
    if-ne v0, v3, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    sub-int/2addr v3, v2

    aget-byte v2, v0, v3

    xor-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation(Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->BlockSize:I

    if-ge v0, v3, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    aget-byte v5, v0, v3

    xor-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DigestSize:I

    sub-int/2addr v3, v2

    aget-byte v5, v0, v3

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->m_bufPos:I

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->BlockSize:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    :goto_0
    shl-int/lit8 v2, v2, 0x5

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    :goto_1
    invoke-static {}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation(Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation(Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    add-int/2addr p2, v2

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    shl-int/lit8 v0, v0, 0x2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->BlockSize:I

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->photonPermutation(Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest$Friend;[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->blockCount:I

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

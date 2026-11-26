.class public Lorg/bouncycastle/crypto/digests/RomulusDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;
    }
.end annotation


# instance fields
.field private final g:[B

.field private final h:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    const/16 v0, 0x10

    new-array v2, v0, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->g:[B

    iput v1, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->DigestSize:I

    const-string v0, "Romulus Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->algorithmName:Ljava/lang/String;

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
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->m_bufPos:I

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->m_bufPos:I

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    aget-byte v1, v0, v3

    xor-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    invoke-static {}, Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->g:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->m_buf:[B

    invoke-static {v0, v1, v2, v4, v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256(Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;[B[B[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    const/16 v1, 0x10

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->g:[B

    add-int/2addr p2, v1

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

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

    invoke-static {}, Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->g:[B

    invoke-static {v0, v1, v2, p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256(Lorg/bouncycastle/crypto/digests/RomulusDigest$Friend;[B[B[BI)V

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RomulusDigest;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

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

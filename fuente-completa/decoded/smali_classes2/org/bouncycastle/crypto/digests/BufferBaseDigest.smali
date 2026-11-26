.class abstract Lorg/bouncycastle/crypto/digests/BufferBaseDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;,
        Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ImmediateProcessor;,
        Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;,
        Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;
    }
.end annotation


# instance fields
.field protected BlockSize:I

.field protected DigestSize:I

.field protected algorithmName:Ljava/lang/String;

.field protected m_buf:[B

.field protected m_bufPos:I

.field protected processor:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->access$000(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ImmediateProcessor;

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ImmediateProcessor;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest;Lorg/bouncycastle/crypto/digests/BufferBaseDigest$1;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processor:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;

    return-void

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;

    invoke-direct {p1, p0, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest;Lorg/bouncycastle/crypto/digests/BufferBaseDigest$1;)V

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->ensureSufficientOutputBuffer([BI)V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->finish([BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->DigestSize:I

    return p1
.end method

.method protected ensureSufficientInputBuffer([BII)V
    .locals 0

    add-int/2addr p2, p3

    array-length p1, p1

    if-gt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected ensureSufficientOutputBuffer([BI)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->DigestSize:I

    add-int/2addr v0, p2

    array-length p1, p1

    if-gt v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract finish([BI)V
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->DigestSize:I

    return v0
.end method

.method protected abstract processBytes([BI)V
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processor:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->ensureSufficientInputBuffer([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processor:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;

    invoke-interface {v1, p3, v0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;->isLengthWithinAvailableSpace(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    return-void

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    const/4 v2, 0x0

    if-lez v1, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    invoke-static {p1, p2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processBytes([BI)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processor:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;

    iget v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    invoke-interface {v0, p3, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;->isLengthExceedingBlockSize(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processBytes([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    return-void
.end method

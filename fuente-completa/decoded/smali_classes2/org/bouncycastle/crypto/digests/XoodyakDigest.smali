.class public Lorg/bouncycastle/crypto/digests/XoodyakDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;
    }
.end annotation


# static fields
.field private static final PhaseDown:I = 0x1

.field private static final PhaseUp:I = 0x2

.field private static final TAGLEN:I = 0x10

.field private static final mode:I = 0x1


# instance fields
.field private Cd:I

.field private phase:I

.field private final state:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->DigestSize:I

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const-string v0, "Xoodyak Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

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
    .locals 11

    iget v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->m_bufPos:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v0, v2, v3, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->up(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[BI)V

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->m_buf:[B

    iget v9, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->m_bufPos:I

    iget v10, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Cd:I

    const/4 v5, 0x1

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->down(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[B[BIII)V

    :cond_1
    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v4, 0x40

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->up(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x10

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->down(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[B[BIII)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v0, v2, v4, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->up(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    add-int/2addr p2, v3

    invoke-static {v0, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

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
    .locals 11

    iget v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->up(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[BI)V

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;

    move-result-object v4

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    iget v9, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->BlockSize:I

    iget v10, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Cd:I

    const/4 v5, 0x1

    move-object v7, p1

    move v8, p2

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->down(Lorg/bouncycastle/crypto/digests/XoodyakDigest$Friend;I[B[BIII)V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Cd:I

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Cd:I

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

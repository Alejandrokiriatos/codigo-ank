.class public Lorg/bouncycastle/crypto/digests/SparkleDigest;
.super Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;,
        Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;
    }
.end annotation


# static fields
.field private static final RATE_WORDS:I = 0x4


# instance fields
.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private final state:[I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;)V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;->Buffered:Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBufferType;I)V

    sget-object v0, Lorg/bouncycastle/crypto/digests/SparkleDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$SparkleDigest$SparkleParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/SparkleDigest$SparkleParameters;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/16 v2, 0xc

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "ESCH-384"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DigestSize:I

    const/16 p1, 0x8

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid definition of SCHWAEMM instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, "ESCH-256"

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->algorithmName:Ljava/lang/String;

    const/16 p1, 0x20

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->DigestSize:I

    const/4 p1, 0x7

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    const/16 p1, 0xb

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    return-void
.end method

.method private static ELL(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method private processBlock([BII)V
    .locals 7

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0xc

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result p1

    xor-int p2, v0, v2

    invoke-static {p2}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result p2

    xor-int v3, v1, p1

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->ELL(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v5, 0x0

    aget v6, v4, v5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v6

    aput v0, v4, v5

    const/4 v0, 0x1

    aget v5, v4, v0

    xor-int/2addr v1, p2

    xor-int/2addr v1, v5

    aput v1, v4, v0

    const/4 v0, 0x2

    aget v1, v4, v0

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, v4, v0

    const/4 v0, 0x3

    aget v1, v4, v0

    xor-int/2addr p1, p2

    xor-int/2addr p1, v1

    aput p1, v4, v0

    const/4 p1, 0x4

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x5

    aget v0, v4, p1

    xor-int/2addr v0, p2

    aput v0, v4, p1

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x6

    aget v0, v4, p1

    xor-int/2addr v0, v3

    aput v0, v4, p1

    const/4 p1, 0x7

    aget v0, v4, p1

    xor-int/2addr p2, v0

    aput p2, v4, p1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    return-void

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

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
    .locals 6

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->BlockSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    const/high16 v4, 0x1000000

    xor-int/2addr v3, v4

    aput v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->BlockSize:I

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    aget v3, v0, v1

    const/high16 v4, 0x2000000

    xor-int/2addr v3, v4

    aput v3, v0, v1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_BIG:I

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v1, 0x4

    invoke-static {v0, v2, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->STATE_WORDS:I

    const/16 v3, 0x10

    if-ne v0, v3, :cond_1

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 v3, p2, 0x10

    invoke-static {v0, v2, v1, p1, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/lit8 p2, p2, 0x20

    invoke-static {v0, v2, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    return-void

    :cond_1
    invoke-static {}, Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;->access$000()Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    add-int/2addr p2, v3

    invoke-static {v0, v2, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

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
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->SPARKLE_STEPS_SLIM:I

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/SparkleDigest;->processBlock([BII)V

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SparkleDigest;->state:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([II)V

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

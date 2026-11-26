.class Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/digests/BufferBaseDigest$ProcessingBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/BufferBaseDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedProcessor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest;Lorg/bouncycastle/crypto/digests/BufferBaseDigest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;-><init>(Lorg/bouncycastle/crypto/digests/BufferBaseDigest;)V

    return-void
.end method


# virtual methods
.method public isLengthExceedingBlockSize(II)Z
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isLengthWithinAvailableSpace(II)Z
    .locals 0

    if-gt p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public update(B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iget v0, v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iget v1, v1, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->BlockSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->processBytes([BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iput v2, v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iget-object v0, v0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_buf:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/BufferBaseDigest$BufferedProcessor;->this$0:Lorg/bouncycastle/crypto/digests/BufferBaseDigest;

    iget v2, v1, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lorg/bouncycastle/crypto/digests/BufferBaseDigest;->m_bufPos:I

    aput-byte p1, v0, v2

    return-void
.end method

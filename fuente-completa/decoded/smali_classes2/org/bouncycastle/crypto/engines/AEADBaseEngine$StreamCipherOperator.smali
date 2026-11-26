.class Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AEADBaseEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamCipherOperator"
.end annotation


# instance fields
.field private len:I

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;-><init>(Lorg/bouncycastle/crypto/engines/AEADBaseEngine;)V

    return-void
.end method


# virtual methods
.method public getLen()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    return v0
.end method

.method public processByte(B[BI)I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->checkData(Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    new-array v3, v2, [B

    aput-byte p1, v3, v1

    invoke-virtual {v0, v3, v1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBufferEncrypt([BI[BI)V

    return v2

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v3, v3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->MAC_SIZE:I

    if-ne v0, v3, :cond_1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    invoke-virtual {v0, v3, v1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBufferDecrypt([BI[BI)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object p3, p3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    invoke-static {p2, v2, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget p3, p3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    sub-int/2addr p3, v2

    aput-byte p1, p2, p3

    return v2

    :cond_1
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v0, p3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    aput-byte p1, p2, v0

    return v1
.end method

.method public processBytes([BII[BI)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processor:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;

    invoke-interface {v1, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADProcessingBuffer;->getUpdateOutputSize(I)I

    move-result v1

    invoke-static {p2, p3, p5, v1}, Lorg/bouncycastle/util/Arrays;->segmentsOverlap(IIII)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array p1, p3, [B

    invoke-static {p4, p2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p2, v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->checkData(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-virtual {v0, p1, p2, p4, p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBufferEncrypt([BI[BI)V

    return p3

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->MAC_SIZE:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v4, v3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    invoke-virtual {v3, v4, v0, p4, p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBufferDecrypt([BI[BI)V

    sub-int/2addr v1, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v4, v3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    sub-int/2addr v4, v2

    iput v4, v3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v3, v3, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object v4, v4, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget v5, v5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    invoke-static {v3, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v2

    :cond_2
    if-lez v1, :cond_3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->len:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    invoke-virtual {v2, p1, p2, p4, p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBufferDecrypt([BI[BI)V

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    :cond_3
    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget-object p4, p4, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_buf:[B

    iget-object p5, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget p5, p5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamCipherOperator;->this$0:Lorg/bouncycastle/crypto/engines/AEADBaseEngine;

    iget p2, p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    add-int/2addr p2, p3

    iput p2, p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->m_bufPos:I

    return v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

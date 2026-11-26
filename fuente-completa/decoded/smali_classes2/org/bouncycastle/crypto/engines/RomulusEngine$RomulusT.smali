.class Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/RomulusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RomulusT"
.end annotation


# instance fields
.field CNT_Z:[B

.field LR:[B

.field S:[B

.field T:[B

.field Z:[B

.field private final g:[B

.field private final h:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;Lorg/bouncycastle/crypto/engines/RomulusEngine$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;-><init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V

    return-void
.end method

.method private processAfterAbsorbCiphertext()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iput v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iput v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    return-void
.end method

.method private processBuffer([BI[BI)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v10

    const/16 v11, 0x40

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    const/16 v12, 0x10

    iget-object v13, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/util/Bytes;->xor(I[B[BI[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    iget-object v8, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v10

    const/16 v11, 0x41

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    return-void
.end method


# virtual methods
.method public processBufferAAD([BI)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    return-void
.end method

.method public processBufferDecrypt([BI[BI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->processBuffer([BI[BI)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p3, p3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p4, p4, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    invoke-static {p1, p2, p3, p4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->processAfterAbsorbCiphertext()V

    return-void
.end method

.method public processBufferEncrypt([BI[BI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->processBuffer([BI[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    invoke-static {p3, p4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->processAfterAbsorbCiphertext()V

    return-void
.end method

.method public processFinalAAD()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iput v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iput v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    :cond_1
    return-void
.end method

.method public processFinalBlock([BI)V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    const/16 v3, 0x10

    if-eqz v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    invoke-static {v5}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v10

    const/16 v11, 0x40

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_buf:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    invoke-static {v0, v1, v4, p1, p2}, Lorg/bouncycastle/util/Bytes;->xor(I[B[B[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_buf:[B

    move p2, v2

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v4, v4, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, p2, v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v2

    goto :goto_2

    :cond_2
    move p1, v3

    :goto_2
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p2, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    goto/16 :goto_5

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    if-lez v0, :cond_4

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->AADBufferSize:I

    invoke-static {p1, p2, v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    goto :goto_3

    :cond_4
    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    invoke-static {p1, v2, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iput v2, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    move p1, v2

    goto :goto_4

    :cond_5
    :goto_3
    move p1, v3

    :goto_4
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p2, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    goto :goto_5

    :cond_6
    if-lez v0, :cond_7

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    invoke-static {p1, v2, p2, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    invoke-static {p1, v2, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    move p1, v2

    goto :goto_5

    :cond_7
    move p1, v3

    :goto_5
    const/16 p2, 0x1f

    const/4 v0, 0x7

    if-ne p1, v3, :cond_8

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    const/16 v0, 0x17

    invoke-static {p1, v0, p2, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    aput-byte v0, p1, p2

    goto :goto_6

    :cond_8
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, v0, p2, v2}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    aput-byte v0, p1, p2

    :goto_6
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    aget-byte p2, p1, v2

    xor-int/lit8 p2, p2, 0x2

    int-to-byte p2, p2

    aput-byte p2, p1, v2

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    invoke-static {p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->hirose_128_128_256([B[B[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    invoke-static {p1, v2, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    invoke-static {p1, v2, p2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    const/16 v9, 0x44

    const/16 v7, 0x10

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public reset()V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->h:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->g:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->LR:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->S:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->IV_SIZE:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->Z:[B

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->T:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    const/16 v10, 0x42

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusT;->CNT_Z:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    return-void
.end method

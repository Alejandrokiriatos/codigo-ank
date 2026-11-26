.class Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/RomulusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RomulusM"
.end annotation


# instance fields
.field private final mac_CNT:[B

.field private final mac_s:[B

.field private offset:I

.field private final s:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

.field private twist:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    const/4 v0, 0x7

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    return-void
.end method


# virtual methods
.method ad_encryption([BI[B[BI[B)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v6, p6

    const/16 v2, 0x10

    new-array v10, v2, [B

    new-array v14, v2, [B

    const/16 v11, 0x10

    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    sub-int v1, v1, v16

    move v15, v11

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    move-object/from16 v12, p1

    move/from16 v13, p2

    invoke-virtual/range {v11 .. v16}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    move-object/from16 v2, p3

    invoke-static {v15, v14, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    add-int v9, p2, v16

    iput v9, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    if-eqz v1, :cond_0

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v13, v1, v12

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    move-object/from16 v8, p1

    move v11, v15

    invoke-virtual/range {v7 .. v12}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    add-int/2addr v9, v12

    iput v9, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    const/4 v5, 0x0

    const/16 v7, 0x2c

    move-object/from16 v3, p4

    move-object v4, v10

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-virtual {v1, v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    return v13

    :cond_0
    return v1
.end method

.method public processBufferAAD([BI)V
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    const/16 v8, 0x28

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :goto_0
    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    return-void
.end method

.method public processBufferDecrypt([BI[BI)V
    .locals 0

    return-void
.end method

.method public processBufferEncrypt([BI[BI)V
    .locals 0

    return-void
.end method

.method public processFinalAAD()V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v3, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3, v1}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v3, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->BlockSize:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v7, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    const/16 v10, 0x28

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iput v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v1

    iput v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    return-void
.end method

.method public processFinalBlock([BI)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v2

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v3, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v3, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    :goto_0
    sub-int v8, v2, v3

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    check-cast v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamDataOperator;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamDataOperator;->getBytes()[B

    move-result-object v10

    and-int/lit8 v2, v1, 0x1f

    const/16 v15, 0x10

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v1, 0x38

    goto :goto_1

    :cond_1
    if-ge v2, v15, :cond_2

    const/16 v1, 0x32

    :goto_1
    int-to-byte v1, v1

    goto :goto_2

    :cond_2
    if-eq v2, v15, :cond_3

    const/16 v1, 0x3a

    goto :goto_1

    :cond_3
    const/16 v1, 0x30

    :goto_2
    and-int/lit8 v2, v8, 0x1f

    if-nez v2, :cond_4

    if-eqz v8, :cond_4

    xor-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_4
    if-ge v2, v15, :cond_5

    xor-int/lit8 v1, v1, 0x1

    :goto_3
    int-to-byte v1, v1

    goto :goto_4

    :cond_5
    if-eq v2, v15, :cond_6

    xor-int/lit8 v1, v1, 0x5

    goto :goto_3

    :cond_6
    :goto_4
    move/from16 v22, v1

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_a

    and-int/lit8 v1, v22, 0x8

    if-nez v1, :cond_7

    new-array v12, v15, [B

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v1, v8, v14

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    const/16 v13, 0x10

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    move-object/from16 v26, v12

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v25

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    const/16 v29, 0x2c

    const/16 v27, 0x0

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move-object/from16 v28, v4

    invoke-virtual/range {v23 .. v29}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    move v5, v1

    move v2, v14

    goto :goto_5

    :cond_7
    if-nez v8, :cond_8

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    :cond_8
    move v5, v8

    move v2, v11

    :goto_5
    if-lez v5, :cond_9

    iput v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    move-object v1, v10

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->ad_encryption([BI[B[BI[B)I

    move-result v5

    iget v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    goto :goto_5

    :cond_9
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v18

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v19

    const/16 v20, 0x0

    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    move-object/from16 v16, v1

    move-object/from16 v17, v3

    move-object/from16 v21, v4

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    iget-object v4, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    invoke-virtual {v1, v3, v4, v7}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    sub-int v11, v2, v8

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    invoke-static {v10, v8, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v8

    :goto_6
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    invoke-static {v1, v7, v2, v7, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v8, :cond_c

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v25

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v26

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v28

    const/16 v29, 0x24

    const/16 v27, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, v2

    invoke-virtual/range {v23 .. v29}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    move/from16 v13, p2

    :goto_7
    if-le v8, v15, :cond_b

    add-int/lit8 v8, v8, -0x10

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    move v1, v15

    const/16 v15, 0x10

    move-object/from16 v12, p1

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->rho([BI[BI[BI)V

    add-int/lit8 v13, v13, 0x10

    add-int/lit8 v11, v11, 0x10

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v15, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    invoke-static {v14}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v16

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v17

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v19

    const/16 v20, 0x24

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v20}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    move v15, v1

    goto :goto_7

    :cond_b
    move v1, v15

    iget-object v9, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    move-object/from16 v12, p1

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->rho([BI[BI[BI)V

    goto :goto_8

    :cond_c
    move v1, v15

    :goto_8
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    if-nez v2, :cond_10

    and-int/lit8 v2, v22, 0x8

    if-nez v2, :cond_d

    new-array v14, v1, [B

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    sub-int v5, v5, v21

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    const/16 v20, 0x10

    move-object/from16 v17, p1

    move/from16 v18, p2

    move-object/from16 v16, v1

    move-object/from16 v19, v14

    invoke-virtual/range {v16 .. v21}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    iget-object v11, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v12, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v11}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v13

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    const/16 v17, 0x2c

    const/4 v15, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    add-int v1, p2, v21

    move v2, v1

    goto :goto_9

    :cond_d
    if-nez v8, :cond_e

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    :cond_e
    move/from16 v2, p2

    :goto_9
    if-lez v5, :cond_f

    iput v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->ad_encryption([BI[B[BI[B)I

    move-result v5

    iget v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->offset:I

    goto :goto_9

    :cond_f
    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v18

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v19

    const/16 v20, 0x0

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v22}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    iget-object v3, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    invoke-virtual {v1, v2, v3, v7}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v1

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v2, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_buf:[B

    iget-object v3, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v3, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    invoke-static {v10, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iput v7, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    :cond_10
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->mac_CNT:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusM;->twist:Z

    return-void
.end method

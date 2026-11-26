.class Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/RomulusEngine$Instance;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/RomulusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RomulusN"
.end annotation


# instance fields
.field private final s:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

.field twist:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/RomulusEngine;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x10

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    return-void
.end method


# virtual methods
.method public processBufferAAD([BI)V
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->twist:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v7

    const/16 v8, 0x8

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->twist:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->twist:Z

    return-void
.end method

.method public processBufferDecrypt([BI[BI)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-virtual {v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, v0, p4

    aget-byte v2, p3, v1

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    aget-byte v3, v1, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    const/4 v6, 0x4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    return-void
.end method

.method public processBufferEncrypt([BI[BI)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-virtual {v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    aget-byte v2, v1, v0

    add-int v3, v0, p2

    aget-byte v4, p1, v3

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int v1, v0, p4

    aget-byte v2, p3, v1

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v3

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    const/4 v6, 0x4

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    return-void
.end method

.method public processFinalAAD()V
    .locals 15

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    new-array v4, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aad:[B

    const/4 v3, 0x0

    const/16 v5, 0x10

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->pad([BI[BII)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->twist:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    const/16 v7, 0x8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v7

    const/16 v8, 0x1a

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_aadPos:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    const/16 v7, 0x1a

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v8}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v13

    const/16 v14, 0x18

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    return-void
.end method

.method public processFinalBlock([BI)V
    .locals 10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-boolean v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v1, v1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->MAC_SIZE:I

    :goto_0
    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v8

    const/16 v9, 0x15

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v4, v3, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_buf:[B

    const/4 v5, 0x0

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->rho([BI[BI[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->lfsr_gf56([B)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$200(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$300(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v8

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget p1, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->m_bufPos:I

    if-ne p1, v1, :cond_2

    const/16 p1, 0x14

    goto :goto_1

    :cond_2
    const/16 p1, 0x15

    :goto_1
    move v9, p1

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->block_cipher([B[B[BI[BB)V

    :cond_3
    :goto_2
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/engines/RomulusEngine;->mac:[B

    invoke-virtual {p1, p2, v0, v2}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->g8A([B[BI)V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->s:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->this$0:Lorg/bouncycastle/crypto/engines/RomulusEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$400(Lorg/bouncycastle/crypto/engines/RomulusEngine;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/RomulusEngine;->access$500(Lorg/bouncycastle/crypto/engines/RomulusEngine;[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/RomulusEngine$RomulusN;->twist:Z

    return-void
.end method

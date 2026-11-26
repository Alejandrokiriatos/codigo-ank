.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$Dumbo;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$Jumbo;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$Spongent;
    }
.end annotation


# instance fields
.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private final instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KEY_SIZE:I

    const/16 v1, 0xc

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/16 p1, 0x19

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-instance p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Delirium;-><init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;Lorg/bouncycastle/crypto/engines/ElephantEngine$1;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    const-string p1, "Elephant 200 AEAD"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Elephant"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x16

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-instance p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$Jumbo;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Jumbo;-><init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    const-string p1, "Elephant 176 AEAD"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-instance p1, Lorg/bouncycastle/crypto/engines/ElephantEngine$Dumbo;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Dumbo;-><init>(Lorg/bouncycastle/crypto/engines/ElephantEngine;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    const-string p1, "Elephant 160 AEAD"

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    :goto_0
    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Stream:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Counter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method

.method private absorbAAD()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->permutation([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-void
.end method

.method private absorbCiphertext()V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xorTo(I[B[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->permutation([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xorTo(I[B[B[B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    return-object p0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/engines/ElephantEngine;)[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    return-object p0
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/engines/ElephantEngine;B)B
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result p0

    return p0
.end method

.method private computeCipherBlock([BII[BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xorTo(I[B[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->permutation([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v0, v1, v2, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xorTo(I[B[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {p3, p1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[B)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {p1, v3, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private lfsr_step()V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->lfsr_step()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private processAADBytes([B)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    invoke-static {v0, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    if-ne v0, v5, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {p1, v4, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v4

    return-void

    :cond_2
    :goto_0
    move v0, v4

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v0, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    invoke-static {v0, v4, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    sget-object v5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    :goto_1
    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    :goto_2
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    sub-int/2addr v5, v0

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    sub-int/2addr v6, v7

    if-gt v5, v6, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v1, v7, p1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr p1, v5

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void

    :cond_4
    if-lez v6, :cond_5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    invoke-static {v8, v7, p1, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_5
    add-int/2addr v6, v0

    add-int/2addr v0, v5

    invoke-static {p1, v6, v0, v4}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget p1, p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    if-eq p1, v2, :cond_7

    if-eq p1, v1, :cond_6

    return-void

    :cond_6
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void

    :cond_7
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void
.end method

.method private processBuffer([BI[BILorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processFinalAAD()V

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step()V

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->computeCipherBlock([BII[BI)V

    iget p1, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    if-lez p1, :cond_2

    iget-object p1, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget-object p2, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget p3, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->absorbCiphertext()V

    :cond_2
    iget-object p1, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    if-eq p1, p5, :cond_3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->absorbAAD()V

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->swapMasks()V

    iget p1, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    return-void
.end method

.method private processBytes([B[BIIIIII)V
    .locals 15

    move/from16 v0, p5

    move/from16 v1, p7

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 v4, 0x0

    move/from16 v10, p3

    move/from16 v11, p4

    move v7, v4

    :goto_0
    if-ge v3, v11, :cond_8

    add-int/lit8 v5, v0, -0x1

    if-ne v3, v5, :cond_0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    mul-int/2addr v5, v3

    sub-int v5, v1, v5

    goto :goto_1

    :cond_0
    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    :goto_1
    move v8, v5

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step()V

    if-ge v3, v0, :cond_2

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->computeCipherBlock([BII[BI)V

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v6, v4, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v6, p1

    goto :goto_2

    :cond_1
    move-object/from16 v6, p1

    invoke-static {v6, v7, v2, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/2addr v10, v8

    add-int/2addr v7, v8

    goto :goto_3

    :cond_2
    move-object/from16 v6, p1

    :goto_3
    move/from16 v8, p6

    if-lez v3, :cond_6

    if-gt v3, v8, :cond_6

    add-int/lit8 v9, v3, -0x1

    iget v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    mul-int/2addr v9, v12

    const/4 v12, 0x1

    if-ne v9, v1, :cond_3

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v9, v12, v13, v4}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    aput-byte v12, v9, v4

    goto :goto_4

    :cond_3
    sub-int v9, v1, v9

    iget v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    if-gt v13, v9, :cond_4

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v9, v4, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_4
    if-lez v9, :cond_5

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget-object v14, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-static {v13, v4, v14, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v14, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v13, v9, v14, v4}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    aput-byte v12, v13, v9

    :cond_5
    :goto_4
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->absorbCiphertext()V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, p8

    if-ge v3, v9, :cond_7

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->absorbAAD()V

    :cond_7
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->swapMasks()V

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v13, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v2, v4, v12, v4, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_8
    iput v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    return-void
.end method

.method private rotl(B)B
    .locals 1

    shl-int/lit8 v0, p1, 0x1

    and-int/lit16 p1, p1, 0xff

    ushr-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    int-to-byte p1, p1

    return p1
.end method

.method private swapMasks()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    return-void
.end method

.method public static xorTo(I[B[B[B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    aget-byte v1, p3, v0

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected checkAAD()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkData(Z)Z
    .locals 2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget p1, p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needs to be initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be reused for encryption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finishAAD(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->finishAAD2(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getIVBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getIVBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getKeyBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMac()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    sub-int/2addr p1, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_bufPos:I

    add-int/2addr p1, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1

    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_bufPos:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    return p1

    :pswitch_1
    return v1

    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_bufPos:I

    add-int/2addr v0, p1

    iget p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    rem-int p1, v0, p1

    sub-int/2addr v0, p1

    return v0

    :pswitch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected init([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    new-array p2, p2, [B

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KEY_SIZE:I

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->permutation([B)V

    return-void
.end method

.method public bridge synthetic processAADByte(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADByte(B)V

    return-void
.end method

.method public bridge synthetic processAADBytes([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processAADBytes([BII)V

    return-void
.end method

.method protected processBufferAAD([BI)V
    .locals 0

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 6

    sget-object v5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBuffer([BI[BILorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 p2, 0x0

    iget p3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 6

    sget-object v5, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBuffer([BI[BILorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    iget-object p1, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 p2, 0x0

    iget p3, v0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    invoke-static {v3, v4, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processByte(B[BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic processBytes([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method protected processFinalAAD()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    check-cast v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$StreamAADOperator;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->getLen()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperator;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget v0, v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->dataOperator:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperator;->getLen()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    :goto_0
    sub-int v10, v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processFinalAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    div-int v0, v10, v0

    add-int/lit8 v9, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    rem-int v1, v10, v1

    if-eqz v1, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v0

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->IV_SIZE:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    add-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    div-int/2addr v1, v3

    add-int/lit8 v11, v1, 0x1

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_buf:[B

    move-object v3, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v3 .. v11}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)V

    iget p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->instance:Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-interface {p1, p2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$Permutation;->permutation([B)V

    iget p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BlockSize:I

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    iget-object p1, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object p2, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->mac:[B

    iget v0, v3, Lorg/bouncycastle/crypto/engines/ElephantEngine;->MAC_SIZE:I

    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset()V

    return-void
.end method

.method protected reset(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->fill([BB)V

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void
.end method

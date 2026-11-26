.class public Lorg/bouncycastle/crypto/engines/AsconEngine;
.super Lorg/bouncycastle/crypto/engines/AsconBaseEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;
    }
.end annotation


# instance fields
.field private K2:J

.field private final asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->IV_SIZE:I

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->BlockSize:I

    const-wide v0, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128 AEAD"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid parameter setting for ASCON AEAD"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->BlockSize:I

    const-wide v0, -0x7f7ff3f800000000L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-128a AEAD"

    goto :goto_0

    :cond_2
    const/16 p1, 0x14

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->BlockSize:I

    const-wide v0, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string p1, "Ascon-80pq AEAD"

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->BlockSize:I

    if-ne p1, v2, :cond_3

    const/4 v2, 0x6

    :cond_3
    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    iget p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->BlockSize:I

    iput p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->AADBufferSize:I

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->dsep:J

    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->Default:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    return-void
.end method


# virtual methods
.method protected ascon_aeadinit()V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iget-wide v9, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v2, v4

    iput-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    return-void
.end method

.method public bridge synthetic doFinal([BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method protected finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V
    .locals 8

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long/2addr v6, v5

    or-long/2addr v3, v6

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shl-long/2addr v3, v5

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long/2addr v6, v5

    or-long/2addr v3, v6

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shl-long/2addr v3, v5

    :goto_0
    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v1.2"

    return-object v0
.end method

.method public bridge synthetic getIVBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getIVBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getKeyBytesSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getKeyBytesSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMac()[B
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getUpdateOutputSize(I)I
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getUpdateOutputSize(I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected init([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    const/16 v1, 0x8

    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iget p2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    const/16 v2, 0x10

    if-ne p2, v2, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    return-void

    :cond_0
    iget p2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->KEY_SIZE:I

    const/16 v1, 0x14

    if-ne p2, v1, :cond_1

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    const/16 p2, 0xc

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method protected loadBytes([BI)J
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected pad(I)J
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    rsub-int/lit8 p1, p1, 0x38

    const-wide/16 v0, 0x80

    shl-long/2addr v0, p1

    return-wide v0
.end method

.method public bridge synthetic processAADByte(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processAADByte(B)V

    return-void
.end method

.method public bridge synthetic processAADBytes([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processAADBytes([BII)V

    return-void
.end method

.method public bridge synthetic processByte(B[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processByte(B[BI)I

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

    invoke-super/range {p0 .. p5}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processBytes([BII[BI)I

    move-result p1

    return p1
.end method

.method protected processFinalAAD()V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aad:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aadPos:I

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aadPos:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-lt v0, v4, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aad:[B

    invoke-static {v7, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    xor-long/2addr v5, v7

    iput-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aad:[B

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v7

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aadPos:I

    sub-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x3

    rsub-int/lit8 v3, v3, 0x38

    shl-long/2addr v1, v3

    and-long/2addr v1, v7

    xor-long/2addr v1, v5

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aad:[B

    invoke-static {v6, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_aadPos:I

    shl-int/lit8 v3, v3, 0x3

    rsub-int/lit8 v3, v3, 0x38

    shl-long/2addr v1, v3

    and-long/2addr v1, v6

    xor-long/2addr v1, v4

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    return-void
.end method

.method protected processFinalDecrypt([BI[BI)V
    .locals 8

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt p2, v3, :cond_0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v6, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr v6, v4

    iput-wide v6, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v6, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v6, v7, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iput-wide v4, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    add-int/2addr p4, v3

    add-int/lit8 p2, p2, -0x8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->pad(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    if-eqz p2, :cond_1

    invoke-static {p1, v3, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    xor-long/2addr v4, v2

    iput-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-static {v4, v5, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    shl-int/lit8 p2, p2, 0x3

    ushr-long/2addr v0, p2

    and-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    xor-long/2addr p2, v2

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v3, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->pad(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, v3, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    if-eqz p2, :cond_1

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr v4, v2

    iput-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v4, v5, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    shl-int/lit8 p2, p2, 0x3

    ushr-long/2addr v0, p2

    and-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr p2, v2

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :cond_1
    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method protected processFinalEncrypt([BI[BI)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/2addr p4, v1

    add-int/lit8 p2, p2, -0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->pad(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v4

    xor-long v1, v2, v4

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->pad(I)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :goto_0
    invoke-static {v0, v1, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    :cond_1
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->reset()V

    return-void
.end method

.method protected setBytes(J[BI)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method

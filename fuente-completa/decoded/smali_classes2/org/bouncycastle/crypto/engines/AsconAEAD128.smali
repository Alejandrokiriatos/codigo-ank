.class public Lorg/bouncycastle/crypto/engines/AsconAEAD128;
.super Lorg/bouncycastle/crypto/engines/AsconBaseEngine;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->BlockSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->AADBufferSize:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->MAC_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->IV_SIZE:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->KEY_SIZE:I

    const-wide v0, 0x1000808c0001L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->ASCON_IV:J

    const-string v0, "Ascon-AEAD128"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->algorithmName:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->nr:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->dsep:J

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->macSizeLowerBound:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;->Immediate:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;->DataLimit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;

    sget-object v2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;->DataLimit:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->setInnerMembers(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$ProcessingBufferType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$AADOperatorType;Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataOperatorType;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->dataLimitCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->init(I)V

    new-instance v0, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->decryptionFailureCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;

    return-void
.end method

.method private finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void
.end method


# virtual methods
.method protected ascon_aeadinit()V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->ASCON_IV:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    iget-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->N0:J

    iget-wide v9, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->N1:J

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

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

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v1.3"

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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->MAC_SIZE:I

    shl-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x20

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    const/16 v4, 0x8

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->decryptionFailureCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->init(I)V

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    cmp-long p1, v7, v2

    if-nez p1, :cond_0

    iget-wide v7, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

    cmp-long p1, v7, v5

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->dataLimitCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DataLimitCounter;->reset()V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->decryptionFailureCounter:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$DecryptionFailureCounter;->reset()V

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K0:J

    iput-wide v5, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->K1:J

    :cond_1
    invoke-static {p2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->N0:J

    invoke-static {p2, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->N1:J

    return-void
.end method

.method protected loadBytes([BI)J
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected pad(I)J
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    const-wide/16 v0, 0x1

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
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->BlockSize:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->loadBytes([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->loadBytes([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->BlockSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->nr:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->AADBufferSize:I

    invoke-static {v0, v1, v4, v3}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long v3, v4, v6

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v1

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    invoke-virtual {p0, v5}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v5

    xor-long/2addr v1, v5

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aad:[B

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v3

    iget v5, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->m_aadPos:I

    invoke-virtual {p0, v5}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v5

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    return-void
.end method

.method protected processFinalDecrypt([BI[BI)V
    .locals 10

    const-wide/16 v0, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt p2, v3, :cond_0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    add-int/lit8 p2, p2, -0x8

    invoke-static {p1, v3, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

    move-result-wide v6

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v8, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr v8, v4

    invoke-static {v8, v9, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v8, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    xor-long/2addr v8, v6

    add-int/2addr p4, v3

    invoke-static {v8, v9, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iput-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    shl-int/lit8 v2, p2, 0x3

    shl-long/2addr v0, v2

    neg-long v0, v0

    and-long/2addr p3, v0

    iput-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    or-long/2addr p3, v6

    iput-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v0

    xor-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1, v2, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

    move-result-wide v2

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v4, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr v4, v2

    invoke-static {v4, v5, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    shl-int/lit8 v4, p2, 0x3

    shl-long/2addr v0, v4

    neg-long v0, v0

    and-long/2addr p3, v0

    iput-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    or-long/2addr p3, v2

    iput-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v0

    xor-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method protected processFinalEncrypt([BI[BI)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lt p2, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    add-int/lit8 p2, p2, -0x8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-static {p1, v1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    add-int/2addr p4, v1

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v0

    xor-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {p1, v0, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

    move-result-wide v4

    xor-long/2addr v2, v4

    iput-wide v2, v1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-static {v0, v1, p3, p4, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BII)V

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p3, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->pad(I)J

    move-result-wide v0

    xor-long p2, p3, v0

    iput-wide p2, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    :goto_0
    sget-object p1, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/AsconAEAD128;->finishData(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;)V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->reset()V

    return-void
.end method

.method protected setBytes(J[BI)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.class abstract Lorg/bouncycastle/crypto/engines/AsconBaseEngine;
.super Lorg/bouncycastle/crypto/engines/AEADBaseEngine;


# instance fields
.field protected ASCON_IV:J

.field protected K0:J

.field protected K1:J

.field protected N0:J

.field protected N1:J

.field protected dsep:J

.field protected nr:I

.field p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    return-void
.end method


# virtual methods
.method protected abstract ascon_aeadinit()V
.end method

.method protected finishAAD(Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;Z)V
    .locals 4

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    iget p2, p2, Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;->ord:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processFinalAAD()V

    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->nr:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, p2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->dsep:J

    xor-long/2addr v0, v2

    iput-wide v0, p2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_aadPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_state:Lorg/bouncycastle/crypto/engines/AEADBaseEngine$State;

    return-void
.end method

.method public abstract getAlgorithmVersion()Ljava/lang/String;
.end method

.method protected abstract loadBytes([BI)J
.end method

.method protected abstract pad(I)J
.end method

.method protected processBufferAAD([BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->BlockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide p1

    xor-long/2addr p1, v1

    iput-wide p1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->nr:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method protected processBufferDecrypt([BI[BI)V
    .locals 4

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v2, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    xor-long/2addr v2, v0

    invoke-virtual {p0, v2, v3, p3, p4}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iput-wide v0, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->BlockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide p1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    xor-long/2addr v0, p1

    add-int/lit8 p4, p4, 0x8

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    iget-object p3, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iput-wide p1, p3, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->nr:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method protected processBufferEncrypt([BI[BI)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide v3

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v0, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->BlockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    add-int/lit8 p2, p2, 0x8

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->loadBytes([BI)J

    move-result-wide p1

    xor-long/2addr p1, v1

    iput-wide p1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    add-int/lit8 p4, p4, 0x8

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget p2, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->nr:I

    invoke-virtual {p1, p2}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    return-void
.end method

.method protected processFinalBlock([BI)V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_bufPos:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processFinalEncrypt([BI[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->m_bufPos:I

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->processFinalDecrypt([BI[BI)V

    :goto_0
    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->mac:[B

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->mac:[B

    const/16 v1, 0x8

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->setBytes(J[BI)V

    return-void
.end method

.method protected abstract processFinalDecrypt([BI[BI)V
.end method

.method protected abstract processFinalEncrypt([BI[BI)V
.end method

.method protected reset(Z)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/AEADBaseEngine;->reset(Z)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconBaseEngine;->ascon_aeadinit()V

    return-void
.end method

.method protected abstract setBytes(J[BI)V
.end method

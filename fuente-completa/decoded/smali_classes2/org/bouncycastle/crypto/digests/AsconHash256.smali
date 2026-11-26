.class public Lorg/bouncycastle/crypto/digests/AsconHash256;
.super Lorg/bouncycastle/crypto/digests/AsconBaseDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;-><init>()V

    const-string v0, "Ascon-Hash256"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconHash256;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconHash256;->reset()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteLength()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDigestSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method protected loadBytes([BI)J
    .locals 0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected loadBytes([BII)J
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BII)J

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

.method public reset()V
    .locals 11

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconHash256;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v7, 0x3c7fd4a4d56a4db3L    # 2.7608679372149224E-17

    const-wide v9, 0x1a5c464906c5976dL

    const-wide v1, -0x64e1ab6b16cb297fL    # -4.678004910788372E-178

    const-wide v3, 0x4bc3a01e333751d2L    # 9.624297980337329E56

    const-wide v5, -0x519ac69394cb47e6L    # -3.414167532956674E-85

    invoke-virtual/range {v0 .. v10}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    return-void
.end method

.method protected setBytes(J[BI)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    return-void
.end method

.method protected setBytes(J[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BII)V

    return-void
.end method

.method public bridge synthetic update(B)V
    .locals 0

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->update(B)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconBaseDigest;->update([BII)V

    return-void
.end method

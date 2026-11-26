.class public Lorg/bouncycastle/crypto/digests/AsconXof128;
.super Lorg/bouncycastle/crypto/digests/AsconXofBase;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;-><init>()V

    const-string v0, "Ascon-XOF-128"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof128;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXof128;->reset()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doFinal([BI)I
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->doFinal([BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic doFinal([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->doFinal([BII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic doOutput([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->doOutput([BII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic getAlgorithmName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getByteLength()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->getByteLength()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDigestSize()I
    .locals 1

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->getDigestSize()I

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

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v7, 0xee0ea53416b58ccL    # 5.195339944817046E-237

    const-wide v9, -0x1fab8adb2490f422L    # -1.0971659452402832E156

    const-wide v1, -0x257d3189726bb815L    # -1.0184414615485609E128

    const-wide v3, -0x33831938a0e10697L    # -2.9026804509358688E60

    const-wide v5, -0x18af70287ff7a9cfL    # -4.6119752952151E189

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

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->update(B)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->update([BII)V

    return-void
.end method

.class public Lorg/bouncycastle/crypto/digests/AsconXof;
.super Lorg/bouncycastle/crypto/digests/AsconXofBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;
    }
.end annotation


# instance fields
.field asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->BlockSize:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    sget-object v1, Lorg/bouncycastle/crypto/digests/AsconXof$1;->$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-XofA"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Ascon Hash"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc

    iput p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->ASCON_PB_ROUNDS:I

    const-string p1, "Ascon-Xof"

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconXof;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconXof;->reset()V

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

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected loadBytes([BII)J
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BII)J

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

.method public reset()V
    .locals 25

    move-object/from16 v0, p0

    invoke-super {v0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->reset()V

    sget-object v1, Lorg/bouncycastle/crypto/digests/AsconXof$1;->$SwitchMap$org$bouncycastle$crypto$digests$AsconXof$AsconParameters:[I

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/digests/AsconXof$AsconParameters;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v10, 0x246885e1de0d225bL

    const-wide v12, -0x5734a31ccbb668c1L    # -3.555599418810494E-112

    const-wide v4, 0x44906568b77b9832L    # 1.935713262823832E22

    const-wide v6, -0x32729351acbaaaceL    # -3.873456514193764E65

    const-wide v8, -0x84aded8a9bdded7L    # -4.360391687961922E268

    invoke-virtual/range {v3 .. v13}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    return-void

    :cond_1
    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/AsconXof;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v21, 0x5aad0a7a8153650cL    # 6.290696206041096E128

    const-wide v23, 0x4f3e0e32539493b6L    # 5.3103393191581195E73

    const-wide v15, -0x4a81d8c47eb32beaL    # -5.0370341941429796E-51

    const-wide v17, 0x2b51042562ae2420L

    const-wide v19, 0x66a3a7768ddf2218L    # 2.6724012130814204E186

    invoke-virtual/range {v14 .. v24}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    return-void
.end method

.method protected setBytes(J[BI)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method

.method protected setBytes(J[BII)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BII)V

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

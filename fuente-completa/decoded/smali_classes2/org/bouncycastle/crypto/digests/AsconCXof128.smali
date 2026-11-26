.class public Lorg/bouncycastle/crypto/digests/AsconCXof128;
.super Lorg/bouncycastle/crypto/digests/AsconXofBase;


# instance fields
.field private final z0:J

.field private final z1:J

.field private final z2:J

.field private final z3:J

.field private final z4:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    invoke-direct {p0, v1, v0, v0}, Lorg/bouncycastle/crypto/digests/AsconCXof128;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconCXof128;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;-><init>()V

    const-string v0, "Ascon-CXOF128"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->algorithmName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconCXof128;->ensureSufficientInputBuffer([BII)V

    const/16 v0, 0x100

    if-gt p3, v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/AsconCXof128;->initState([BII)V

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z0:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z1:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z2:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z3:J

    iget-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide p1, p1, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    iput-wide p1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z4:J

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "customized string is too long"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initState([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v8, 0x112ef093aa5c698bL    # 6.530254544305363E-226

    const-wide v10, 0xc8356340a347f0L

    const-wide v2, 0x500cccc894e3c9e8L    # 4.1685058959605324E77

    const-wide v4, 0x5bed06f28f71248dL    # 6.59314013930257E134

    const-wide v6, 0x3b03a0f930afd512L

    invoke-virtual/range {v1 .. v11}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    goto :goto_0

    :cond_0
    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const-wide v19, 0x2ab14907720780b6L    # 4.82344860909032E-103

    const-wide v21, -0x70c0e2fd2bcd43baL

    const-wide v13, 0x675527c2a0e8de03L    # 5.89110484625156E189

    const-wide v15, 0x43d12d7dc0377bbcL    # 4.951134948459213E18

    const-wide v17, -0x166fe213bd917e4bL    # -3.084169735771006E200

    invoke-virtual/range {v12 .. v22}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->set(JJJJJ)V

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    int-to-long v5, v1

    const/4 v7, 0x3

    shl-long/2addr v5, v7

    xor-long/2addr v3, v5

    iput-wide v3, v2, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->p(I)V

    invoke-virtual/range {p0 .. p3}, Lorg/bouncycastle/crypto/digests/AsconCXof128;->update([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/AsconCXof128;->padAndAbsorb()V

    :goto_0
    invoke-super {v0}, Lorg/bouncycastle/crypto/digests/AsconXofBase;->reset()V

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->p:Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    iget-wide v1, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z0:J

    iget-wide v3, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z1:J

    iget-wide v5, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z2:J

    iget-wide v7, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z3:J

    iget-wide v9, p0, Lorg/bouncycastle/crypto/digests/AsconCXof128;->z4:J

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

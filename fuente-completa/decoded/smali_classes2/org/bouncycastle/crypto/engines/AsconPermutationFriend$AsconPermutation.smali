.class public Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/AsconPermutationFriend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsconPermutation"
.end annotation


# instance fields
.field public x0:J

.field public x1:J

.field public x2:J

.field public x3:J

.field public x4:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public p(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->round(J)V

    return-void
.end method

.method public round(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    xor-long v1, v1, p1

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iget-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iget-wide v5, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    xor-long v7, v3, v5

    iget-wide v9, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    xor-long v11, v9, v1

    or-long v13, v9, v1

    move-wide/from16 p1, v1

    iget-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    xor-long v15, v1, v13

    xor-long/2addr v15, v3

    and-long v17, v9, v7

    move-wide/from16 v19, v3

    xor-long v3, v15, v17

    or-long/2addr v13, v1

    xor-long/2addr v7, v13

    and-long v13, v9, p1

    and-long/2addr v13, v1

    xor-long/2addr v7, v13

    not-long v13, v1

    and-long/2addr v13, v5

    xor-long/2addr v13, v11

    xor-long v15, v1, v5

    or-long v15, v19, v15

    xor-long/2addr v11, v15

    or-long/2addr v5, v9

    xor-long/2addr v1, v5

    and-long v5, v19, v9

    xor-long/2addr v1, v5

    const/16 v5, 0x13

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v5, v3

    const/16 v9, 0x1c

    invoke-static {v3, v4, v9}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    const/16 v3, 0x27

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x3d

    invoke-static {v7, v8, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    const/4 v3, 0x1

    invoke-static {v13, v14, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v13

    const/4 v5, 0x6

    invoke-static {v13, v14, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    not-long v3, v3

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    const/16 v3, 0xa

    invoke-static {v11, v12, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v11

    const/16 v5, 0x11

    invoke-static {v11, v12, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    return-void
.end method

.method public set(JJJJJ)V
    .locals 0

    iput-wide p1, p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x0:J

    iput-wide p3, p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x1:J

    iput-wide p5, p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x2:J

    iput-wide p7, p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x3:J

    iput-wide p9, p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;->x4:J

    return-void
.end method

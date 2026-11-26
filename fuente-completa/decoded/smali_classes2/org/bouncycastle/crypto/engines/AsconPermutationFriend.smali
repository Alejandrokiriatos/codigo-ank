.class public Lorg/bouncycastle/crypto/engines/AsconPermutationFriend;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsconPermutation(Lorg/bouncycastle/crypto/digests/ISAPDigest$Friend;)Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconPermutationFriend$AsconPermutation;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "This method is only for use by ISAPDigest or Ascon Digest"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

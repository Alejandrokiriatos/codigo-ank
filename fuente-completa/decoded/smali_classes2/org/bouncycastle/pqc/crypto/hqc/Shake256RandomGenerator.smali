.class Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;
.super Ljava/lang/Object;


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;


# direct methods
.method public constructor <init>([BB)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    return-void
.end method

.method public constructor <init>([BIIB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v0, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    return-void
.end method


# virtual methods
.method public init([BIIB)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p1, p4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update(B)V

    return-void
.end method

.method public nextBytes([B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method

.method public nextBytes([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    return-void
.end method

.method public xofGetBytes([BI)V
    .locals 5

    and-int/lit8 v0, p2, 0x7

    sub-int/2addr p2, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    new-array v3, v1, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/Shake256RandomGenerator;->digest:Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {v4, v3, v2, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    invoke-static {v3, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

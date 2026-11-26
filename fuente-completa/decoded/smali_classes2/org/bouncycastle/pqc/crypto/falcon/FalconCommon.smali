.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
.super Ljava/lang/Object;


# static fields
.field static final l2bound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x18c7a
        0x32f4a
        0x68b41
        0xd9c87
        0x1c4518
        0x3aa246
        0x7974b6
        0xfb49c0
        0x2075426
        0x430299a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hash_to_point_vartime(Lorg/bouncycastle/crypto/digests/SHAKEDigest;[SI)V
    .locals 7

    const/4 v0, 0x1

    shl-int p2, v0, p2

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    invoke-virtual {p0, v2, v3, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    const v6, 0xf005

    if-ge v5, v6, :cond_0

    rem-int/lit16 v5, v5, 0x3001

    add-int/lit8 v6, v4, 0x1

    int-to-short v5, v5

    aput-short v5, p1, v4

    add-int/lit8 p2, p2, -0x1

    move v4, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method static is_short([SI[SI)I
    .locals 7

    const/4 v0, 0x1

    shl-int v1, v0, p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_0

    add-int v6, p1, v3

    aget-short v6, p0, v6

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    or-int/2addr v5, v4

    aget-short v6, p2, v3

    mul-int/2addr v6, v6

    add-int/2addr v4, v6

    or-int/2addr v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p0, v5, 0x1f

    neg-int p0, p0

    or-int/2addr p0, v4

    int-to-long p0, p0

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    sget-object p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget p2, p2, p3

    int-to-long p2, p2

    cmp-long p0, p0, p2

    if-gtz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method static is_short_half(I[SI)I
    .locals 6

    const/4 v0, 0x1

    shl-int v1, v0, p2

    ushr-int/lit8 v2, p0, 0x1f

    neg-int v2, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    aget-short v5, p1, v4

    mul-int/2addr v5, v5

    add-int/2addr p0, v5

    or-int/2addr v2, p0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, v2, 0x1f

    neg-int p1, p1

    or-int/2addr p0, p1

    int-to-long p0, p0

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    sget-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget p2, v1, p2

    int-to-long v1, p2

    cmp-long p0, p0, v1

    if-gtz p0, :cond_1

    return v0

    :cond_1
    return v3
.end method

.class public Lorg/bouncycastle/util/GF16;
.super Ljava/lang/Object;


# static fields
.field private static final F_STAR:[B

.field private static final INV4B:[B

.field private static final MT4B:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xf

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/util/GF16;->F_STAR:[B

    const/16 v1, 0x100

    new-array v1, v1, [B

    sput-object v1, Lorg/bouncycastle/util/GF16;->MT4B:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    sput-object v1, Lorg/bouncycastle/util/GF16;->INV4B:[B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    sget-object v4, Lorg/bouncycastle/util/GF16;->MT4B:[B

    sget-object v5, Lorg/bouncycastle/util/GF16;->F_STAR:[B

    aget-byte v6, v5, v2

    shl-int/lit8 v6, v6, 0x4

    aget-byte v7, v5, v3

    xor-int/2addr v6, v7

    add-int v7, v2, v3

    rem-int/2addr v7, v0

    aget-byte v5, v5, v7

    aput-byte v5, v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/util/GF16;->F_STAR:[B

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    const/16 v4, 0xe

    aget-byte v0, v0, v4

    sget-object v5, Lorg/bouncycastle/util/GF16;->INV4B:[B

    aput-byte v2, v5, v2

    move v5, v2

    :goto_2
    if-ge v1, v4, :cond_2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/GF16;->mt(II)B

    move-result v2

    invoke-static {v5, v0}, Lorg/bouncycastle/util/GF16;->mt(II)B

    move-result v5

    sget-object v6, Lorg/bouncycastle/util/GF16;->INV4B:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x4t
        0x8t
        0x3t
        0x6t
        0xct
        0xbt
        0x5t
        0xat
        0x7t
        0xet
        0xft
        0xdt
        0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BI[BII)V
    .locals 4

    shr-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, p3, 0x1

    aget-byte v3, p0, p1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    add-int/lit8 p3, p3, 0x2

    add-int/lit8 v3, p1, 0x1

    aget-byte p1, p0, p1

    ushr-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    aput-byte p1, p2, v2

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p4, v0

    if-ne p4, v0, :cond_1

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, p2, p3

    :cond_1
    return-void
.end method

.method public static decode([B[BI)V
    .locals 5

    shr-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p0, v1

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v2, v2, 0x2

    aget-byte v4, p0, v1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    aget-byte p0, p0, v1

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, p1, v2

    :cond_1
    return-void
.end method

.method public static encode([B[BI)V
    .locals 5

    shr-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v2, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, p1, v1

    :cond_1
    return-void
.end method

.method public static encode([B[BII)V
    .locals 6

    shr-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v2, v2, 0x2

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v5, p2, 0x1

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v5

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_1

    aget-byte p0, p0, v2

    and-int/lit8 p0, p0, 0xf

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    :cond_1
    return-void
.end method

.method public static innerProduct([BI[BII)B
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int/lit8 v2, p1, 0x1

    aget-byte p1, p0, p1

    aget-byte v3, p2, p3

    invoke-static {p1, v3}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result p1

    xor-int/2addr p1, v1

    int-to-byte v1, p1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr p3, p4

    move p1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static inv(B)B
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/GF16;->INV4B:[B

    and-int/lit8 p0, p0, 0xf

    aget-byte p0, v0, p0

    return p0
.end method

.method static mt(II)B
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/GF16;->MT4B:[B

    shl-int/lit8 p0, p0, 0x4

    xor-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public static mul(BB)B
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/GF16;->MT4B:[B

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

.method public static mul(II)I
    .locals 1

    sget-object v0, Lorg/bouncycastle/util/GF16;->MT4B:[B

    shl-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p1

    aget-byte p0, v0, p0

    return p0
.end method

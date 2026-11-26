.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;
.super Ljava/lang/Object;


# static fields
.field static final max_FG_bits:[B

.field static final max_fg_bits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static comp_decode([SI[BI)I
    .locals 9

    const/4 v0, 0x1

    shl-int p1, v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, p1, :cond_7

    if-lt v5, p3, :cond_0

    return v1

    :cond_0
    shl-int/lit8 v3, v3, 0x8

    aget-byte v6, p2, v5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    ushr-int v6, v3, v4

    and-int/lit16 v7, v6, 0x80

    and-int/lit8 v6, v6, 0x7f

    :cond_1
    if-nez v4, :cond_3

    if-lt v5, p3, :cond_2

    return v1

    :cond_2
    shl-int/lit8 v3, v3, 0x8

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/lit8 v5, v5, 0x1

    const/16 v4, 0x8

    :cond_3
    add-int/lit8 v4, v4, -0x1

    ushr-int v8, v3, v4

    and-int/2addr v8, v0

    if-eqz v8, :cond_6

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    return v1

    :cond_4
    if-eqz v7, :cond_5

    neg-int v6, v6

    :cond_5
    int-to-short v6, v6

    aput-short v6, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    add-int/lit16 v6, v6, 0x80

    const/16 v8, 0x7ff

    if-le v6, v8, :cond_1

    return v1

    :cond_7
    shl-int p0, v0, v4

    sub-int/2addr p0, v0

    and-int/2addr p0, v3

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v5
.end method

.method static comp_encode([BI[SI)I
    .locals 9

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_2

    aget-short v3, p2, v2

    const/16 v4, -0x7ff

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7ff

    if-le v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_2
    const/16 v6, 0x8

    if-ge v2, p3, :cond_7

    shl-int/lit8 v4, v4, 0x1

    aget-short v7, p2, v2

    if-gez v7, :cond_3

    neg-int v7, v7

    or-int/lit8 v4, v4, 0x1

    :cond_3
    shl-int/lit8 v4, v4, 0x7

    and-int/lit8 v8, v7, 0x7f

    or-int/2addr v4, v8

    ushr-int/lit8 v7, v7, 0x7

    add-int/lit8 v3, v3, 0x8

    add-int/2addr v7, v0

    shl-int/2addr v4, v7

    or-int/2addr v4, v0

    add-int/2addr v3, v7

    :goto_3
    if-lt v3, v6, :cond_6

    add-int/lit8 v3, v3, -0x8

    if-eqz p0, :cond_5

    if-lt v5, p1, :cond_4

    return v1

    :cond_4
    ushr-int v7, v4, v3

    int-to-byte v7, v7

    aput-byte v7, p0, v5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    if-lez v3, :cond_a

    if-eqz p0, :cond_9

    if-lt v5, p1, :cond_8

    return v1

    :cond_8
    sub-int/2addr v6, v3

    shl-int p1, v4, v6

    int-to-byte p1, p1

    aput-byte p1, p0, v5

    :cond_9
    add-int/2addr v5, v0

    :cond_a
    return v5
.end method

.method static modq_decode([SI[BI)I
    .locals 8

    const/4 v0, 0x1

    shl-int p1, v0, p1

    mul-int/lit8 v1, p1, 0xe

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-le v1, p3, :cond_0

    return v2

    :cond_0
    move p3, v2

    move v3, p3

    move v4, v3

    move v5, v4

    :goto_0
    if-ge p3, p1, :cond_3

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    add-int/lit8 v5, v4, 0x8

    const/16 v7, 0xe

    if-lt v5, v7, :cond_2

    add-int/lit8 v4, v4, -0x6

    ushr-int v5, v3, v4

    and-int/lit16 v5, v5, 0x3fff

    const/16 v7, 0x3001

    if-lt v5, v7, :cond_1

    return v2

    :cond_1
    int-to-short v5, v5

    aput-short v5, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    move v5, v6

    goto :goto_0

    :cond_3
    shl-int p0, v0, v4

    sub-int/2addr p0, v0

    and-int/2addr p0, v3

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method static modq_encode([BI[SI)I
    .locals 8

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const v3, 0xffff

    if-ge v2, p3, :cond_1

    aget-short v4, p2, v2

    and-int/2addr v3, v4

    const/16 v4, 0x3001

    if-lt v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v2, p3, 0xe

    add-int/lit8 v2, v2, 0x7

    shr-int/lit8 v2, v2, 0x3

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    if-le v2, p1, :cond_3

    return v1

    :cond_3
    move p1, v1

    move v4, p1

    :goto_1
    const/16 v5, 0x8

    if-ge v1, p3, :cond_5

    shl-int/lit8 v4, v4, 0xe

    aget-short v6, p2, v1

    and-int/2addr v6, v3

    or-int/2addr v4, v6

    add-int/lit8 p1, p1, 0xe

    :goto_2
    if-lt p1, v5, :cond_4

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 v6, v0, 0x1

    shr-int v7, v4, p1

    int-to-byte v7, v7

    aput-byte v7, p0, v0

    move v0, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-lez p1, :cond_6

    sub-int/2addr v5, p1

    shl-int p1, v4, v5

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_6
    :goto_3
    return v2
.end method

.method static trim_i8_decode([BII[BII)I
    .locals 9

    const/4 v0, 0x1

    shl-int p1, v0, p1

    mul-int v1, p1, p2

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    if-le v1, p5, :cond_0

    return v2

    :cond_0
    shl-int p5, v0, p2

    sub-int/2addr p5, v0

    add-int/lit8 v3, p2, -0x1

    shl-int v3, v0, v3

    move v4, v2

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, p1, :cond_3

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, p4, 0x1

    aget-byte p4, p3, p4

    and-int/lit16 p4, p4, 0xff

    or-int/2addr v5, p4

    add-int/lit8 v6, v6, 0x8

    :goto_1
    if-lt v6, p2, :cond_2

    if-ge v4, p1, :cond_2

    sub-int/2addr v6, p2

    ushr-int p4, v5, v6

    and-int/2addr p4, p5

    and-int v8, p4, v3

    neg-int v8, v8

    or-int/2addr p4, v8

    neg-int v8, v3

    if-ne p4, v8, :cond_1

    return v2

    :cond_1
    int-to-byte p4, p4

    aput-byte p4, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move p4, v7

    goto :goto_0

    :cond_3
    shl-int p0, v0, v6

    sub-int/2addr p0, v0

    and-int/2addr p0, v5

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method static trim_i8_encode([BII[BII)I
    .locals 7

    const/4 v0, 0x1

    shl-int p4, v0, p4

    add-int/lit8 v1, p5, -0x1

    shl-int v1, v0, v1

    sub-int/2addr v1, v0

    neg-int v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p4, :cond_2

    aget-byte v5, p3, v4

    if-lt v5, v2, :cond_1

    if-le v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    mul-int v1, p4, p5

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    if-nez p0, :cond_3

    goto :goto_4

    :cond_3
    if-le v1, p2, :cond_4

    return v3

    :cond_4
    shl-int p2, v0, p5

    sub-int/2addr p2, v0

    move v0, v3

    move v2, v0

    :goto_2
    const/16 v4, 0x8

    if-ge v3, p4, :cond_6

    shl-int/2addr v2, p5

    aget-byte v5, p3, v3

    const v6, 0xffff

    and-int/2addr v5, v6

    and-int/2addr v5, p2

    or-int/2addr v2, v5

    add-int/2addr v0, p5

    :goto_3
    if-lt v0, v4, :cond_5

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v5, p1, 0x1

    ushr-int v6, v2, v0

    int-to-byte v6, v6

    aput-byte v6, p0, p1

    move p1, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    sub-int/2addr v4, v0

    shl-int p2, v2, v4

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    :cond_7
    :goto_4
    return v1
.end method

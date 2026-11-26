.class Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;
.super Ljava/lang/Object;


# static fields
.field private static final GF16_MASK:I = 0x249


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ctGF16IsNotZero(B)I
    .locals 2

    and-int/lit16 p0, p0, 0xff

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 p0, p0, 0x3

    or-int/2addr p0, v0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static decodeMergeInHalf([B[BI)V
    .locals 3

    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int v1, v0, p2

    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static encodeMergeInHalf([BI[B)V
    .locals 5

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    ushr-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    div-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_0

    aget-byte v3, p0, v2

    aget-byte v4, p0, v0

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    aget-byte p0, p0, v2

    aput-byte p0, p2, v2

    :cond_1
    return-void
.end method

.method static gf16FromNibble(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x41

    shl-int/lit8 p0, p0, 0x2

    and-int/lit16 p0, p0, 0x208

    or-int/2addr p0, v0

    return p0
.end method

.method private static gf16Reduce(I)I
    .locals 2

    const v0, 0x49249249

    and-int/2addr v0, p0

    ushr-int/lit8 p0, p0, 0xc

    shl-int/lit8 v1, p0, 0x3

    xor-int/2addr p0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xc

    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xc

    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    and-int/lit16 p0, p0, 0x249

    return p0
.end method

.method static gf16ToNibble(I)B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/snova/GF16Utils;->gf16Reduce(I)I

    move-result p0

    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x5

    ushr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v0

    int-to-byte p0, p0

    return p0
.end method

.method static gf16mMul([B[B[BI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, p3, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-static {p0, v2, p1, v4, p3}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    aput-byte v6, p2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mMulMul([B[B[B[B[BI)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p5, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, p5, :cond_0

    invoke-static {p0, v2, p1, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, p5, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-static {p3, v0, p2, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    aput-byte v6, p4, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p5

    goto :goto_0

    :cond_2
    return-void
.end method

.method static gf16mMulMulTo([B[B[B[B[BI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p5, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, p5, :cond_0

    invoke-static {p0, v2, p1, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v5

    aput-byte v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, p5, :cond_1

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p4, v3

    invoke-static {p3, v0, p2, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p5

    goto :goto_0

    :cond_2
    return-void
.end method

.method static gf16mMulTo([B[BI[BII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p5, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, p5, :cond_0

    add-int/lit8 v4, p4, 0x1

    aget-byte v5, p3, p4

    add-int v6, p2, v3

    invoke-static {p0, v2, p1, v6, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, p4

    add-int/lit8 v3, v3, 0x1

    move p4, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mMulTo([B[B[BI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p3, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, p3, :cond_0

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p2, v3

    invoke-static {p0, v2, p1, v4, p3}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p2, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p3

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mMulTo([B[B[BII)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p4, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_0

    add-int/lit8 v4, p3, 0x1

    aget-byte v5, p2, p3

    invoke-static {p0, v2, p1, v3, p4}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p2, p3

    add-int/lit8 v3, v3, 0x1

    move p3, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mMulTo([B[B[B[B[BII)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p6, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, p6, :cond_0

    add-int/lit8 v4, p5, 0x1

    aget-byte v5, p4, p5

    invoke-static {p0, v2, p1, v3, p6}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    invoke-static {p2, v2, p3, v3, p6}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v7

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p4, p5

    add-int/lit8 v3, v3, 0x1

    move p5, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p6

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mMulToTo([B[B[B[B[BI)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p5, :cond_1

    move v4, v0

    :goto_1
    if-ge v4, p5, :cond_0

    aget-byte v5, p3, v3

    invoke-static {p0, v2, p1, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    add-int/lit8 v5, v3, 0x1

    aget-byte v6, p4, v3

    invoke-static {p1, v2, p2, v4, p5}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p4, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v2, p5

    goto :goto_0

    :cond_1
    return-void
.end method

.method static gf16mTranMulMul([BI[B[B[B[B[B[B[BI)V
    .locals 13

    move-object/from16 v0, p6

    move/from16 v1, p9

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_6

    move v6, v2

    :goto_1
    if-ge v6, v1, :cond_1

    add-int v7, p1, v6

    move v8, v2

    move v9, v8

    move v10, v3

    :goto_2
    if-ge v8, v1, :cond_0

    aget-byte v11, p0, v7

    aget-byte v12, p4, v10

    invoke-static {v11, v12}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v11

    xor-int/2addr v9, v11

    int-to-byte v9, v9

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v1

    add-int/2addr v10, v1

    goto :goto_2

    :cond_0
    aput-byte v9, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    move v7, v6

    :goto_3
    if-ge v6, v1, :cond_3

    move v8, v2

    move v9, v8

    :goto_4
    if-ge v8, v1, :cond_2

    add-int v10, v7, v8

    aget-byte v10, p2, v10

    aget-byte v11, v0, v8

    invoke-static {v10, v11}, Lorg/bouncycastle/util/GF16;->mul(BB)B

    move-result v10

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_2
    add-int v8, v3, v7

    aput-byte v9, p7, v8

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v7, v1

    goto :goto_3

    :cond_3
    move v6, v2

    :goto_5
    if-ge v6, v1, :cond_4

    add-int v7, p1, v6

    move-object/from16 v8, p5

    invoke-static {v8, v4, p0, v7, v1}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v8, p5

    move v6, v2

    :goto_6
    if-ge v6, v1, :cond_5

    add-int/lit8 v7, v5, 0x1

    move-object/from16 v9, p3

    invoke-static {v0, v2, v9, v6, v1}, Lorg/bouncycastle/util/GF16;->innerProduct([BI[BII)B

    move-result v10

    aput-byte v10, p8, v5

    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_6

    :cond_5
    move-object/from16 v9, p3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v1

    goto :goto_0

    :cond_6
    return-void
.end method

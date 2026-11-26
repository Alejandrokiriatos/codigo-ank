.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bit0Mask(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method

.method private static CopyCWD([J[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;)V
    .locals 6

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_0

    aget-object v4, p1, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v5, p1, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v5, v5

    invoke-static {v4, v1, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    return-void
.end method

.method public static decode([B[JII)V
    .locals 9

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    invoke-static {v3, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByte32Array([I[J)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_0

    new-instance v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v6, v2, v5

    mul-int/lit8 v7, v5, 0x4

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v8, 0x4

    invoke-static {v3, v7, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x80

    new-array v3, v1, [I

    new-array v1, v1, [I

    move v5, v4

    :goto_1
    if-ge v5, p2, :cond_1

    mul-int v6, v5, p3

    invoke-static {v3, v2, v6, p3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V

    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->hadamardTransform([I[I)V

    aget v6, v1, v4

    mul-int/lit8 v7, p3, 0x40

    sub-int/2addr v6, v7

    aput v6, v1, v4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->findPeaks([I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->CopyCWD([J[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;)V

    array-length p1, p0

    invoke-static {v0, v4, p0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encode([J[BII)V
    .locals 6

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    mul-int v0, p2, p3

    new-array v1, v0, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_2

    mul-int v0, v2, p3

    aget-object v3, v1, v0

    aget-byte v4, p1, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V

    const/4 v3, 0x1

    :goto_2
    if-ge v3, p3, :cond_1

    add-int v4, v0, v3

    aget-object v5, v1, v0

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->CopyCWD([J[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;)V

    return-void
.end method

.method static encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V
    .locals 4

    shr-int/lit8 v0, p1, 0x7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x55555556

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x33333334

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xf0f0f10

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v3, 0x1

    aput v0, v2, v3

    shr-int/lit8 p1, p1, 0x6

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result p1

    xor-int/2addr p1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x3

    aput p1, v0, v2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    xor-int/2addr p1, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method private static expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    mul-int/lit8 v5, v1, 0x20

    add-int/2addr v5, v2

    aget-object v6, p1, p2

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v6, v6, v1

    shr-int/2addr v6, v2

    and-int/2addr v6, v4

    aput v6, p0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_2
    if-ge v1, p3, :cond_4

    move v5, v0

    :goto_3
    if-ge v5, v2, :cond_3

    move v6, v0

    :goto_4
    if-ge v6, v3, :cond_2

    mul-int/lit8 v7, v5, 0x20

    add-int/2addr v7, v6

    aget v8, p0, v7

    add-int v9, v1, p2

    aget-object v9, p1, v9

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v9, v9, v5

    shr-int/2addr v9, v6

    and-int/2addr v9, v4

    add-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static findPeaks([I)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/16 v5, 0x80

    if-ge v1, v5, :cond_3

    aget v5, p0, v1

    if-lez v5, :cond_0

    const/4 v6, -0x1

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    and-int v7, v6, v5

    not-int v6, v6

    neg-int v8, v5

    and-int/2addr v6, v8

    or-int/2addr v6, v7

    if-le v6, v4, :cond_1

    move v2, v5

    :cond_1
    if-le v6, v4, :cond_2

    move v3, v1

    :cond_2
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-lez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    mul-int/2addr v0, v5

    or-int p0, v3, v0

    return p0
.end method

.method private static hadamardTransform([I[I)V
    .locals 10

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move v3, v2

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    move v4, v2

    :goto_1
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    aget v6, v1, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v7

    add-int/2addr v6, v8

    aput v6, v0, v4

    add-int/lit8 v6, v4, 0x40

    aget v5, v1, v5

    aget v7, v1, v7

    sub-int/2addr v5, v7

    aput v5, v0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :cond_1
    array-length v3, p0

    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

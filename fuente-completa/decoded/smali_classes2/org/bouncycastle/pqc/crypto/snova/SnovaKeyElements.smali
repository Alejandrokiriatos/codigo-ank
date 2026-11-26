.class Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;
.super Ljava/lang/Object;


# instance fields
.field public final T12:[[[B

.field public final map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

.field public final map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map1:Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v2, v3, v4

    const/4 v2, 0x1

    aput v0, v3, v2

    const/4 v0, 0x0

    aput v1, v3, v0

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->T12:[[[B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->map2:Lorg/bouncycastle/pqc/crypto/snova/MapGroup2;

    return-void
.end method

.method static copy3d([BI[[[B)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    aget-object v3, p2, v1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    array-length v4, v3

    invoke-static {p0, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, p2, v1

    aget-object v3, v3, v2

    array-length v3, v3

    add-int/2addr p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method static copy3d([[[B[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    aget-object v3, p0, v1

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    array-length v4, v3

    invoke-static {v3, v0, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, p0, v1

    aget-object v3, v3, v2

    array-length v3, v3

    add-int/2addr p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method static copy4d([BI[[[[B)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    aget-object v3, p2, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_2
    aget-object v4, p2, v1

    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    array-length v5, v4

    invoke-static {p0, p1, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, p2, v1

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    array-length v4, v4

    add-int/2addr p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method static copy4d([[[[B[BI)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyElements;->copy3d([[[B[BI)I

    move-result p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

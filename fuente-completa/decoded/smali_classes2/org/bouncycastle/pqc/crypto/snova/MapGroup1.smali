.class Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;
.super Ljava/lang/Object;


# instance fields
.field public final aAlpha:[[[B

.field public final bAlpha:[[[B

.field public final p11:[[[[B

.field public final p12:[[[[B

.field public final p21:[[[[B

.field public final qAlpha1:[[[B

.field public final qAlpha2:[[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getM()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getV()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getO()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getAlpha()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->getLsq()I

    move-result p1

    const/4 v4, 0x4

    new-array v5, v4, [I

    const/4 v6, 0x3

    aput p1, v5, v6

    const/4 v7, 0x2

    aput v1, v5, v7

    const/4 v8, 0x1

    aput v1, v5, v8

    const/4 v9, 0x0

    aput v0, v5, v9

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[[B

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p11:[[[[B

    new-array v5, v4, [I

    aput p1, v5, v6

    aput v2, v5, v7

    aput v1, v5, v8

    aput v0, v5, v9

    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[[[B

    iput-object v5, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p12:[[[[B

    new-array v4, v4, [I

    aput p1, v4, v6

    aput v1, v4, v7

    aput v2, v4, v8

    aput v0, v4, v9

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p21:[[[[B

    new-array v1, v6, [I

    aput p1, v1, v7

    aput v3, v1, v8

    aput v0, v1, v9

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    new-array v1, v6, [I

    aput p1, v1, v7

    aput v3, v1, v8

    aput v0, v1, v9

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    new-array v1, v6, [I

    aput p1, v1, v7

    aput v3, v1, v8

    aput v0, v1, v9

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    new-array v1, v6, [I

    aput p1, v1, v7

    aput v3, v1, v8

    aput v0, v1, v9

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    return-void
.end method

.method private static decodeAlpha([BI[[[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    add-int v2, p1, v1

    aget-object v3, p2, v0

    sub-int v4, p3, v1

    invoke-static {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeArray([BI[[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static decodeArray([BI[[BI)I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    aget-object v3, p2, v1

    array-length v3, v3

    shl-int/lit8 v4, p3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v4, p1, v2

    aget-object v5, p2, v1

    invoke-static {p0, v4, v5, v0, v3}, Lorg/bouncycastle/util/GF16;->decode([BI[BII)V

    add-int/lit8 v3, v3, 0x1

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sub-int/2addr p3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method static decodeP([BI[[[[BI)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    add-int v2, p1, v1

    aget-object v3, p2, v0

    invoke-static {p0, v2, v3, p3}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeAlpha([BI[[[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static fillAlpha([BI[[[BI)I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    move v3, v0

    :goto_1
    aget-object v4, p2, v1

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    array-length v4, v4

    sub-int v5, p3, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v5, p1, v2

    aget-object v6, p2, v1

    aget-object v6, v6, v3

    invoke-static {p0, v5, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static fillP([BI[[[[BI)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    add-int v2, p1, v1

    aget-object v3, p2, v0

    sub-int v4, p3, v1

    invoke-static {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillAlpha([BI[[[BI)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method decode([BIZ)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p11:[[[[B

    invoke-static {p1, v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeP([BI[[[[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p12:[[[[B

    sub-int v2, p2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeP([BI[[[[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p21:[[[[B

    sub-int v2, p2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeP([BI[[[[BI)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p3, :cond_0

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    sub-int v1, p2, v0

    invoke-static {p1, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeAlpha([BI[[[BI)I

    move-result p3

    add-int/2addr v0, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    sub-int v1, p2, v0

    invoke-static {p1, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeAlpha([BI[[[BI)I

    move-result p3

    add-int/2addr v0, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    sub-int v1, p2, v0

    invoke-static {p1, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeAlpha([BI[[[BI)I

    move-result p3

    add-int/2addr v0, p3

    iget-object p3, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    sub-int/2addr p2, v0

    invoke-static {p1, v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->decodeAlpha([BI[[[BI)I

    :cond_0
    return-void
.end method

.method fill([BZ)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p11:[[[[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillP([BI[[[[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p12:[[[[B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillP([BI[[[[BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->p21:[[[[B

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillP([BI[[[[BI)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->aAlpha:[[[B

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillAlpha([BI[[[BI)I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->bAlpha:[[[B

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillAlpha([BI[[[BI)I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha1:[[[B

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillAlpha([BI[[[BI)I

    move-result p2

    add-int/2addr v0, p2

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->qAlpha2:[[[B

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/snova/MapGroup1;->fillAlpha([BI[[[BI)I

    :cond_0
    return-void
.end method

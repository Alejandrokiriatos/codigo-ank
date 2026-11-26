.class abstract Lorg/bouncycastle/crypto/threshold/Polynomial;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Mode;)Lorg/bouncycastle/crypto/threshold/Polynomial;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Mode;->Native:Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Mode;

    if-ne p1, v0, :cond_0

    new-instance p1, Lorg/bouncycastle/crypto/threshold/PolynomialNative;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/threshold/PolynomialNative;-><init>(Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;)V

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/threshold/PolynomialTable;

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/threshold/PolynomialTable;-><init>(Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;)V

    return-object p1
.end method


# virtual methods
.method protected abstract gfDiv(II)B
.end method

.method protected abstract gfMul(II)B
.end method

.method protected gfPow(IB)B
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    shl-int v3, v0, v1

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p1, 0xff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/threshold/Polynomial;->gfMul(II)B

    move-result v2

    :cond_0
    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1, p1}, Lorg/bouncycastle/crypto/threshold/Polynomial;->gfMul(II)B

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-byte p1, v2

    return p1
.end method

.method public gfVecMul([B[[B)[B
    .locals 7

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    new-array v1, v1, [B

    move v2, v0

    :goto_0
    aget-object v3, p2, v0

    array-length v3, v3

    if-ge v2, v3, :cond_1

    move v3, v0

    move v4, v3

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_0

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    aget-object v6, p2, v3

    aget-byte v6, v6, v2

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/crypto/threshold/Polynomial;->gfMul(II)B

    move-result v5

    xor-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    int-to-byte v3, v4

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

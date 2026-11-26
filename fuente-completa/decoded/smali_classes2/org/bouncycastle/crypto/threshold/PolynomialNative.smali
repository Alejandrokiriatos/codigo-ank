.class Lorg/bouncycastle/crypto/threshold/PolynomialNative;
.super Lorg/bouncycastle/crypto/threshold/Polynomial;


# instance fields
.field private final IRREDUCIBLE:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/threshold/Polynomial;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/threshold/PolynomialNative$1;->$SwitchMap$org$bouncycastle$crypto$threshold$ShamirSecretSplitter$Algorithm:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/threshold/ShamirSecretSplitter$Algorithm;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x11d

    :goto_0
    iput p1, p0, Lorg/bouncycastle/crypto/threshold/PolynomialNative;->IRREDUCIBLE:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The algorithm is not correct"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0x11b

    goto :goto_0
.end method


# virtual methods
.method protected gfDiv(II)B
    .locals 1

    int-to-byte p2, p2

    const/4 v0, -0x2

    invoke-virtual {p0, p2, v0}, Lorg/bouncycastle/crypto/threshold/PolynomialNative;->gfPow(IB)B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/threshold/PolynomialNative;->gfMul(II)B

    move-result p1

    return p1
.end method

.method protected gfMul(II)B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lez p2, :cond_2

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    xor-int/2addr v0, p1

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/threshold/PolynomialNative;->IRREDUCIBLE:I

    xor-int/2addr p1, v1

    :cond_1
    shr-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 p1, 0x100

    if-lt v0, p1, :cond_4

    and-int/lit16 p1, v0, 0x100

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/bouncycastle/crypto/threshold/PolynomialNative;->IRREDUCIBLE:I

    xor-int/2addr v0, p1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    and-int/lit16 p1, v0, 0xff

    int-to-byte p1, p1

    return p1
.end method

.class public Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;
.super Ljava/lang/Object;


# instance fields
.field private final curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

.field private final g:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "a"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "q"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "h"

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "g_x"

    invoke-static {p6, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "g_y"

    invoke-static {p7, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->calculateDeterminant(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p4, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/math/ec/ECCurve$Fp;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v1, p6, p7}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->g:Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The order n must be prime"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The curve is singular, i.e the discriminant is equal to 0 mod q."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The parameter \'b\' is not in the field [0, q-1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The parameter \'a\' is not in the field [0, q-1]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field size q must be prime"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "curve"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "g"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "n"

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "h"

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->g:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method

.method private static calculateDeterminant(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    const-wide/16 v0, 0x1b

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getB()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getCurve()Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    return-object v0
.end method

.method public getG()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->g:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getN()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->curve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

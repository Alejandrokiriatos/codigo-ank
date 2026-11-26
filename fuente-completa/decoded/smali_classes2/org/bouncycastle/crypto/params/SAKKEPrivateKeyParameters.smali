.class public Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field private static final qMinOne:Ljava/math/BigInteger;


# instance fields
.field private final publicParams:Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

.field private final z:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->q:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->qMinOne:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->z:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->publicParams:Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getZ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Lorg/bouncycastle/math/ec/ECPoint;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "public key and private key of SAKKE do not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    sget-object v0, Lorg/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    sget-object v1, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->qMinOne:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->z:Ljava/math/BigInteger;

    sget-object v2, Lorg/bouncycastle/util/BigIntegers;->TWO:Ljava/math/BigInteger;

    invoke-static {v2, v1, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    sget-object v2, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->publicParams:Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getMasterSecret()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->z:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicParams()Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->publicParams:Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    return-object v0
.end method

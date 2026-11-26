.class public Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method static hashToIntegerRange([BLjava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 11

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {p2, p0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array v2, p0, [B

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v7, v6, [B

    move v8, v3

    :goto_0
    if-gt v8, v4, :cond_0

    invoke-interface {p2, v2, v3, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {p2, v2, v3, p0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v1, v3, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p2, v7, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    mul-int/lit8 v9, v6, 0x8

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    invoke-direct {v9, v10, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 18

    move-object/from16 v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getZ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getPrime()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getN()I

    move-result v6

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    move-object/from16 v9, p0

    iget-object v10, v9, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v6, v10}, Lorg/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v12

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v11

    invoke-static {v11, v4, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->hashToIntegerRange([BLjava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-virtual {v8, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v8, v2, v1, v4}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v8, v5}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    move-object v13, v5

    :goto_1
    const/4 v14, 0x0

    if-ltz v11, :cond_2

    invoke-static {v8, v13, v3}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2PointSquare(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v12}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    aget-object v13, v8, v14

    const/4 v15, 0x1

    aget-object v8, v8, v15

    invoke-virtual {v4, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-static {v13, v8, v2, v5, v3}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v8

    aget-object v13, v8, v14

    aget-object v8, v8, v15

    :cond_1
    move-object/from16 v17, v13

    move-object v13, v8

    move-object/from16 v8, v17

    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v8}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->hashToIntegerRange([BLjava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v14}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;

    div-int/lit8 v6, v6, 0x8

    invoke-static {v6, v10}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/kems/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v1
.end method

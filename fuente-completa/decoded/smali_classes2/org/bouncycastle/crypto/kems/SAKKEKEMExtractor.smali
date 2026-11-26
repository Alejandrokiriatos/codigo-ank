.class public Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final K_bs:Lorg/bouncycastle/math/ec/ECPoint;

.field private final P:Lorg/bouncycastle/math/ec/ECPoint;

.field private final Z_S:Lorg/bouncycastle/math/ec/ECPoint;

.field private final curve:Lorg/bouncycastle/math/ec/ECCurve;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final identifier:Ljava/math/BigInteger;

.field private final n:I

.field private final p:Ljava/math/BigInteger;

.field private final q:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->getPublicParams()Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getPrime()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->p:Ljava/math/BigInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getZ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->Z_S:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getIdentifier()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->identifier:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SAKKEPrivateKeyParameters;->getMasterSecret()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->K_bs:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getN()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->n:I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SAKKEPublicKeyParameters;->getDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method static computePairing(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 16

    move-object/from16 v0, p2

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    move-object/from16 v6, p3

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    const-wide/16 v11, 0x3

    invoke-static {v11, v12}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    sub-int/2addr v6, v1

    move-object/from16 v1, p0

    :goto_0
    if-ltz v6, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v12, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    sget-object v15, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v13, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-static {v0, v15}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v2, v4

    aget-object v2, v2, v5

    invoke-static {v15, v2, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2PointSquare(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    aget-object v15, v2, v4

    aget-object v2, v2, v5

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-static {v15, v2, v12, v8, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-static {v0, v15}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aget-object v15, v2, v4

    aget-object v2, v2, v5

    invoke-virtual {v7, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-static {v15, v2, v12, v8, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    if-lez v6, :cond_0

    move-object/from16 v12, p0

    invoke-virtual {v1, v12}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object/from16 v12, p0

    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_1
    aget-object v1, v2, v4

    aget-object v2, v2, v5

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2PointSquare(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v1, v4

    aget-object v1, v1, v5

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->fp2PointSquare(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    aget-object v2, v1, v4

    invoke-static {v0, v2}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static fp2Multiply(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method static fp2PointSquare(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    aput-object p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    const/4 v1, 0x0

    const/16 v2, 0x101

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p1, v2, v1}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->K_bs:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->p:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->q:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->computePairing(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iget v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->n:I

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->hashToIntegerRange([BLjava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->p:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->identifier:Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->q:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/kems/SAKKEKEMSGenerator;->hashToIntegerRange([BLjava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->P:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->Z_S:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->P:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v4, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->Z_S:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v3, v1, v4, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/kems/SAKKEKEMExtractor;->n:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Validation of R_bS failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getEncapsulationLength()I
    .locals 1

    const/16 v0, 0x111

    return v0
.end method

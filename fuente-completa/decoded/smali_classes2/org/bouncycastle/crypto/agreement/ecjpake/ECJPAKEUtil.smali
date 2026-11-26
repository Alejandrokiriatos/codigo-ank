.class public Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;
.super Ljava/lang/Object;


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->ZERO:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateA(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static calculateGA(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public static calculateGx(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method private static calculateHashForZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 0

    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->reset()V

    invoke-static {p4, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {p4, p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {p4, p2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {p4, p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    const/4 p1, 0x0

    invoke-interface {p4, p0, p1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p1
.end method

.method public static calculateKeyingMaterial(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p4, p0}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static calculateMacKey(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)[B
    .locals 1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->reset()V

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    const-string p0, "ECJPAKE_KC"

    invoke-static {p1, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p0

    new-array p0, p0, [B

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object p0
.end method

.method public static calculateMacTag(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;
    .locals 2

    invoke-static {p6, p7}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateMacKey(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object p6

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p7}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result p7

    new-array p7, p7, [B

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p6}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    const-string v1, "KC_1_U"

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {v0, p4}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-static {v0, p5}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->updateMac(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/math/ec/ECPoint;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p7, p0}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    invoke-static {p6, p0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, p7}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static calculateS(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "MUST ensure s is not equal to 0 modulo n"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static calculateS(Ljava/math/BigInteger;[C)Ljava/math/BigInteger;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateS(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static calculateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p6}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p6

    invoke-virtual {p0, p6}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p0, v0, p3, p5, p4}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateHashForZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p0

    new-instance p3, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {p3, v0, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;-><init>(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    return-object p3
.end method

.method public static generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static intToByteArray(I)[B
    .locals 5

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    int-to-byte p0, p0

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v0, v3, v4

    const/4 v0, 0x1

    aput-byte v1, v3, v0

    const/4 v0, 0x2

    aput-byte v2, v3, v0

    const/4 v0, 0x3

    aput-byte p0, v3, v0

    return-object v3
.end method

.method private static updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigest(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigest(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v0, p1

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateDigestIncludingSize(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->intToByteArray(I)[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v0, p1

    invoke-interface {p0, p1, v2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/bouncycastle/crypto/Mac;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method private static updateMac(Lorg/bouncycastle/crypto/Mac;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public static validateMacTag(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, p4

    move-object p4, p2

    move-object p2, v0

    move-object v0, p5

    move-object p5, p3

    move-object p3, v0

    invoke-static/range {p0 .. p7}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p8}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Partner MacTag validation failed. Therefore, the password, MAC, or digest algorithm of each participant does not match."

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Both participants are using the same participantId ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "). This is not allowed. Each participant must use a unique participantId."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received payload from incorrect partner ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "). Expected to receive payload from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static validateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p0, v0, p1, p7, p8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateHashForZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p7

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p8

    if-nez p8, :cond_3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p8

    invoke-virtual {p8}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p8}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p8}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p8}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object p8

    invoke-virtual {p8}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p8

    invoke-virtual {p8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p3

    if-gez p3, :cond_2

    const/4 p3, 0x1

    :try_start_0
    invoke-virtual {p1, p3}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p6}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p3

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p7, p4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->equals(Lorg/bouncycastle/math/ec/ECPoint;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Zero-knowledge proof validation failed: V must be a point on the curve"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Zero-knowledge proof validation failed: Nx cannot be infinity"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/bouncycastle/crypto/CryptoException;

    const-string p2, "Zero-knowledge proof validation failed: x does not lie on the curve"

    invoke-direct {p1, p2, p0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Zero-knowledge proof validation failed: x and y are not in the field"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/bouncycastle/crypto/CryptoException;

    const-string p1, "Zero-knowledge proof validation failed: X cannot equal infinity"

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

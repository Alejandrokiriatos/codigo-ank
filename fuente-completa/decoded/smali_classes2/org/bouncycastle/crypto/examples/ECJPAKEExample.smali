.class public Lorg/bouncycastle/crypto/examples/ECJPAKEExample;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deriveSessionKey(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SavableDigest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    array-length v2, p0

    const/4 v3, 0x0

    invoke-interface {v0, p0, v3, v2}, Lorg/bouncycastle/crypto/SavableDigest;->update([BII)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/SavableDigest;->doFinal([BI)I

    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    sget-object v3, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurves;->NIST_P256:Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getA()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getB()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getH()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "********* Initialization **********"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Public parameters for the elliptic curve over prime field:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Curve param a ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " bits): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Curve param b ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Co-factor h ("

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Base point G ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "X coord of G (G not normalised) ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "y coord of G (G not normalised) ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Order of the base point n ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Prime field q ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "(Secret passwords used by Alice and Bob: \"password\" and \"password\")\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v4

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;

    const-string v1, "alice"

    const-string p0, "password"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    move-object v8, v0

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;

    const-string v1, "bob"

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound1PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound1PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "************ Round 1 **************"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Alice sends to Bob: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "g^{x1}="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx1()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "g^{x2}="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx2()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KP{x1}: {V="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "}"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "KP{x2}: {V="

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Bob sends to Alice: "

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "g^{x3}="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx1()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "g^{x4}="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx2()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KP{x3}: {V="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "KP{x4}: {V="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound1PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Alice checks g^{x4}!=1: OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Alice checks KP{x3}: OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Alice checks KP{x4}: OK"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound1PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Bob checks g^{x2}!=1: OK"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Bob checks KP{x1},: OK"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Bob checks KP{x2},: OK"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound2PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound2PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "************ Round 2 **************"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "A="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getA()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "KP{x2*s}: {V="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    invoke-virtual {v12, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, ", r="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Bob sends to Alice"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "B="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getA()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "KP{x4*s}: {V="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getV()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v6

    invoke-direct {v12, v6}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->getr()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound2PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Alice checks KP{x4*s}: OK\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound2PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Bob checks KP{x2*s}: OK\n"

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->calculateKeyingMaterial()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->calculateKeyingMaterial()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "********* After round 2 ***********"

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Alice computes key material \t K="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bob computes key material \t K="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    invoke-static {p0}, Lorg/bouncycastle/crypto/examples/ECJPAKEExample;->deriveSessionKey(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    invoke-static {v1}, Lorg/bouncycastle/crypto/examples/ECJPAKEExample;->deriveSessionKey(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    invoke-virtual {v8, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;

    move-result-object v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "************ Round 3 **************"

    invoke-virtual {v6, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "MacTag="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v8, v5, p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound3PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;Ljava/math/BigInteger;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Alice checks MacTag: OK\n"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->validateRound3PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;Ljava/math/BigInteger;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Bob checks MacTag: OK\n"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "MacTags validated, therefore the keying material matches."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

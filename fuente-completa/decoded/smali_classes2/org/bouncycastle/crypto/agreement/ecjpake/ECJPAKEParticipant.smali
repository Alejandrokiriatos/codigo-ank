.class public Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_INITIALIZED:I = 0x0

.field public static final STATE_KEY_CALCULATED:I = 0x32

.field public static final STATE_ROUND_1_CREATED:I = 0xa

.field public static final STATE_ROUND_1_VALIDATED:I = 0x14

.field public static final STATE_ROUND_2_CREATED:I = 0x1e

.field public static final STATE_ROUND_2_VALIDATED:I = 0x28

.field public static final STATE_ROUND_3_CREATED:I = 0x3c

.field public static final STATE_ROUND_3_VALIDATED:I = 0x46


# instance fields
.field private b:Lorg/bouncycastle/math/ec/ECPoint;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private ecCurve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

.field private g:Lorg/bouncycastle/math/ec/ECPoint;

.field private gx1:Lorg/bouncycastle/math/ec/ECPoint;

.field private gx2:Lorg/bouncycastle/math/ec/ECPoint;

.field private gx3:Lorg/bouncycastle/math/ec/ECPoint;

.field private gx4:Lorg/bouncycastle/math/ec/ECPoint;

.field private h:Ljava/math/BigInteger;

.field private n:Ljava/math/BigInteger;

.field private final participantId:Ljava/lang/String;

.field private partnerParticipantId:Ljava/lang/String;

.field private password:[C

.field private q:Ljava/math/BigInteger;

.field private final random:Ljava/security/SecureRandom;

.field private state:I

.field private x1:Ljava/math/BigInteger;

.field private x2:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurves;->NIST_P256:Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;)V
    .locals 6

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;-><init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;Lorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "curve params"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "digest"

    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p5, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p2

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    array-length p1, p2

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOf([CI)[C

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->password:[C

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getCurve()Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->ecCurve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getH()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->h:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getN()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKECurve;->getQ()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->q:Ljava/math/BigInteger;

    iput-object p4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Password must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateS()Ljava/math/BigInteger;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->password:[C

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateS(Ljava/math/BigInteger;[C)Ljava/math/BigInteger;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public calculateKeyingMaterial()Ljava/math/BigInteger;
    .locals 7

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    const/16 v2, 0x28

    if-lt v0, v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->password:[C

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->password:[C

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->b:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v3, v4, v5, v0, v6}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateKeyingMaterial(Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x1:Ljava/math/BigInteger;

    iput-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    iput-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->b:Lorg/bouncycastle/math/ec/ECPoint;

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Round2 payload must be validated prior to creating key for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key already calculated for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound1PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;
    .locals 15

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->generateX1(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x1:Ljava/math/BigInteger;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateGx(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateGx(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x1:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v13

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v14

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    new-instance v9, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v12, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;)V

    return-object v9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Round1 payload already created for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound2PayloadToSend()Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;
    .locals 11

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateGA(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->calculateS()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->x2:Ljava/math/BigInteger;

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateX2s(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateA(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->random:Ljava/security/SecureRandom;

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/Digest;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v0

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    new-instance v1, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v1, v2, v7, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;-><init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Round1 payload must be validated prior to creating Round2 payload for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Round2 payload already created for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createRound3PayloadToSend(Ljava/math/BigInteger;)Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;
    .locals 11

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v9, p1

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateMacTag(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)Ljava/math/BigInteger;

    move-result-object p1

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    new-instance v0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keying material must be calculated prior to creating Round3 payload for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Round3 payload already created for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return v0
.end method

.method public validateRound1PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx1()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getGx2()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX1()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getKnowledgeProofForX2()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->ecCurve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->h:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->g:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->ecCurve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->h:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound1Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    move-object v7, v0

    invoke-static/range {v5 .. v13}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validation already attempted for round1 payload for"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateRound2PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->calculateGA(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getA()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->b:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->b:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->q:Ljava/math/BigInteger;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->n:Ljava/math/BigInteger;

    iget-object v9, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->ecCurve:Lorg/bouncycastle/math/ec/ECCurve$AbstractFp;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->h:Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-static/range {v4 .. v12}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateZeroKnowledgeProof(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECCurve;Ljava/math/BigInteger;Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Round1 payload must be validated prior to validating Round2 payload for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validation already attempted for round2 payload for"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public validateRound3PayloadReceived(Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;Ljava/math/BigInteger;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    const/16 v1, 0x46

    if-ge v0, v1, :cond_1

    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateParticipantIdsDiffer(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;->getParticipantId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateParticipantIdsEqual(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->partnerParticipantId:Ljava/lang/String;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v7, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v10, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound3Payload;->getMacTag()Ljava/math/BigInteger;

    move-result-object v11

    move-object v9, p2

    invoke-static/range {v3 .. v11}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateMacTag(Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx1:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx2:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx3:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->gx4:Lorg/bouncycastle/math/ec/ECPoint;

    iput v1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->state:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Keying material must be calculated validated prior to validating Round3 payload for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Validation already attempted for round3 payload for"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEParticipant;->participantId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

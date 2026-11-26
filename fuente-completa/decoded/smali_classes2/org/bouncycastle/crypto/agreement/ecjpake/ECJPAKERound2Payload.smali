.class public Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/bouncycastle/math/ec/ECPoint;

.field private final knowledgeProofForX2s:Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

.field private final participantId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "participantId"

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knowledgeProofForX2s"

    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKEUtil;->validateNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->participantId:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->a:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p3, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->knowledgeProofForX2s:Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    return-void
.end method


# virtual methods
.method public getA()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->a:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getKnowledgeProofForX2s()Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->knowledgeProofForX2s:Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;

    return-object v0
.end method

.method public getParticipantId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECJPAKERound2Payload;->participantId:Ljava/lang/String;

    return-object v0
.end method

.class public Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;
.super Ljava/lang/Object;


# instance fields
.field private final content:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private final owfCalcProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->owfCalcProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;-><init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content of PKIBody wrong type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyChallContent;

    move-result-object v0

    return-object v0
.end method

.method public toChallengeArray()[Lorg/bouncycastle/cert/cmp/ChallengeContent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/cert/cmp/ChallengeContent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eq v3, v0, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmp/Challenge;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/Challenge;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/Challenge;->getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->owfCalcProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/cmp/Challenge;->getOwf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    new-instance v4, Lorg/bouncycastle/cert/cmp/ChallengeContent;

    iget-object v5, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyChallengeContent;->content:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/cmp/Challenge;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/Challenge;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/cert/cmp/ChallengeContent;-><init>(Lorg/bouncycastle/asn1/cmp/Challenge;Lorg/bouncycastle/operator/DigestCalculator;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.class public Lorg/bouncycastle/operator/bc/BcHssLmsContentVerifierProviderBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;

    invoke-direct {p1}, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;-><init>()V

    return-object p1
.end method

.method protected extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    return-object p1
.end method

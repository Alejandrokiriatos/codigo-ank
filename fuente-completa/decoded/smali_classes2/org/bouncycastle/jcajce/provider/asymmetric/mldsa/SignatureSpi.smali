.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA44;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA65;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSA87;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSACalcMu;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSAExtMu;
    }
.end annotation


# instance fields
.field protected parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

.field protected signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;)V
    .locals 1

    const-string v0, "MLDSA"

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;)V
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseDeterministicOrRandomSignature;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    return-void
.end method


# virtual methods
.method protected engineSign()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->generateSignature()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineVerify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->verifySignature([B)Z

    move-result p1

    return p1
.end method

.method protected reInitialize(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method protected signInit(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    instance-of p2, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    const-string v0, "signature configured for "

    if-eqz p2, :cond_1

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->keyParams:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    instance-of p2, p1, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;

    if-eqz p2, :cond_4

    instance-of p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi$MLDSACalcMu;

    if-eqz p2, :cond_4

    check-cast p1, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;->getPublicKey()Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->keyParams:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "unknown private key passed to ML-DSA"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected updateEngine(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->update(B)V

    return-void
.end method

.method protected updateEngine([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->signer:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSASigner;->update([BII)V

    return-void
.end method

.method protected verifyInit(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->keyParams:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory;->createKey(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->keyParams:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->keyParams:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-direct {p1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/SignatureSpi;->parameters:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->fromName(Ljava/lang/String;)Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signature configured for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unknown public key passed to ML-DSA"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

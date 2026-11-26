.class public Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyUnwrapper(Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;[B)Lorg/bouncycastle/crypto/Wrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeySize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    invoke-direct {v1, p1, v2, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    :goto_0
    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->makeKeyBytes(Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_0
.end method

.method public static getKeyWrapper(Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;[B)Lorg/bouncycastle/crypto/Wrapper;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeySize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    const/4 v3, 0x0

    invoke-static {p1, v3, p0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    :goto_0
    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->makeKeyBytes(Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;[B)[B

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    goto :goto_0
.end method

.method public static getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;
    .locals 3

    const-string v0, "AESWRAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "AES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "ARIA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_1
    const-string v0, "Camellia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_2
    const-string v0, "SEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_3
    const-string v0, "AES-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_4
    const-string v0, "Camellia-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_5
    const-string v0, "ARIA-KWP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    new-instance v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown key algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    new-instance p0, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-object p0
.end method

.method private static makeKeyBytes(Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getOtherInfo()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeySize()I

    move-result p0

    invoke-static {v0, p1, v1, p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/KdfUtil;->makeKeyBytes(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BI)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static trimSecret(Ljava/lang/String;[B)[B
    .locals 1

    const-string v0, "SEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    const/16 v0, 0x10

    invoke-static {p1, p0, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.class Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
.super Lorg/bouncycastle/cms/KEMKeyWrapper;


# instance fields
.field private encapsulation:[B

.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

.field private kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final kekLength:I

.field private final kemEncLenProvider:Lorg/bouncycastle/operator/KemEncapsulationLengthProvider;

.field private publicKey:Ljava/security/PublicKey;

.field private random:Ljava/security/SecureRandom;

.field private final symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 5

    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/iso/ISOIECObjectIdentifiers;->id_kem_rsa:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/KEMKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/operator/DefaultKemEncapsulationLengthProvider;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultKemEncapsulationLengthProvider;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kemEncLenProvider:Lorg/bouncycastle/operator/KemEncapsulationLengthProvider;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->extraMappings:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_kdf_kdf3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p1, p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getKekSize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    return-void
.end method

.method private getKemEncLength(Ljava/security/PublicKey;)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kemEncLenProvider:Lorg/bouncycastle/operator/KemEncapsulationLengthProvider;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/KemEncapsulationLengthProvider;->getEncapsulationLength(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget v2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    instance-of v1, v1, Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "Unable to wrap contents key: "

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v5, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, v5, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {p0}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v5, v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    new-instance v5, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v5, v6, v7, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5, v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v0

    iget-object v5, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v3, v5, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getJceKey(Lorg/bouncycastle/operator/GenericKey;)Ljava/security/Key;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->publicKey:Ljava/security/PublicKey;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->getKemEncLength(Ljava/security/PublicKey;)I

    move-result v0

    invoke-static {p1, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    :try_start_5
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to wrap contents key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getEncapsulation()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->encapsulation:[B

    return-object v0
.end method

.method public getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getKekLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kekLength:I

    return v0
.end method

.method public getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setKDF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->kdfAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->random:Ljava/security/SecureRandom;

    return-object p0
.end method

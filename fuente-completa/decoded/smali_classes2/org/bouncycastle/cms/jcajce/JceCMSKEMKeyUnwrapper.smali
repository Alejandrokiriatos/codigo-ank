.class Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;


# instance fields
.field private extraMappings:Ljava/util/Map;

.field private helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

.field private final kekLength:I

.field private privateKey:Ljava/security/PrivateKey;

.field private final symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PrivateKey;)V
    .locals 1

    invoke-interface {p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/operator/AsymmetricKeyUnwrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    new-instance v0, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;

    invoke-direct {v0}, Lorg/bouncycastle/cms/jcajce/DefaultJcaJceExtHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->extraMappings:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    move-result-object v0

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getKekSize(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    return-void
.end method


# virtual methods
.method public generateUnwrappedKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/operator/GenericKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    const-string p2, "Unable to wrap contents key: "

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->symWrapAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getWrap()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    :try_start_0
    new-instance v2, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;

    iget v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getUkm()[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/CMSORIforKEMOtherInfo;->getEncoded()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    instance-of v3, v3, Ljava/security/interfaces/RSAPrivateKey;

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v6, v7}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget v7, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    mul-int/lit8 v7, v7, 0x8

    invoke-direct {v6, v1, v7, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {v3, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {v3, v0, v1, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lorg/bouncycastle/operator/OperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, v3, v6}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->createAsymmetricWrapper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Map;)Ljavax/crypto/Cipher;

    move-result-object p2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/CMSUtils;->getWrapAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    iget v6, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    mul-int/lit8 v6, v6, 0x8

    invoke-direct {v3, v1, v6, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->withKdfAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec$Builder;->build()Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->privateKey:Ljava/security/PrivateKey;

    invoke-virtual {p2, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p2, v0, v1, v4}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/JceGenericKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/JceGenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/operator/OperatorException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception encrypting key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/operator/OperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getKekLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->kekLength:I

    return v0
.end method

.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->extraMappings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/NamedJcaJceExtHelper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cms/jcajce/ProviderJcaJceExtHelper;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyUnwrapper;->helper:Lorg/bouncycastle/cms/jcajce/JcaJceExtHelper;

    return-object p0
.end method

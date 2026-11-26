.class public Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;
.super Lorg/bouncycastle/pqc/jcajce/provider/util/BaseKeyFactorySpi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$Hash;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA44;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA65;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$HashMLDSA87;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA44;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA65;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$MLDSA87;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi$Pure;
    }
.end annotation


# static fields
.field private static final hashKeyOids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final pureKeyOids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final isHashOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->pureKeyOids:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->hashKeyOids:Ljava/util/Set;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/BaseKeyFactorySpi;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/BaseKeyFactorySpi;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->pureKeyOids:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->hashKeyOids:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->getParameters(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->getSeed()[B

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B)V

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->getPrivateData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[BLorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->getPublicData()[B

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getPublicKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "public key data does not match private key data"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;)V

    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/BaseKeyFactorySpi;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    return-object p1
.end method

.method public engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/Utils;->getParameters(Ljava/lang/String;)Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->getPublicData()[B

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPublicKeyParameters;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/bouncycastle/pqc/jcajce/provider/util/BaseKeyFactorySpi;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public final engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    const-string v1, "."

    if-eqz v0, :cond_3

    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getSeed()[B

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;-><init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B)V

    return-object v0

    :cond_1
    new-instance p2, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPrivateData()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPublicKey()Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getPublicData()[B

    move-result-object p1

    invoke-direct {p2, v0, v1, p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;-><init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B[B)V

    return-object p2

    :cond_2
    const-class v0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    new-instance p2, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getPublicKey()Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getPublicData()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;-><init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B)V

    return-object p2

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz v0, :cond_6

    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    return-object p2

    :cond_4
    const-class v0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    check-cast p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    new-instance p2, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;->getPublicData()[B

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;-><init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B)V

    return-object p2

    :cond_5
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unknown key specification: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unsupported key type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "unsupported key type"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public generatePrivate(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)V

    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/MLDSAKeyFactorySpi;->isHashOnly:Z

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WITH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_44_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_65_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;->ml_dsa_87_with_sha512:Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;

    goto :goto_0

    :goto_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getRho()[B

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getK()[B

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getTr()[B

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getS1()[B

    move-result-object v6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getS2()[B

    move-result-object v7

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getT0()[B

    move-result-object v8

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getT1()[B

    move-result-object v9

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;->getSeed()[B

    move-result-object v10

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAParameters;[B[B[B[B[B[B[B[B)V

    new-instance p1, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;

    invoke-direct {p1, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/mldsa/MLDSAPrivateKeyParameters;)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unknown ML-DSA parameters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return-object v0
.end method

.method public generatePublic(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;

    invoke-direct {v0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/mldsa/BCMLDSAPublicKey;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    return-object v0
.end method

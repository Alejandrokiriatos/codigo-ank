.class public Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;
.super Ljava/lang/Object;


# static fields
.field private static algorithmNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static kpgInitSpecs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "[",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static pairings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "ML-DSA-44"

    aput-object v5, v3, v4

    const/4 v6, 0x1

    const-string v7, "RSASSA-PSS"

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v8, "sha256WithRSAEncryption"

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v9, "Ed25519"

    aput-object v9, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "SHA256withECDSA"

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    const-string v10, "ML-DSA-65"

    aput-object v10, v3, v4

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    const-string v8, "sha384WithRSAEncryption"

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P256_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    const-string v8, "SHA384withECDSA"

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v10, v3, v4

    aput-object v9, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    const-string v5, "ML-DSA-87"

    aput-object v5, v3, v4

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_Ed448_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v8, "Ed448"

    aput-object v8, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P521_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "SHA512withECDSA"

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    const/4 v5, 0x0

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v8, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v9, 0x800

    invoke-direct {v7, v9, v8}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v8, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v9, v8}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v8, "P-256"

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v10, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v11, 0xc00

    invoke-direct {v7, v11, v10}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v10, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v11, v10}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v10, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    const/16 v12, 0x1000

    invoke-direct {v7, v12, v10}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v10, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v12, v10}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v10, "P-384"

    invoke-direct {v7, v10}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v13, "brainpoolP256r1"

    invoke-direct {v7, v13}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v10}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v14, "brainpoolP384r1"

    invoke-direct {v7, v14}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v15, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v9, v15}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v15, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v9, v15}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v9, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v11, v9}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v9, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v11, v9}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v9, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v12, v9}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v9, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v12, v9}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P256_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v10}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v13}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v10}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    invoke-direct {v7, v14}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_Ed448_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    aput-object v5, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v8, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v7, v12, v8}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P521_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v3, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v3, v4

    new-instance v7, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;

    const-string v8, "P-521"

    invoke-direct {v7, v8}, Lorg/bouncycastle/jce/spec/ECNamedCurveGenParameterSpec;-><init>(Ljava/lang/String;)V

    aput-object v7, v3, v6

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-array v2, v2, [Ljava/security/spec/AlgorithmParameterSpec;

    aput-object v5, v2, v4

    new-instance v3, Ljava/security/spec/RSAKeyGenParameterSpec;

    sget-object v4, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    invoke-direct {v3, v11, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA44-RSA2048-PSS-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA44-RSA2048-PKCS15-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA44-Ed25519-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA44-ECDSA-P256-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-RSA3072-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-RSA3072-PKCS15-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-RSA4096-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-RSA4096-PKCS15-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-ECDSA-P384-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-ECDSA-brainpoolP256r1-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA65-Ed25519-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA87-ECDSA-P384-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA87-ECDSA-brainpoolP384r1-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "HashMLDSA87-Ed448-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA44-RSA2048-PSS-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA44-RSA2048-PKCS15-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA44-Ed25519-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA44-ECDSA-P256-SHA256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-RSA3072-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-RSA3072-PKCS15-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-RSA4096-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-RSA4096-PKCS15-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P256_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-ECDSA-P256-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-ECDSA-P384-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-ECDSA-brainpoolP256r1-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA65-Ed25519-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-ECDSA-P384-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-ECDSA-brainpoolP384r1-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_Ed448_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-Ed448-SHAKE256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-RSA4096-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P521_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-ECDSA-P521-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/internal/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MLDSA87-RSA3072-PSS-SHA512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static getBaseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ECDSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const-string p0, "EC"

    :cond_1
    return-object p0
.end method

.method static getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->algorithmNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "SHA512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object p0
.end method

.method static getKeyPairSpecs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->kpgInitSpecs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/spec/AlgorithmParameterSpec;

    return-object p0
.end method

.method static getPairing(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getSupportedIdentifiers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static isAlgorithmSupported(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/jcajce/provider/asymmetric/compositesignatures/CompositeIndex;->pairings:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

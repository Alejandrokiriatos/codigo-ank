.class public Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;


# static fields
.field private static algorithms:Ljava/util/Map;

.field private static digestOids:Ljava/util/Map;

.field private static noParams:Ljava/util/Set;

.field private static params:Ljava/util/Map;

.field private static pkcs15RsaEncryption:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    const-string v0, "MD2WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MD2WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MD5WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MD5WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512(224)WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512(224)WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512(256)WITHRSAENCRYPTION"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512(256)WITHRSA"

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA1WITHRSAANDMGF1"

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHRSAANDMGF1"

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA256WITHRSAANDMGF1"

    invoke-static {v3, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA384WITHRSAANDMGF1"

    invoke-static {v4, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "SHA512WITHRSAANDMGF1"

    invoke-static {v5, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v6, "SHA3-224WITHRSAANDMGF1"

    invoke-static {v6, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v7, "SHA3-256WITHRSAANDMGF1"

    invoke-static {v7, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v8, "SHA3-384WITHRSAANDMGF1"

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v9, "SHA3-512WITHRSAANDMGF1"

    invoke-static {v9, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD160WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD160WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD128WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD128WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD256WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD256WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DSAWITHSHA1"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-224WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-256WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-384WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-224WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-256WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-384WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-224WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-256WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-384WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHRSA"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-224WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-256WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-384WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHRSAENCRYPTION"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ECDSAWITHSHA1"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410"

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-94"

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHECGOST3410"

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHECGOST3410-2001"

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-2001"

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHECGOST3410-2012-256"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHECGOST3410-2012-512"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-2012-256"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411WITHGOST3410-2012-512"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-256WITHECGOST3410-2012-256"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-512WITHECGOST3410-2012-512"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-256WITHGOST3410-2012-256"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "GOST3411-2012-512WITHGOST3410-2012-512"

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHCVC-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHCVC-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHCVC-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHCVC-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHCVC-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHSPHINCS256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHSPHINCS256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA1WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RIPEMD160WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA224WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA384WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-224WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-256WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-384WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHPLAIN-ECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ED25519"

    sget-object v10, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ED448"

    sget-object v10, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHRSAPSS"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHRSAPSS"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHRSASSA-PSS"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHRSASSA-PSS"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHECDSA"

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHSM2"

    sget-object v10, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SM3WITHSM2"

    sget-object v10, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128(512)WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256(1024)WITHXMSS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHXMSSMT"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHXMSSMT"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHXMSSMT"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHXMSSMT"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHXMSS-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHXMSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHXMSS-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHXMSS-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA256WITHXMSSMT-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHXMSSMT-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128WITHXMSSMT-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHXMSSMT-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE128(512)WITHXMSSMT-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128_512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256(1024)WITHXMSSMT-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256_1024ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "LMS"

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSS"

    sget-object v10, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSS-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSS-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSS-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSSMT"

    sget-object v10, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSSMT-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSSMT-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSSMT-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "XMSSMT-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCSPLUS"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-128S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-128F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-192S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-192F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-256S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHA2-256F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-128S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-128F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-192S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-192F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-256S"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-SHAKE-256F"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-128S-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-128F-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-192S-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-192F-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-256S-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-256F-ROBUST"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-128S-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-128F-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-192S-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-192F-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-256S-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SPHINCS+-HARAKA-256F-SIMPLE"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM2"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM3"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM5"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM2-AES"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM3-AES"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "DILITHIUM5-AES"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-44"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-65"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-87"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-44-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-65-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "ML-DSA-87-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-128S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-128F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-192S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-192F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-256S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-256F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-128S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-128F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-192S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-192F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-256S"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-256F"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-128S-WITH-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-128F-WITH-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-192S-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-192F-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-256S-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHA2-256F-WITH-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "FALCON-512"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "FALCON-1024"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "PICNIC"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_signature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA512WITHPICNIC"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHA3-512WITHPICNIC"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "SHAKE256WITHPICNIC"

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA44-RSA2048-PSS-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA44-RSA2048-PKCS15-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA44-ED25519-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA44-ECDSA-P256-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-RSA3072-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-RSA3072-PKCS15-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-RSA4096-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-RSA4096-PKCS15-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-ECDSA-P384-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA65-ED25519-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA87-ECDSA-P384-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "HASHMLDSA87-ED448-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA44-RSA2048-PSS-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA44-RSA2048-PKCS15-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA44-ED25519-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA44-ECDSA-P256-SHA256"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-RSA3072-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-RSA3072-PKCS15-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-RSA4096-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-RSA4096-PKCS15-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-ECDSA-P256-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P256_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-ECDSA-P384-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-ECDSA-BRAINPOOLP256R1-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA65-ED25519-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-ECDSA-P384-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-ECDSA-BRAINPOOLP384R1-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-ED448-SHAKE256"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_Ed448_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-RSA4096-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-ECDSA-P521-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P521_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "MLDSA87-RSA3072-PSS-SHA512"

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5_aes:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_signature:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256ph:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->xmss_mt_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/isara/IsaraObjectIdentifiers;->id_alg_xmssmt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->qTESLA_p_I:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->qTESLA_p_III:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed25519:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/edec/EdECObjectIdentifiers;->id_Ed448:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_HashMLDSA87_Ed448_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PSS_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_RSA2048_PKCS15_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA44_ECDSA_P256_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA3072_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_RSA4096_PKCS15_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P256_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_ECDSA_brainpoolP256r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA65_Ed25519_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P384_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_brainpoolP384r1_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_Ed448_SHAKE256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA3072_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_RSA4096_PSS_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/iana/IANAObjectIdentifiers;->id_MLDSA87_ECDSA_P521_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->pkcs15RsaEncryption:Ljava/util/Set;

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v11, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v10, v11}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v10, 0x14

    invoke-static {v0, v10}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v3, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v3, 0x30

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/16 v4, 0x40

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v5, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v6, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v7, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    move-result-object v0

    invoke-static {v9, v0}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512_256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md4:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm2sign_with_sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_rsassa_pss_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_ecdsa_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAlgorithm(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addDigestOid(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->digestOids:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "signatureOid already present in addDigestOid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static addParameters(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algorithmName already present in addParameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "use \'noParams\' instead for absent parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createPSSParams(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;I)Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2, p0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v2, Lorg/bouncycastle/asn1/ASN1Integer;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    sget-object p1, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->DEFAULT_TRAILER_FIELD:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;)V

    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_2

    sget-object p1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->noParams:Ljava/util/Set;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p1, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object p1

    :cond_0
    sget-object p1, Lorg/bouncycastle/operator/DefaultSignatureAlgorithmIdentifierFinder;->params:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez p1, :cond_1

    sget-object p1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown signature type requested: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

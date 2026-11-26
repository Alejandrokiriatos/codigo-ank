.class public Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/AlgorithmNameFinder;


# static fields
.field private static final algorithms:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->algorithms:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "RIPEMD160WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA1WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA256WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA384WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bsi/BSIObjectIdentifiers;->ecdsa_plain_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA512WITHPLAIN-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_2001:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "GOST3411WITHECGOST3410-2001"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411_94_with_gostR3410_94:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "GOST3411WITHGOST3410-94"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "GOST3411"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "GOST3411WITHECGOST3410-2012-256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_signwithdigest_gost_3410_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "GOST3411WITHECGOST3410-2012-512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA1WITHCVC-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224WITHCVC-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA256WITHCVC-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA384WITHCVC-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/eac/EACObjectIdentifiers;->id_TA_ECDSA_SHA_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA512WITHCVC-ECDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "FALCON"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "LMS"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_44:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-44"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_65:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-65"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ml_dsa_87:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-87"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_44_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-44-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_65_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-65-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_ml_dsa_87_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "ML-DSA-87-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-128S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-128F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-192S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-192F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-256S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_sha2_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-256F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-128S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_128f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-128F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-192S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_192f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-192F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256s:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-256S"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_slh_dsa_shake_256f:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-256F"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128s_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-128S-WITH-SHA256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_128f_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-128F-WITH-SHA256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-192S-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_192f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-192F-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256s_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-256S-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_sha2_256f_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHA2-256F-WITH-SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128s_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-128S-WITH-SHAKE128"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_128f_with_shake128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-128F-WITH-SHAKE128"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-192S-WITH-SHAKE256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_192f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-192F-WITH-SHAKE256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256s_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-256S-WITH-SHAKE256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_hash_slh_dsa_shake_256f_with_shake256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SLH-DSA-SHAKE-256F-WITH-SHAKE256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SPHINCS+"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_128f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_192f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_sha2_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_shake_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256s_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_haraka_256f_r3_simple:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA384"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-224"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-384"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->dsaWithSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA1WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->elGamalAlgorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ELGAMAL"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA1"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->md5WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "MD5WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->sha1WithRSA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v3, "SHA1WITHRSA"

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSAES_OAEP:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "RSAOAEP"

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_RSASSA_PSS:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "RSAPSS"

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md2WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "MD2WITHRSA"

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "MD5"

    invoke-static {v0, v4}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rsaEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha1WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v3}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha224WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha384WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA384WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha512WithRSAEncryption:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-224WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-256WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-384WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_rsassa_pkcs1_v1_5_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-512WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD128"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD160"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD256"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD128WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD160WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->rsaSignatureWithripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RIPEMD256WITHRSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "ECDSAWITHSHA1"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA224WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA256WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA384WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA512WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-224WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-256WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-384WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_ecdsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "SHA3-512WITHECDSA"

    invoke-static {v0, v2}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/x9/X9ObjectIdentifiers;->id_dsa_with_sha1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA224WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA256WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA384WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->dsa_with_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA512WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-224WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-256WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-384WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_dsa_with_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SHA3-512WITHDSA"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Tiger_192:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Tiger"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->RC2_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "RC2/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->des_EDE3_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "DESEDE-3KEY/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-128/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-192/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-256/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-128/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-192/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-256/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-128/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-192/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-256/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes128_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-128/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes192_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-192/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_aes256_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "AES-256/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia128_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "CAMELLIA-128/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia192_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "CAMELLIA-192/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/ntt/NTTObjectIdentifiers;->id_camellia256_cbc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "CAMELLIA-256/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/kisa/KISAObjectIdentifiers;->id_seedCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SEED/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->as_sys_sec_alg_ideaCBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "IDEA/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cast5CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "CAST5/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Blowfish/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Blowfish/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Blowfish/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->cryptlib_algorithm_blowfish_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Blowfish/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-128/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-128/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-128/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_128_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-128/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-192/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-192/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-192/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_192_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-192/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_ECB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-256/ECB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CBC:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-256/CBC"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_CFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-256/CFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/gnu/GNUObjectIdentifiers;->Serpent_256_OFB:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "Serpent-256/OFB"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2b-160"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2b-256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2b-384"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2b512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2b-512"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2s-128"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2s-160"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2s-224"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->id_blake2s256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE2s-256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    sget-object v0, Lorg/bouncycastle/asn1/misc/MiscObjectIdentifiers;->blake3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "BLAKE3-256"

    invoke-static {v0, v1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAlgorithm(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "algOid already present in addAlgorithm"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAlgorithmName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->getAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOIDSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasAlgorithmName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z
    .locals 1

    sget-object v0, Lorg/bouncycastle/operator/DefaultAlgorithmNameFinder;->algorithms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

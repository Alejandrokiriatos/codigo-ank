.class public interface abstract Lorg/bouncycastle/tsp/TSPAlgorithms;
.super Ljava/lang/Object;


# static fields
.field public static final ALLOWED:Ljava/util/Set;

.field public static final GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final RIPEMD256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public static final SM3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->md5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/bouncycastle/tsp/TSPAlgorithms;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/oiw/OIWObjectIdentifiers;->idSHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v1, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v2, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v3, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v3, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v4, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v5, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v6, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v6, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA3_224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v7, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA3_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v8, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v8, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA3_384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v9, Lorg/bouncycastle/tsp/TSPAlgorithms;->SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v10, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v10, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD128:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v11, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v11, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD160:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v12, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->ripemd256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v12, Lorg/bouncycastle/tsp/TSPAlgorithms;->RIPEMD256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v13, Lorg/bouncycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->gostR3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v13, Lorg/bouncycastle/tsp/TSPAlgorithms;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v14, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v14, Lorg/bouncycastle/tsp/TSPAlgorithms;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v15, Lorg/bouncycastle/asn1/rosstandart/RosstandartObjectIdentifiers;->id_tc26_gost_3411_12_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v15, Lorg/bouncycastle/tsp/TSPAlgorithms;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v16, Lorg/bouncycastle/asn1/gm/GMObjectIdentifiers;->sm3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sput-object v16, Lorg/bouncycastle/tsp/TSPAlgorithms;->SM3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v17, v0

    new-instance v0, Ljava/util/HashSet;

    move-object/from16 v18, v1

    const/16 v1, 0x11

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/16 v19, 0x0

    aput-object v16, v1, v19

    const/16 v16, 0x1

    aput-object v13, v1, v16

    const/4 v13, 0x2

    aput-object v14, v1, v13

    const/4 v13, 0x3

    aput-object v15, v1, v13

    const/4 v13, 0x4

    aput-object v17, v1, v13

    const/4 v13, 0x5

    aput-object v18, v1, v13

    const/4 v13, 0x6

    aput-object v2, v1, v13

    const/4 v2, 0x7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v5, v1, v2

    const/16 v2, 0xa

    aput-object v6, v1, v2

    const/16 v2, 0xb

    aput-object v7, v1, v2

    const/16 v2, 0xc

    aput-object v8, v1, v2

    const/16 v2, 0xd

    aput-object v9, v1, v2

    const/16 v2, 0xe

    aput-object v10, v1, v2

    const/16 v2, 0xf

    aput-object v11, v1, v2

    const/16 v2, 0x10

    aput-object v12, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/bouncycastle/tsp/TSPAlgorithms;->ALLOWED:Ljava/util/Set;

    return-void
.end method

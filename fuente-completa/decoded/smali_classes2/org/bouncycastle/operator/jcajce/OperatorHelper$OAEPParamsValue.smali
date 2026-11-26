.class Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/operator/jcajce/OperatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OAEPParamsValue"
.end annotation


# instance fields
.field private cipherName:Ljava/lang/String;

.field private derEncoding:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->cipherName:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->derEncoding:[B

    return-void
.end method

.method static add(Ljava/util/Map;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 2

    :try_start_0
    invoke-static {p2}, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->createOAEPParams(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->getDEREncoding(Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;-><init>(Ljava/lang/String;[B)V

    invoke-interface {p0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static createOAEPParams(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->DEFAULT_P_SOURCE_ALGORITHM:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v1, v0, p0, v2}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-object v1
.end method

.method private static getDEREncoding(Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "DER"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getCipherName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->cipherName:Ljava/lang/String;

    return-object v0
.end method

.method matches(Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->derEncoding:[B

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/OperatorHelper$OAEPParamsValue;->getDEREncoding(Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

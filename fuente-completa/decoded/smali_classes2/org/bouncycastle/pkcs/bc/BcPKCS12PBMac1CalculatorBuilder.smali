.class public Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# instance fields
.field private pbkdf2Params:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

.field private final pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbkdf2Params:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    iput-object p1, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    sget-object v0, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBKDF2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;->getKeyDerivationFunc()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbkdf2Params:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;->getKeyLength()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Key length must be present when using PBMAC1."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognised PBKDF"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build([C)Lorg/bouncycastle/operator/MacCalculator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbkdf2Params:Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils;->createPBMac1Calculator(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;[C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    return-object p1
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/bc/BcPKCS12PBMac1CalculatorBuilder;->pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

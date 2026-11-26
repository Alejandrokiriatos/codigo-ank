.class Lorg/bouncycastle/pkcs/MacDataGenerator;
.super Ljava/lang/Object;


# instance fields
.field private builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    return-void
.end method


# virtual methods
.method public build([C[B)Lorg/bouncycastle/asn1/pkcs/MacData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkcs/PKCSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->build([C)Lorg/bouncycastle/operator/MacCalculator;

    move-result-object p1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/MacDataGenerator;->builder:Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;

    invoke-interface {v1}, Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    sget-object p1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "NOT USED"

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object p1

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    move-object v2, p2

    move p2, p1

    move-object p1, v2

    :goto_0
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/MacData;

    invoke-direct {v1, v0, p1, p2}, Lorg/bouncycastle/asn1/pkcs/MacData;-><init>(Lorg/bouncycastle/asn1/x509/DigestInfo;[BI)V

    return-object v1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/pkcs/PKCSException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to process data: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/pkcs/PKCSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

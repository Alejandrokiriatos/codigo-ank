.class public Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_DIGEST_ALG_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;


# instance fields
.field private certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

.field private final digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private final extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

.field private reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->DEFAULT_DIGEST_ALG_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->DEFAULT_DIGEST_ALG_FINDER:Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'digestAlgFinder\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public addExtension(Ljava/lang/String;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPIOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/tsp/TSPUtil;->addExtension(Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    return-void
.end method

.method public generate(Ljava/lang/String;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Ljava/lang/String;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'digestAlgorithmOID\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object p1

    return-object p1
.end method

.method public generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 6

    if-eqz p1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object v3, p1

    goto :goto_0

    :cond_0
    new-instance p2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p2, p3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    move-object v3, p2

    :goto_0
    iget-object p2, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->extGenerator:Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ExtensionsGenerator;->generate()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    :goto_1
    move-object v5, p1

    new-instance p1, Lorg/bouncycastle/tsp/TimeStampRequest;

    new-instance v0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    iget-object v2, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Boolean;Lorg/bouncycastle/asn1/x509/Extensions;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/tsp/TimeStampRequest;-><init>(Lorg/bouncycastle/asn1/tsp/TimeStampReq;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "\'digestAlgorithmID\' cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCertReq(Lorg/bouncycastle/asn1/ASN1Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->certReq:Lorg/bouncycastle/asn1/ASN1Boolean;

    return-void
.end method

.method public setCertReq(Z)V
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Z)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Lorg/bouncycastle/asn1/ASN1Boolean;)V

    return-void
.end method

.method public setReqPolicy(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-void
.end method

.method public setReqPolicy(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->reqPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

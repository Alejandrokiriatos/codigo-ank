.class public Lorg/bouncycastle/operator/NoSignatureContentSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/ContentSigner;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_alg_unsigned:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/NoSignatureContentSigner$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/operator/NoSignatureContentSigner$1;-><init>(Lorg/bouncycastle/operator/NoSignatureContentSigner;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

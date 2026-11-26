.class final Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/MacCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils;->createPBMac1Calculator(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;Lorg/bouncycastle/asn1/pkcs/PBKDF2Params;[C)Lorg/bouncycastle/operator/MacCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hMac:Lorg/bouncycastle/crypto/macs/HMac;

.field final synthetic val$password:[C

.field final synthetic val$pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;Lorg/bouncycastle/crypto/macs/HMac;[C)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    iput-object p2, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$hMac:Lorg/bouncycastle/crypto/macs/HMac;

    iput-object p3, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$password:[C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_PBMAC1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$pbmac1Params:Lorg/bouncycastle/asn1/pkcs/PBMAC1Params;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public getKey()Lorg/bouncycastle/operator/GenericKey;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/GenericKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$password:[C

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/GenericKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V

    return-object v0
.end method

.method public getMac()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$hMac:Lorg/bouncycastle/crypto/macs/HMac;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/io/MacOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/pkcs/bc/PKCS12PBEUtils$2;->val$hMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/io/MacOutputStream;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-object v0
.end method

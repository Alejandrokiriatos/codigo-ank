.class public Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContentBuilder;
.super Ljava/lang/Object;


# instance fields
.field private v:Lorg/bouncycastle/asn1/ASN1EncodableVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContentBuilder;->v:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    return-void
.end method


# virtual methods
.method public addChallengeResponse([B)Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContentBuilder;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContentBuilder;->v:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0
.end method

.method public build()Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;
    .locals 3

    new-instance v0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContentBuilder;->v:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;-><init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;)V

    return-object v0
.end method

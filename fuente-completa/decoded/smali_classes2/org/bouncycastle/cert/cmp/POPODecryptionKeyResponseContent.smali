.class public Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;
.super Ljava/lang/Object;


# instance fields
.field private final respContent:Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;->respContent:Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;-><init>(Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content of PKIBody wrong type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResponses()[[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;->respContent:Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;->toASN1IntegerArray()[Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [[B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/POPODecryptionKeyResponseContent;->respContent:Lorg/bouncycastle/asn1/cmp/POPODecKeyRespContent;

    return-object v0
.end method

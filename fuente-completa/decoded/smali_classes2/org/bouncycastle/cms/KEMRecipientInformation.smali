.class public Lorg/bouncycastle/cms/KEMRecipientInformation;
.super Lorg/bouncycastle/cms/RecipientInformation;


# instance fields
.field private info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKem()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lorg/bouncycastle/cms/RecipientInformation;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSecureReadable;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->isTagged()Z

    move-result p2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getId()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/KEMRecipientId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bouncycastle/cms/KEMRecipientId;-><init>([B)V

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->rid:Lorg/bouncycastle/cms/RecipientId;

    return-void

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    move-result-object p1

    new-instance p2, Lorg/bouncycastle/cms/KEMRecipientId;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getName()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object p3

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;->getSerialNumber()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/KEMRecipientId;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;)V

    goto :goto_0
.end method


# virtual methods
.method public getEncapsulation()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKemct()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getKdfAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getKdf()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method protected getRecipientOperator(Lorg/bouncycastle/cms/Recipient;)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/cms/KEMRecipient;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->keyEncAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->messageAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/cms/KEMRecipient;->getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;

    move-result-object p1

    return-object p1
.end method

.method public getUkm()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInformation;->info:Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;->getUkm()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

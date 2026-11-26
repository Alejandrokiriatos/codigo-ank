.class public abstract Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private subjectKeyIdentifier:[B

.field protected final wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    return-void
.end method

.method protected constructor <init>([BLorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    return-void
.end method


# virtual methods
.method public final generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/KEMKeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    :goto_0
    move-object v4, v0

    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v1, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    sget-object v2, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    iget-object v5, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v5}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v7, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v7}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getEncapsulation()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iget-object v7, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v7}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v9, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v9}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKekLength()I

    move-result v9

    int-to-long v9, v9

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    iget-object v9, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v9}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    new-instance v11, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v11, p1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v11}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;)V

    return-object v0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance v0, Lorg/bouncycastle/cms/CMSException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception wrapping content key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/bouncycastle/operator/OperatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

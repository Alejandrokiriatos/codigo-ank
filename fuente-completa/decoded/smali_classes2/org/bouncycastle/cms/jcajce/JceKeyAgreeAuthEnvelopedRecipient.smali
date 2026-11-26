.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Ljava/security/Key;

    move-result-object p1

    move-object p3, p2

    move-object p2, p0

    iget-object p4, p2, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeAuthEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {p4, p1, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p4, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance p5, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;

    invoke-direct {p5, p3, p1}, Lorg/bouncycastle/cms/jcajce/CMSInputAEADDecryptor;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {p4, p5}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object p4
.end method

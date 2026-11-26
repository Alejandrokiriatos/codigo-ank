.class public Lorg/bouncycastle/cert/cmp/ChallengeContent;
.super Ljava/lang/Object;


# instance fields
.field private final challenge:Lorg/bouncycastle/asn1/cmp/Challenge;

.field private final owfCalc:Lorg/bouncycastle/operator/DigestCalculator;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/cmp/Challenge;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->challenge:Lorg/bouncycastle/asn1/cmp/Challenge;

    iput-object p2, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->owfCalc:Lorg/bouncycastle/operator/DigestCalculator;

    return-void
.end method


# virtual methods
.method public extractChallenge(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/cms/Recipient;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedData;

    new-instance v1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->envelopedData:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->challenge:Lorg/bouncycastle/asn1/cmp/Challenge;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/cmp/Challenge;->getEncryptedRand()Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/cms/ContentInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/CMSEnvelopedData;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedData;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/RecipientInformationStore;->getRecipients()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cms/RecipientInformation;

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/RecipientInformation;->getContent(Lorg/bouncycastle/cms/Recipient;)[B

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/Challenge$Rand;

    move-result-object p2

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->getSender()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/PKIHeader;->getSender()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/GeneralName;->getEncoded()[B

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->owfCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->getInt()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->challenge:Lorg/bouncycastle/asn1/cmp/Challenge;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cmp/Challenge;->getWitness()[B

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ChallengeContent;->owfCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/cmp/Challenge$Rand;->getInt()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPChallengeFailedException;

    const-string p2, "corrupted challenge found"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/cmp/CMPChallengeFailedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/cert/cmp/CMPChallengeFailedException;

    const-string p2, "incorrect sender found"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/cmp/CMPChallengeFailedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/cmp/CMPException;

    invoke-virtual {p1}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

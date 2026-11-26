.class public Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;
.super Lorg/bouncycastle/cms/CMSEnvelopedGenerator;


# static fields
.field public static final AES128_CCM:Ljava/lang/String;

.field public static final AES128_GCM:Ljava/lang/String;

.field public static final AES192_CCM:Ljava/lang/String;

.field public static final AES192_GCM:Ljava/lang/String;

.field public static final AES256_CCM:Ljava/lang/String;

.field public static final AES256_GCM:Ljava/lang/String;

.field public static final ChaCha20Poly1305:Ljava/lang/String;


# instance fields
.field protected authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field protected originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

.field protected unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES128_CCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES192_CCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_CCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES256_CCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES128_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES128_GCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES192_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES192_GCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->AES256_GCM:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->AES256_GCM:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/cms/CMSAlgorithm;->ChaCha20Poly1305:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->ChaCha20Poly1305:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/cms/CMSEnvelopedGenerator;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iput-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method


# virtual methods
.method public addRecipientInfoGenerator(Lorg/bouncycastle/cms/RecipientInfoGenerator;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->recipientInfoGenerators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAuthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->authAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.method public setOriginatorInfo(Lorg/bouncycastle/cms/OriginatorInformation;)V
    .locals 0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/OriginatorInformation;->toASN1Structure()Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    return-void
.end method

.method public setUnauthenticatedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cms/CMSAuthEnvelopedGenerator;->unauthAttrsGenerator:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    return-void
.end method

.class public Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;
    }
.end annotation


# static fields
.field private static final sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method protected createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    new-instance p1, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;

    invoke-direct {p1}, Lorg/bouncycastle/operator/bc/BcHssLmsContentSignerBuilder$HssSigner;-><init>()V

    return-object p1
.end method

.class Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/ExtendedContentSigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final signer:Lorg/bouncycastle/operator/ContentSigner;

.field final synthetic this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

.field final synthetic val$contentSigner:Lorg/bouncycastle/operator/ContentSigner;


# direct methods
.method constructor <init>(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;Lorg/bouncycastle/operator/ContentSigner;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->this$0:Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->val$contentSigner:Lorg/bouncycastle/operator/ContentSigner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->access$000(Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->signer:Lorg/bouncycastle/operator/ContentSigner;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->digestAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder$2;->signer:Lorg/bouncycastle/operator/ContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.class public Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/CompositePublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private count:I

.field private final keys:[Ljava/security/PublicKey;

.field private final providers:[Ljava/security/Provider;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/security/PublicKey;

    iput-object v1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->keys:[Ljava/security/PublicKey;

    new-array v0, v0, [Ljava/security/Provider;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->providers:[Ljava/security/Provider;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->count:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/jcajce/CompositePublicKey$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method public addPublicKey(Ljava/security/PublicKey;)Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/security/Provider;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->addPublicKey(Ljava/security/PublicKey;Ljava/security/Provider;)Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPublicKey(Ljava/security/PublicKey;Ljava/lang/String;)Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;
    .locals 0

    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->addPublicKey(Ljava/security/PublicKey;Ljava/security/Provider;)Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addPublicKey(Ljava/security/PublicKey;Ljava/security/Provider;)Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->count:I

    iget-object v1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->keys:[Ljava/security/PublicKey;

    array-length v2, v1

    if-eq v0, v2, :cond_0

    aput-object p1, v1, v0

    iget-object p1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->providers:[Ljava/security/Provider;

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->count:I

    aput-object p2, p1, v0

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "only "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->keys:[Ljava/security/PublicKey;

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " allowed in composite"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lorg/bouncycastle/jcajce/CompositePublicKey;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->providers:[Ljava/security/Provider;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->keys:[Ljava/security/PublicKey;

    invoke-direct {v0, v1, v3, v2, v2}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Ljava/security/PublicKey;[Ljava/security/Provider;Lorg/bouncycastle/jcajce/CompositePublicKey$1;)V

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/jcajce/CompositePublicKey;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->algorithmIdentifier:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->keys:[Ljava/security/PublicKey;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/CompositePublicKey$Builder;->providers:[Ljava/security/Provider;

    invoke-direct {v0, v1, v3, v4, v2}, Lorg/bouncycastle/jcajce/CompositePublicKey;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Ljava/security/PublicKey;[Ljava/security/Provider;Lorg/bouncycastle/jcajce/CompositePublicKey$1;)V

    return-object v0
.end method

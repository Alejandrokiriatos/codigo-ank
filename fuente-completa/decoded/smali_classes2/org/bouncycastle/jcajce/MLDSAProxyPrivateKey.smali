.class public Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/interfaces/MLDSAPrivateKey;


# instance fields
.field private final publicKey:Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;->publicKey:Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "public key must be an ML-DSA public key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;->publicKey:Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;->publicKey:Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;->getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateData()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getPrivateKey(Z)Lorg/bouncycastle/jcajce/interfaces/MLDSAPrivateKey;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPublicKey()Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/MLDSAProxyPrivateKey;->publicKey:Lorg/bouncycastle/jcajce/interfaces/MLDSAPublicKey;

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.class public Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

.field private final outputLength:I


# direct methods
.method public constructor <init>([B[B[BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

    iput p4, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->outputLength:I

    return-void
.end method


# virtual methods
.method public getIKM()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v0

    return-object v0
.end method

.method public getInfo()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getInfo()[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->outputLength:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v0

    return-object v0
.end method

.method public skipExtract()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/HKDFParameterSpec;->hkdfParameters:Lorg/bouncycastle/crypto/params/HKDFParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtract()Z

    move-result v0

    return v0
.end method

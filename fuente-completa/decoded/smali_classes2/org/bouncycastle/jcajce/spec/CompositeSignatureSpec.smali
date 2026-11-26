.class public Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private final isPrehashMode:Z

.field private final secondaryParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;-><init>(ZLjava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public constructor <init>(ZLjava/security/spec/AlgorithmParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;->isPrehashMode:Z

    iput-object p2, p0, Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;->secondaryParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-void
.end method


# virtual methods
.method public getSecondarySpec()Ljava/security/spec/AlgorithmParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;->secondaryParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public isPrehashMode()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/CompositeSignatureSpec;->isPrehashMode:Z

    return v0
.end method

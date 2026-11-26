.class public Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final data:[B

.field private final isSeed:Z

.field private final params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field private final publicData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->data:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->publicData:[B

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "incorrect length for seed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed:Z

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->data:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->publicData:[B

    return-void
.end method


# virtual methods
.method public getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    return-object v0
.end method

.method public getPrivateData()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeySpec represents seed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPublicData()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->publicData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeySpec represents long form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeed()[B
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeySpec represents long form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSeed()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPrivateKeySpec;->isSeed:Z

    return v0
.end method

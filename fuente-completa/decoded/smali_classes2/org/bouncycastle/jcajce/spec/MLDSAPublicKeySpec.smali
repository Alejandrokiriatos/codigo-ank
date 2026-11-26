.class public Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

.field private final publicData:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->publicData:[B

    return-void
.end method


# virtual methods
.method public getParameterSpec()Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->params:Lorg/bouncycastle/jcajce/spec/MLDSAParameterSpec;

    return-object v0
.end method

.method public getPublicData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/MLDSAPublicKeySpec;->publicData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

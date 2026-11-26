.class public Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final parameters:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

.field private final publicKey:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->publicKey:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->publicKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaPublicKeyParameters;->publicKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

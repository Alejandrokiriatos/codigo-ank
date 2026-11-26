.class public Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final pub:Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;

.field private final ssk:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;->ssk:Ljava/math/BigInteger;

    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;->pub:Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getPublicKeyParameters()Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;->pub:Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;

    return-object v0
.end method

.method public getSSK()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECCSIPrivateKeyParameters;->ssk:Ljava/math/BigInteger;

    return-object v0
.end method

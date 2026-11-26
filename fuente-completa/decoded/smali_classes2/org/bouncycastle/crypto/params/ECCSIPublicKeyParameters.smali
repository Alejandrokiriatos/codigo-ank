.class public Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# instance fields
.field private final pvt:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;->pvt:Lorg/bouncycastle/math/ec/ECPoint;

    return-void
.end method


# virtual methods
.method public final getPVT()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECCSIPublicKeyParameters;->pvt:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.class public Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;
.super Ljava/lang/Object;


# instance fields
.field private final V:Lorg/bouncycastle/math/ec/ECPoint;

.field private final r:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->V:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p2, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->r:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getV()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->V:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getr()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/ecjpake/ECSchnorrZKP;->r:Ljava/math/BigInteger;

    return-object v0
.end method

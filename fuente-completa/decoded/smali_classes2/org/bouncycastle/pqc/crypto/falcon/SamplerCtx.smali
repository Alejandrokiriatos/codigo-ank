.class Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
.super Ljava/lang/Object;


# instance fields
.field p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

.field sigma_min:D


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:D

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    return-void
.end method

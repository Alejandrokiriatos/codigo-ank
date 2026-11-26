.class public Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/snova/SnovaKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    return-object v0
.end method

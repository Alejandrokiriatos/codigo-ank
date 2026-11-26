.class public Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi$SNOVA_75_33_2_SHAKE_ESK;
.super Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SNOVA_75_33_2_SHAKE_ESK"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->SNOVA_75_33_2_SHAKE_ESK:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    return-void
.end method

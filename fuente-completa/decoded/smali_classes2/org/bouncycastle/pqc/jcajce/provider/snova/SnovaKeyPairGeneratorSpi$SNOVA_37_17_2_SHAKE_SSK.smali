.class public Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi$SNOVA_37_17_2_SHAKE_SSK;
.super Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SNOVA_37_17_2_SHAKE_SSK"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->SNOVA_37_17_2_SHAKE_SSK:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SnovaKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    return-void
.end method

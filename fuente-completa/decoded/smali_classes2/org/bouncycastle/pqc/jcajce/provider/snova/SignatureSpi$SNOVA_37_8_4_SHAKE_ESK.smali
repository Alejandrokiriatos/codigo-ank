.class public Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi$SNOVA_37_8_4_SHAKE_ESK;
.super Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SNOVA_37_8_4_SHAKE_ESK"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;->SNOVA_37_8_4_SHAKE_ESK:Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;Lorg/bouncycastle/pqc/crypto/snova/SnovaParameters;)V

    return-void
.end method

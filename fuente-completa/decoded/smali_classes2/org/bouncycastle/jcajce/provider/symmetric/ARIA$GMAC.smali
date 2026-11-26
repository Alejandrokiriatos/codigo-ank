.class public Lorg/bouncycastle/jcajce/provider/symmetric/ARIA$GMAC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/ARIA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMAC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/macs/GMac;

    new-instance v1, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/GMac;-><init>(Lorg/bouncycastle/crypto/modes/GCMModeCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    return-void
.end method

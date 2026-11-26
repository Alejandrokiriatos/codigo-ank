.class public Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi$Base;
.super Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/snova/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/snova/SnovaSigner;)V

    return-void
.end method

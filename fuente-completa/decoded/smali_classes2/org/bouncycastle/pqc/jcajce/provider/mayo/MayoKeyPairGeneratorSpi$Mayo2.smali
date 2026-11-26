.class public Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyPairGeneratorSpi$Mayo2;
.super Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyPairGeneratorSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mayo2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo2:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/MayoKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    return-void
.end method

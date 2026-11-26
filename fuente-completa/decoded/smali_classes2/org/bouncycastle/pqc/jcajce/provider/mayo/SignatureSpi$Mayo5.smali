.class public Lorg/bouncycastle/pqc/jcajce/provider/mayo/SignatureSpi$Mayo5;
.super Lorg/bouncycastle/pqc/jcajce/provider/mayo/SignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/mayo/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mayo5"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;->mayo5:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/mayo/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/mayo/MayoSigner;Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V

    return-void
.end method

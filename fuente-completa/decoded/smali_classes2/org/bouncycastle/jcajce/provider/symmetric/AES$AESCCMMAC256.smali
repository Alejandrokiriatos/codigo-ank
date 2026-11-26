.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$AESCCMMAC256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AESCCMMAC256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$CCMMac;-><init>()V

    const/16 v1, 0x100

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(ILorg/bouncycastle/crypto/Mac;)V

    return-void
.end method

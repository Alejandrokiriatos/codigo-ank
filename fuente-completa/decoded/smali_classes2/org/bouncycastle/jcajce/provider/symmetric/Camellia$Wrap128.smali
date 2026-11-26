.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$Wrap128;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;-><init>()V

    const/16 v1, 0x80

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(ILorg/bouncycastle/crypto/Wrapper;)V

    return-void
.end method

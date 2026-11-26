.class public Lorg/bouncycastle/pqc/crypto/mayo/MayoKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/mayo/MayoKeyGenerationParameters;->params:Lorg/bouncycastle/pqc/crypto/mayo/MayoParameters;

    return-object v0
.end method

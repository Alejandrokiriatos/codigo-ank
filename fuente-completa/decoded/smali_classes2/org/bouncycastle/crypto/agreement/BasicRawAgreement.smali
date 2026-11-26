.class public final Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/RawAgreement;


# instance fields
.field public final basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BasicAgreement;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "\'basicAgreement\' cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;->getAgreementSize()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;[BII)V

    return-void
.end method

.method public getAgreementSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BasicAgreement;->getFieldSize()I

    move-result v0

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/BasicRawAgreement;->basicAgreement:Lorg/bouncycastle/crypto/BasicAgreement;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/BasicAgreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

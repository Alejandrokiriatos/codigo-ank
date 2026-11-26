.class public abstract Lorg/bouncycastle/cms/KEMKeyWrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyWrapper;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    return-void
.end method


# virtual methods
.method public abstract getEncapsulation()[B
.end method

.method public abstract getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getKekLength()I
.end method

.method public abstract getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

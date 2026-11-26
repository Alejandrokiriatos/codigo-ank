.class public interface abstract Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;
.super Ljava/lang/Object;
.source "SshRsaPrivateCrtKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;


# virtual methods
.method public abstract doPrivate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract getCrtCoefficient()Ljava/math/BigInteger;
.end method

.method public abstract getJCEPrivateKey()Ljava/security/PrivateKey;
.end method

.method public abstract getPrimeExponentP()Ljava/math/BigInteger;
.end method

.method public abstract getPrimeExponentQ()Ljava/math/BigInteger;
.end method

.method public abstract getPrimeP()Ljava/math/BigInteger;
.end method

.method public abstract getPrimeQ()Ljava/math/BigInteger;
.end method

.method public abstract getPublicExponent()Ljava/math/BigInteger;
.end method

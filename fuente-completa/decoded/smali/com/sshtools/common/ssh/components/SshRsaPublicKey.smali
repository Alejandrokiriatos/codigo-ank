.class public interface abstract Lcom/sshtools/common/ssh/components/SshRsaPublicKey;
.super Ljava/lang/Object;
.source "SshRsaPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# virtual methods
.method public abstract doPublic(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract getJCEPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract getModulus()Ljava/math/BigInteger;
.end method

.method public abstract getPublicExponent()Ljava/math/BigInteger;
.end method

.method public abstract getVersion()I
.end method

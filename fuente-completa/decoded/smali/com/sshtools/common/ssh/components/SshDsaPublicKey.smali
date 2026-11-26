.class public interface abstract Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
.super Ljava/lang/Object;
.source "SshDsaPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# virtual methods
.method public abstract getG()Ljava/math/BigInteger;
.end method

.method public bridge synthetic getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 34
    invoke-interface {p0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getJCEPublicKey()Ljava/security/interfaces/DSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJCEPublicKey()Ljava/security/interfaces/DSAPublicKey;
.end method

.method public abstract getP()Ljava/math/BigInteger;
.end method

.method public abstract getQ()Ljava/math/BigInteger;
.end method

.method public abstract getY()Ljava/math/BigInteger;
.end method

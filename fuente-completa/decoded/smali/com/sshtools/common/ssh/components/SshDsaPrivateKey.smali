.class public interface abstract Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;
.super Ljava/lang/Object;
.source "SshDsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# virtual methods
.method public bridge synthetic getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 36
    invoke-interface {p0}, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;->getJCEPrivateKey()Ljava/security/interfaces/DSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract getJCEPrivateKey()Ljava/security/interfaces/DSAPrivateKey;
.end method

.method public abstract getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
.end method

.method public abstract getX()Ljava/math/BigInteger;
.end method

.method public abstract sign([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

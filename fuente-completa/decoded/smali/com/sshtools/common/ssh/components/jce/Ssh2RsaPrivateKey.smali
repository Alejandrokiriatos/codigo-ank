.class public Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;
.source "Ssh2RsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    .line 51
    const-string v0, "RSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 52
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 54
    :goto_0
    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v1, p1, p2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 55
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateKey;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 94
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;

    if-eqz v0, :cond_1

    .line 95
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;

    .line 96
    iget-object v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 97
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "ssh-rsa"

    return-object v0
.end method

.method public getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public sign([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateKey;->sign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-super {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;->doSign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

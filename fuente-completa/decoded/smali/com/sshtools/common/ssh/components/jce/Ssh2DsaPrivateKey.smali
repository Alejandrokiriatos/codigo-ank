.class public Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;
.source "Ssh2DsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;


# instance fields
.field protected prv:Ljava/security/interfaces/DSAPrivateKey;

.field protected pub:Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 66
    const-string v0, "DSA"

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    .line 68
    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 69
    :goto_0
    new-instance v1, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v1, p4, p1, p2, p3}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 70
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p4

    check-cast p4, Ljava/security/interfaces/DSAPrivateKey;

    iput-object p4, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    iput-object p4, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

    .line 72
    new-instance p4, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    invoke-direct {p4, p1, p2, p3, p5}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p4, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->pub:Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 74
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Ljava/security/interfaces/DSAPrivateKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 56
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    .line 57
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    .line 58
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->generatePublic()V

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/DSAPrivateKey;Ljava/security/interfaces/DSAPublicKey;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    .line 51
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    .line 52
    new-instance p1, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    invoke-direct {p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;-><init>(Ljava/security/interfaces/DSAPublicKey;)V

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->pub:Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    return-void
.end method

.method private generatePublic()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    .line 81
    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    .line 82
    invoke-interface {v4}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->pub:Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    return-void
.end method


# virtual methods
.method public bridge synthetic getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->getJCEPrivateKey()Ljava/security/interfaces/DSAPrivateKey;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPrivateKey()Ljava/security/interfaces/DSAPrivateKey;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->pub:Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->prv:Ljava/security/interfaces/DSAPrivateKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

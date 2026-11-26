.class public abstract Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;
.source "Ssh2BaseDsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 110
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;

    if-eqz v0, :cond_1

    .line 111
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;

    .line 112
    iget-object v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 113
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "ssh-dss"

    return-object v0
.end method

.method public abstract getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;
.end method

.method public hashCode()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

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

    .line 51
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->sign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    :try_start_0
    const-string p2, "SHA1WithDSA"

    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->getJCESignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 59
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 60
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 62
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 64
    new-instance p2, Lcom/sshtools/common/util/SimpleASNReader;

    invoke-direct {p2, p1}, Lcom/sshtools/common/util/SimpleASNReader;-><init>([B)V

    .line 65
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 66
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    .line 67
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 69
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->stripLeadingZeros([B)[B

    move-result-object p1

    .line 70
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 72
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sshtools/common/util/Utils;->stripLeadingZeros([B)[B

    move-result-object p2

    .line 74
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseDsaPrivateKey;->getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v0, 0x2

    .line 77
    new-array v1, v1, [B

    .line 79
    array-length v2, p1

    const/4 v3, 0x0

    if-lt v2, v0, :cond_0

    .line 80
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 82
    :cond_0
    array-length v2, p1

    sub-int v2, v0, v2

    array-length v4, p1

    invoke-static {p1, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    :goto_0
    array-length p1, p2

    if-lt p1, v0, :cond_1

    .line 86
    array-length p1, p2

    sub-int/2addr p1, v0

    invoke-static {p2, p1, v1, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 88
    :cond_1
    array-length p1, p2

    sub-int p1, v0, p1

    add-int/2addr v0, p1

    array-length p1, p2

    invoke-static {p2, v3, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to sign data! "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

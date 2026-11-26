.class public abstract Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;
.source "Ssh2BaseRsaPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V

    return-void
.end method


# virtual methods
.method protected doSign([BLjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "rsa-sha2-256"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Failed to sign data! "

    if-nez v0, :cond_1

    const-string v0, "rsa-sha2-512"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 66
    :try_start_0
    const-string p2, "SHA1WithRSA"

    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;->getJCESignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 69
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 59
    :cond_0
    :try_start_1
    const-string p2, "SHA512WithRSA"

    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;->getJCESignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 62
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_1
    :try_start_2
    const-string p2, "SHA256WithRSA"

    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;->getJCESignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 74
    :goto_0
    :try_start_3
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseRsaPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 75
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 76
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_3} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    .line 78
    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_4
    move-exception p1

    .line 55
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

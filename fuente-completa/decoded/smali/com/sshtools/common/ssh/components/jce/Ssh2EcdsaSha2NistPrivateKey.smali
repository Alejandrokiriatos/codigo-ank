.class public Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;
.source "Ssh2EcdsaSha2NistPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# instance fields
.field curve:Ljava/lang/String;

.field name:Ljava/lang/String;

.field spec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V

    .line 46
    const-string p1, "prime256v1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "secp256r1"

    if-nez p1, :cond_5

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "nistp256"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    const-string p1, "secp384r1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "nistp384"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    const-string p1, "secp521r1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "nistp521"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported curve name "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->curve:Ljava/lang/String;

    .line 56
    const-string p1, "ecdsa-sha2-nistp521"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->name:Ljava/lang/String;

    .line 57
    const-string p1, "SHA512WithECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->spec:Ljava/lang/String;

    return-void

    .line 51
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->curve:Ljava/lang/String;

    .line 52
    const-string p1, "ecdsa-sha2-nistp384"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->name:Ljava/lang/String;

    .line 53
    const-string p1, "SHA384WithECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->spec:Ljava/lang/String;

    return-void

    .line 47
    :cond_5
    :goto_2
    iput-object p3, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->curve:Ljava/lang/String;

    .line 48
    const-string p1, "ecdsa-sha2-nistp256"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->name:Ljava/lang/String;

    .line 49
    const-string p1, "SHA256WithECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->spec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 119
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;

    .line 121
    iget-object v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

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

    .line 64
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->sign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "DER decode failed: "

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->spec:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->getJCESignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->prv:Ljava/security/PrivateKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 72
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object p1

    .line 73
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :try_start_1
    new-instance v1, Lcom/sshtools/common/util/SimpleASNReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/SimpleASNReader;-><init>([B)V

    .line 77
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 78
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    .line 79
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 81
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p1

    .line 82
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getByte()I

    .line 84
    invoke-virtual {v1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    .line 86
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 87
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 88
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 90
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 93
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    .line 95
    new-instance p2, Ljava/io/IOException;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sign: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

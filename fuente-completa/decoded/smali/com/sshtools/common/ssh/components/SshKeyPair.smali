.class public Lcom/sshtools/common/ssh/components/SshKeyPair;
.super Ljava/lang/Object;
.source "SshKeyPair.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SignatureGenerator;


# instance fields
.field privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

.field publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyPair(Lcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1

    .line 65
    new-instance v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 66
    iput-object p1, v0, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 67
    iput-object p0, v0, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 98
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    check-cast p1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    .line 100
    iget-object v0, p1, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    if-eqz v3, :cond_0

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    return-object v0
.end method

.method public getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method public getPublicKeys()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 126
    new-array v0, v0, [Lcom/sshtools/common/ssh/components/SshPublicKey;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->privatekey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

    return-void
.end method

.method public setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/SshKeyPair;->publickey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method

.method public sign(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance p1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v0

    invoke-interface {v0, p3, p2}, Lcom/sshtools/common/ssh/components/SshPrivateKey;->sign([BLjava/lang/String;)[B

    move-result-object p3

    .line 116
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 118
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 121
    throw p2
.end method

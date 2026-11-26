.class public Lcom/sshtools/synergy/ssh/TransportProtocolHelper;
.super Ljava/lang/Object;
.source "TransportProtocolHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKexInit(Lcom/sshtools/synergy/ssh/SshContext;ZLjava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/16 v1, 0x10

    .line 37
    :try_start_0
    new-array v1, v1, [B

    .line 38
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;->nextBytes([B)V

    const/16 v2, 0x14

    .line 40
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 44
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedKeyExchanges()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredKeyExchange()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const-string v2, ","

    if-eqz p1, :cond_0

    .line 48
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getSupportedPublicKeys()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCipherCS()Ljava/lang/String;

    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCiphersSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCipherSC()Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredMacCS()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedMacsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredMacSC()Ljava/lang/String;

    move-result-object p2

    .line 71
    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCompressionCS()Ljava/lang/String;

    move-result-object p2

    .line 76
    invoke-virtual {p1, p2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->supportedCompressionsSC()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/sshtools/synergy/ssh/SshContext;->getPreferredCompressionSC()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 84
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 86
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 87
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 89
    invoke-virtual {v0, p0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 91
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 35
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

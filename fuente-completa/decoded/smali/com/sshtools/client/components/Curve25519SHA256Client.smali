.class public Lcom/sshtools/client/components/Curve25519SHA256Client;
.super Lcom/sshtools/client/SshKeyExchangeClient;
.source "Curve25519SHA256Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/Curve25519SHA256Client$Curve25519SHA256ClientFactory;
    }
.end annotation


# static fields
.field public static final CURVE25519_SHA2:Ljava/lang/String; = "curve25519-sha256"

.field public static final SSH_MSG_KEX_ECDH_INIT:I = 0x1e

.field public static final SSH_MSG_KEX_ECDH_REPLY:I = 0x1f


# instance fields
.field clientId:Ljava/lang/String;

.field clientKexInit:[B

.field e:[B

.field f:[B

.field public final name:Ljava/lang/String;

.field privateKey:[B

.field serverId:Ljava/lang/String;

.field serverKexInit:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    const-string v0, "curve25519-sha256"

    invoke-direct {p0, v0}, Lcom/sshtools/client/components/Curve25519SHA256Client;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 82
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    const/16 v1, 0x1388

    const-string v2, "SHA-256"

    invoke-direct {p0, v2, v0, v1}, Lcom/sshtools/client/SshKeyExchangeClient;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    .line 83
    iput-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->name:Ljava/lang/String;

    return-void
.end method

.method private initCrypto()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 93
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->e:[B

    .line 94
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->privateKey:[B

    .line 95
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->privateKey:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 96
    iget-object v0, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->e:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->privateKey:[B

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->keygen([B[B[B)V

    return-void
.end method


# virtual methods
.method protected calculateExchangeHash()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/components/Curve25519SHA256Client;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 181
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->clientKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 188
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->clientKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 191
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->serverKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 192
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->serverKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 195
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->hostKey:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 196
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->hostKey:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 198
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->e:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 199
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->e:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 201
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->f:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 202
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->f:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 205
    iget-object v1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->secret:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 208
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->exchangeHash:[B

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 212
    const-string v0, ""

    return-object v0
.end method

.method public init(Lcom/sshtools/synergy/ssh/SshTransport;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sshtools/common/ssh/components/SshPrivateKey;Lcom/sshtools/common/ssh/components/SshPublicKey;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/SshTransport<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B[B",
            "Lcom/sshtools/common/ssh/components/SshPrivateKey;",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            "ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    .line 114
    iput-object p2, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->clientId:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->serverId:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->clientKexInit:[B

    .line 117
    iput-object p5, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->serverKexInit:[B

    .line 120
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/Curve25519SHA256Client;->initCrypto()V

    .line 122
    new-instance p2, Lcom/sshtools/client/components/Curve25519SHA256Client$1;

    invoke-direct {p2, p0}, Lcom/sshtools/client/components/Curve25519SHA256Client$1;-><init>(Lcom/sshtools/client/components/Curve25519SHA256Client;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 p3, 0x9

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 138
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2
.end method

.method public processMessage([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    aget-byte v1, p1, v0

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    if-ne v1, v2, :cond_1

    .line 156
    :try_start_0
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, p1, v3, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->hostKey:[B

    .line 158
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->f:[B

    .line 159
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->signature:[B

    const/16 p1, 0x20

    .line 161
    new-array p1, p1, [B

    .line 162
    iget-object v2, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->privateKey:[B

    iget-object v4, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->f:[B

    invoke-static {p1, v2, v4}, Lcom/sshtools/common/ssh/components/jce/Curve25519;->curve([B[B[B)V

    .line 163
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v2, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->secret:Ljava/math/BigInteger;

    .line 165
    invoke-virtual {p0}, Lcom/sshtools/client/components/Curve25519SHA256Client;->calculateExchangeHash()V

    .line 167
    iget-object p1, p0, Lcom/sshtools/client/components/Curve25519SHA256Client;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/SshTransport;->sendNewKeys()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catchall_0
    move-exception p1

    .line 156
    :try_start_3
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 169
    const-string v1, "Key exchange failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to process key exchange"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0

    .line 152
    :cond_1
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    aget-byte p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected SSH_MSG_KEX_ECDH_REPLY but got message id "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    invoke-direct {v1, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public test()V
    .locals 3

    .line 102
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/Curve25519SHA256Client;->initCrypto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

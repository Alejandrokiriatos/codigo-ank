.class public abstract Lcom/sshtools/client/components/DiffieHellmanGroup;
.super Lcom/sshtools/client/SshKeyExchangeClient;
.source "DiffieHellmanGroup.java"


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final TWO:Ljava/math/BigInteger;

.field static final g:Ljava/math/BigInteger;


# instance fields
.field dhKeyAgreement:Ljavax/crypto/KeyAgreement;

.field dhKeyFactory:Ljava/security/KeyFactory;

.field dhKeyPair:Ljava/security/KeyPair;

.field dhKeyPairGen:Ljava/security/KeyPairGenerator;

.field kexAlgorithm:Ljava/lang/String;

.field p:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    .line 65
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/components/DiffieHellmanGroup;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 66
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/components/DiffieHellmanGroup;->TWO:Ljava/math/BigInteger;

    .line 70
    sput-object v0, Lcom/sshtools/client/components/DiffieHellmanGroup;->g:Ljava/math/BigInteger;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigInteger;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p2, p4, p5}, Lcom/sshtools/client/SshKeyExchangeClient;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    .line 86
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->kexAlgorithm:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->p:Ljava/math/BigInteger;

    return-void
.end method

.method private initCrypto()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 141
    const-string v0, "DH"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyFactory:Ljava/security/KeyFactory;

    .line 144
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    goto :goto_1

    .line 146
    :cond_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    .line 147
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_2

    .line 148
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    goto :goto_2

    .line 149
    :cond_2
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    .line 151
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->p:Ljava/math/BigInteger;

    sget-object v2, Lcom/sshtools/client/components/DiffieHellmanGroup;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 153
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 155
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyPairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyPair:Ljava/security/KeyPair;

    .line 156
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->kexAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
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

    .line 103
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->clientId:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->serverId:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->clientKexInit:[B

    .line 106
    iput-object p5, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->serverKexInit:[B

    .line 107
    iput-boolean p8, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->firstPacketFollows:Z

    .line 108
    iput-boolean p9, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->useFirstPacket:Z

    .line 109
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    .line 115
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroup;->initCrypto()V

    .line 116
    iget-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {p2}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->e:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->e:Ljava/math/BigInteger;

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    .line 122
    new-instance p3, Lcom/sshtools/client/components/DiffieHellmanGroup$1;

    invoke-direct {p3, p0, p2}, Lcom/sshtools/client/components/DiffieHellmanGroup$1;-><init>(Lcom/sshtools/client/components/DiffieHellmanGroup;[B)V

    const/4 p2, 0x1

    invoke-interface {p1, p3, p2}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V

    return-void

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Failed to generate DH value: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public isKeyExchangeMessage(I)Z
    .locals 1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1f

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public processMessage([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 171
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    .line 219
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v2

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->hostKey:[B

    .line 179
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->f:Ljava/math/BigInteger;

    .line 180
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->signature:[B

    .line 182
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 183
    const-string p1, "Received SSH_MSG_KEXDH_INIT f={}"

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->f:Ljava/math/BigInteger;

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    const-string p1, "Host key: {}"

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->hostKey:[B

    .line 185
    invoke-static {v1}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v1

    .line 184
    invoke-static {v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    const-string p1, "Signature: {}"

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->signature:[B

    invoke-static {v1}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_1
    new-instance p1, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->f:Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->p:Ljava/math/BigInteger;

    sget-object v4, Lcom/sshtools/client/components/DiffieHellmanGroup;->g:Ljava/math/BigInteger;

    invoke-direct {p1, v1, v3, v4}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 191
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    iget-object v3, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v3, p1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 193
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->dhKeyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    .line 194
    aget-byte v1, p1, v2

    const/16 v4, 0x80

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_2

    .line 195
    array-length v1, p1

    add-int/2addr v1, v3

    new-array v1, v1, [B

    .line 196
    array-length v4, p1

    invoke-static {p1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 200
    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->secret:Ljava/math/BigInteger;

    .line 203
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanGroup;->calculateExchangeHash()V

    .line 205
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanGroup;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/SshTransport;->sendNewKeys()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    :catch_0
    move-exception p1

    .line 208
    :try_start_2
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Failed to read SSH_MSG_KEXDH_REPLY from message buffer"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 219
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 220
    throw p1
.end method

.method public test()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanGroup;->initCrypto()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

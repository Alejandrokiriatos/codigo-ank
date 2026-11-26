.class public abstract Lcom/sshtools/client/components/DiffieHellmanEcdh;
.super Lcom/sshtools/client/SshKeyExchangeClient;
.source "DiffieHellmanEcdh.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/components/SshKeyExchange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/SshKeyExchangeClient;",
        "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final SSH_MSG_KEX_ECDH_INIT:I = 0x1e

.field public static final SSH_MSG_KEX_ECDH_REPLY:I = 0x1f


# instance fields
.field Q_C:[B

.field Q_S:[B

.field clientId:Ljava/lang/String;

.field clientKexInit:[B

.field curve:Ljava/lang/String;

.field keyAgreement:Ljavax/crypto/KeyAgreement;

.field keyGen:Ljava/security/KeyPairGenerator;

.field keyPair:Ljava/security/KeyPair;

.field name:Ljava/lang/String;

.field prvkey:Lcom/sshtools/common/ssh/components/SshPrivateKey;

.field pubkey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field serverId:Ljava/lang/String;

.field serverKexInit:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p3, p4, p5}, Lcom/sshtools/client/SshKeyExchangeClient;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    .line 82
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->curve:Ljava/lang/String;

    return-void
.end method

.method private initCrypto()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 216
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    .line 218
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 219
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyGen:Ljava/security/KeyPairGenerator;

    .line 222
    const-string v0, "ECDH"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 223
    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    goto :goto_1

    .line 225
    :cond_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 224
    invoke-static {v0, v1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyAgreement:Ljavax/crypto/KeyAgreement;

    .line 228
    new-instance v0, Ljava/security/spec/ECGenParameterSpec;

    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->curve:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v1, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 230
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyPair:Ljava/security/KeyPair;

    .line 231
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

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

    .line 92
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 96
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->clientKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 103
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->clientKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 106
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->serverKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 107
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->serverKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 110
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->hostKey:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 111
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->hostKey:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 113
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_C:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 114
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_C:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 116
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_S:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 117
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_S:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 120
    iget-object v1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->secret:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 123
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->exchangeHash:[B

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 132
    :try_start_0
    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    .line 133
    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->clientId:Ljava/lang/String;

    .line 134
    iput-object p3, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->serverId:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->clientKexInit:[B

    .line 136
    iput-object p5, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->serverKexInit:[B

    .line 137
    iput-boolean p8, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->firstPacketFollows:Z

    .line 138
    iput-boolean p9, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->useFirstPacket:Z

    .line 141
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh;->initCrypto()V

    .line 143
    iget-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyPair:Ljava/security/KeyPair;

    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPublicKey;

    .line 144
    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p3

    invoke-interface {p2}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->toByteArray(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_C:[B

    .line 146
    new-instance p2, Lcom/sshtools/client/components/DiffieHellmanEcdh$1;

    invoke-direct {p2, p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh$1;-><init>(Lcom/sshtools/client/components/DiffieHellmanEcdh;)V

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 165
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 p3, 0x9

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 163
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

    .line 173
    aget-byte v1, p1, v0

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_0

    return v0

    .line 177
    :cond_0
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-direct {v1, p1, v3, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    .line 180
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->hostKey:[B

    .line 181
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_S:[B

    .line 182
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->signature:[B

    .line 184
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyAgreement:Ljavax/crypto/KeyAgreement;

    iget-object v2, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->Q_S:[B

    iget-object v4, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->curve:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->decodeKey([BLjava/lang/String;)Ljava/security/interfaces/ECPublicKey;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 186
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->keyAgreement:Ljavax/crypto/KeyAgreement;

    invoke-virtual {p1}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p1

    .line 187
    aget-byte v2, p1, v0

    const/16 v4, 0x80

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    .line 188
    array-length v2, p1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 189
    array-length v4, p1

    invoke-static {p1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 194
    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->secret:Ljava/math/BigInteger;

    .line 196
    invoke-virtual {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh;->calculateExchangeHash()V

    .line 198
    iget-object p1, p0, Lcom/sshtools/client/components/DiffieHellmanEcdh;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/SshTransport;->sendNewKeys()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 202
    :try_start_1
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const/16 v2, 0x9

    invoke-direct {v0, p1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 205
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

    .line 237
    :try_start_0
    invoke-direct {p0}, Lcom/sshtools/client/components/DiffieHellmanEcdh;->initCrypto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 239
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

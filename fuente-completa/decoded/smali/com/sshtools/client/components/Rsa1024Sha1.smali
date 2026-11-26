.class public Lcom/sshtools/client/components/Rsa1024Sha1;
.super Lcom/sshtools/client/SshKeyExchangeClient;
.source "Rsa1024Sha1.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/components/jce/AbstractKeyExchange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/components/Rsa1024Sha1$Rsa1024Sha1Factory;
    }
.end annotation


# static fields
.field public static final RSA_1024_SHA1:Ljava/lang/String; = "rsa1024-sha1"

.field static final SSH_MSG_KEXRSA_DONE:I = 0x20

.field static final SSH_MSG_KEXRSA_PUBKEY:I = 0x1e

.field static final SSH_MSG_KEXRSA_SECRET:I = 0x1f


# instance fields
.field cipher:Ljavax/crypto/Cipher;

.field private clientId:Ljava/lang/String;

.field private clientKexInit:[B

.field encryptedSecret:[B

.field private s:[B

.field private serverId:Ljava/lang/String;

.field private serverKexInit:[B

.field tk:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v1, 0x1

    const-string v2, "SHA-1"

    invoke-direct {p0, v2, v0, v1}, Lcom/sshtools/client/SshKeyExchangeClient;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    const/16 v0, 0x50

    .line 94
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->s:[B

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

    .line 251
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa1024Sha1;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 254
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->clientKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 261
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->clientKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 264
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->serverKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 265
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->serverKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 268
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->hostKey:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 269
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->hostKey:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 271
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->tk:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 272
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->tk:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 274
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->encryptedSecret:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 275
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->encryptedSecret:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 278
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->secret:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 281
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->exchangeHash:[B

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 109
    const-string v0, "rsa1024-sha1"

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

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

    .line 135
    iput-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    .line 136
    iput-object p2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->clientId:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->serverId:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->clientKexInit:[B

    .line 139
    iput-object p5, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->serverKexInit:[B

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa1024Sha1;->initCrypto()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 p3, 0x10

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method initCrypto()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getRSAOAEPSHA1AlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->cipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method public isKeyExchangeMessage(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processMessage([B)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 151
    aget-byte v1, p1, v0

    const/16 v2, 0x1e

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    const-string v5, "Key exchange failed"

    if-ne v1, v2, :cond_1

    .line 199
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "Received SSH_MSG_KEXRSA_DONE"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :cond_0
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    array-length v2, p1

    sub-int/2addr v2, v4

    invoke-direct {v1, p1, v4, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    .line 206
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->signature:[B

    .line 207
    new-instance p1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->s:[B

    invoke-direct {p1, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->secret:Ljava/math/BigInteger;

    .line 210
    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa1024Sha1;->calculateExchangeHash()V

    .line 212
    iget-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {p1}, Lcom/sshtools/synergy/ssh/SshTransport;->sendNewKeys()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v4

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, p1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 215
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Failed to read SSH_MSG_KEXRSA_DONE"

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 218
    throw p1

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v5}, Lcom/sshtools/synergy/ssh/SshTransport;->disconnect(ILjava/lang/String;)V

    .line 223
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    aget-byte p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Key exchange failed [id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 154
    :cond_2
    :try_start_2
    new-instance v1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 156
    :try_start_3
    new-instance v2, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v2, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const-wide/16 v5, 0x1

    .line 157
    :try_start_4
    invoke-virtual {v2, v5, v6}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 158
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->hostKey:[B

    .line 159
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->tk:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 160
    :try_start_5
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 162
    iget-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->tk:[B

    invoke-static {p1}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    .line 164
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iget-object v5, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->s:[B

    invoke-virtual {v2, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 166
    iget-object v2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->cipher:Ljavax/crypto/Cipher;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v2, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 168
    new-instance p1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 169
    :try_start_6
    iget-object v2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->s:[B

    invoke-virtual {p1, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 170
    iget-object v2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->encryptedSecret:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 171
    :try_start_7
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 173
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 174
    const-string p1, "Sending SSH_MSG_KEXRSA_SECRET"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/sshtools/client/components/Rsa1024Sha1;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    new-instance v0, Lcom/sshtools/client/components/Rsa1024Sha1$1;

    invoke-direct {v0, p0}, Lcom/sshtools/client/components/Rsa1024Sha1$1;-><init>(Lcom/sshtools/client/components/Rsa1024Sha1;)V

    invoke-interface {p1, v0, v4}, Lcom/sshtools/synergy/ssh/SshTransport;->postMessage(Lcom/sshtools/common/sshd/SshMessage;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 193
    :try_start_8
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    return v4

    :catchall_1
    move-exception v0

    .line 168
    :try_start_9
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_3
    move-exception p1

    .line 156
    :try_start_b
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception p1

    .line 154
    :try_start_d
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_3

    :catchall_6
    move-exception v0

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 194
    :catchall_7
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Failed to write SSH_MSG_KEXRSA_SECRET to message buffer"

    invoke-direct {p1, v0, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public test()V
    .locals 3

    .line 118
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa1024Sha1;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    .line 119
    invoke-virtual {p0}, Lcom/sshtools/client/components/Rsa1024Sha1;->initCrypto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 121
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

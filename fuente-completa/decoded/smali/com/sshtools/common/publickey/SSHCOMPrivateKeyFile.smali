.class Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;
.super Lcom/sshtools/common/publickey/Base64EncodedFileFormat;
.source "SSHCOMPrivateKeyFile.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SshPrivateKeyFile;


# static fields
.field static BEGIN:Ljava/lang/String; = "---- BEGIN SSH2 ENCRYPTED PRIVATE KEY ----"

.field static END:Ljava/lang/String; = "---- END SSH2 ENCRYPTED PRIVATE KEY ----"


# instance fields
.field formattedkey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->END:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->isFormatted([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iput-object p1, p0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->formattedkey:[B

    return-void

    .line 51
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Key is not formatted in the ssh.com format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static isFormatted([B)Z
    .locals 2

    .line 62
    sget-object v0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->END:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->isFormatted([BLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makePassphraseKey(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 218
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    const-string v2, "MD5"

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/Digest;

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 222
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v2

    .line 223
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->reset()V

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 225
    invoke-interface {v1, v2}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 227
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 228
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 230
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    :try_start_1
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 235
    throw p1
.end method


# virtual methods
.method public changePassphrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Changing passphrase is not supported by the ssh.com key format engine"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 251
    const-string v0, ""

    return-object v0
.end method

.method public getFormattedKey()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->formattedkey:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "SSH Communications Security"

    return-object v0
.end method

.method public isPassphraseProtected()Z
    .locals 6

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->formattedkey:[B

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->getKeyBlob([B)[B

    move-result-object v0

    .line 73
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, v0}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    const-wide/32 v4, 0x3f6ff9eb

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    .line 83
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 84
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v2, "3des-cbc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    .line 77
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid ssh.com key! Magic number not found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 88
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 89
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsPassphraseChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 100
    const-string v0, "3des-cbc"

    .line 0
    const-string v2, "Unsupported ssh.com key type "

    const-string v3, "Unsupported cipher type "

    .line 100
    iget-object v4, v1, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->formattedkey:[B

    invoke-virtual {v1, v4}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->getKeyBlob([B)[B

    move-result-object v4

    .line 102
    new-instance v5, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v5, v4}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 105
    :try_start_0
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v6

    const-wide/32 v8, 0x3f6ff9eb

    cmp-long v4, v6, v8

    if-nez v4, :cond_6

    .line 112
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    .line 113
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 114
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v6

    .line 115
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 118
    :try_start_1
    const-string v8, "none"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 119
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 124
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshCipher;

    const/16 v3, 0x20

    .line 127
    new-array v3, v3, [B

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/sshtools/common/publickey/SSHCOMPrivateKeyFile;->makePassphraseKey(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v8, 0x1

    .line 130
    invoke-interface {v0, v8, v3, v6}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 132
    invoke-interface {v0, v7}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([B)V

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in ssh.com private key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    move v8, v9

    .line 140
    :goto_0
    :try_start_2
    new-instance v3, Lcom/sshtools/common/util/ByteArrayReader;

    array-length v0, v7

    const/4 v6, 0x4

    sub-int/2addr v0, v6

    invoke-direct {v3, v7, v6, v0}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 146
    :try_start_3
    const-string v0, "if-modn{sign{rsa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v0

    .line 149
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v2

    .line 150
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v4

    .line 166
    new-instance v6, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v6}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 168
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v7

    .line 169
    invoke-virtual {v7, v4, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    move-result-object v0

    .line 168
    invoke-virtual {v6, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 170
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    .line 171
    invoke-virtual {v0, v4, v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;

    move-result-object v0

    .line 170
    invoke-virtual {v6, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :try_start_4
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 210
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v6

    .line 175
    :cond_2
    :try_start_5
    const-string v0, "dl-modp{sign{dsa"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-nez v0, :cond_3

    .line 183
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v11

    .line 184
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v13

    .line 185
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v12

    .line 186
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v0

    .line 187
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readMPINT32()Ljava/math/BigInteger;

    move-result-object v14

    .line 189
    new-instance v2, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 191
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    .line 192
    invoke-virtual {v4, v11, v12, v13, v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    move-result-object v0

    .line 193
    invoke-virtual {v2, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 194
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v10

    .line 195
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    move-result-object v0

    .line 194
    invoke-virtual {v2, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 206
    :try_start_6
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 210
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v2

    .line 180
    :cond_3
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected value in DSA key; this is an unsupported feature of ssh.com private keys"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v0

    .line 201
    :try_start_8
    const-string v2, "Parsing of ssh.com key failed"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    if-eqz v8, :cond_5

    .line 203
    new-instance v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/InvalidPassphraseException;-><init>()V

    throw v0

    .line 204
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Bad SSH.com private key format!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 206
    :try_start_9
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 207
    throw v0

    :catch_0
    move-exception v0

    .line 137
    new-instance v2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v2, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v2

    .line 108
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Invalid ssh.com key! Magic number not found"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    .line 210
    invoke-virtual {v5}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 211
    throw v0
.end method

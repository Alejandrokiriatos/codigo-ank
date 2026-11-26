.class Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;
.super Lcom/sshtools/common/publickey/Base64EncodedFileFormat;
.source "SshtoolsPrivateKeyFile.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SshPrivateKeyFile;


# static fields
.field public static BEGIN:Ljava/lang/String; = "---- BEGIN SSHTOOLS ENCRYPTED PRIVATE KEY ----"

.field public static END:Ljava/lang/String; = "---- END SSHTOOLS ENCRYPTED PRIVATE KEY ----"


# instance fields
.field private cookie:I

.field keyblob:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    sget-object v0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->END:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x52f37abe

    .line 49
    iput v0, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->cookie:I

    .line 63
    const-string v0, "Comment"

    invoke-virtual {p0, v0, p3}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->setHeaderValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance p3, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {p3}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 68
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    .line 71
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;->getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    move-result-object v0

    .line 72
    const-string v1, "ssh-dss"

    invoke-virtual {p3, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 73
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 74
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 75
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 76
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 78
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->encryptKey([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;

    .line 83
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    .line 85
    const-string v1, "ssh-rsa"

    invoke-virtual {p3, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 86
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 87
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 88
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 90
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->encryptKey([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_0
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    .line 92
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unsupported private key type!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 96
    invoke-virtual {p3}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 97
    throw p1
.end method

.method constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->BEGIN:Ljava/lang/String;

    sget-object v1, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->END:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/publickey/Base64EncodedFileFormat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x52f37abe

    .line 49
    iput v0, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->cookie:I

    .line 57
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->getKeyBlob([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    return-void
.end method

.method private decryptKey(Ljava/lang/String;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 207
    const-string v0, "3des-cbc"

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v2, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    invoke-direct {v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 212
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->makePassphraseKey(Ljava/lang/String;)[B

    move-result-object p1

    const/16 v3, 0x8

    .line 217
    new-array v3, v3, [B

    .line 219
    const-string v4, "3DES-CBC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    :cond_0
    move-object v2, v3

    .line 223
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v3

    .line 225
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    .line 226
    invoke-virtual {v4}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshCipher;

    const/4 v4, 0x1

    .line 227
    invoke-interface {v0, v4, v2, p1}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 229
    array-length v7, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, v3

    move-object v2, v0

    invoke-interface/range {v2 .. v7}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 231
    new-instance p1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {p1, v3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 234
    :try_start_1
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    iget v0, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->cookie:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    :try_start_2
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 238
    :cond_1
    :try_start_3
    new-instance v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/InvalidPassphraseException;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 241
    :try_start_4
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 242
    throw v0

    .line 244
    :cond_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v0
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 251
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 249
    :try_start_5
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 251
    :goto_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 252
    throw p1
.end method

.method private encryptKey([BLjava/lang/String;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 139
    new-instance v2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 143
    :try_start_0
    const-string v0, "none"

    if-eqz p2, :cond_2

    .line 146
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    const-string v0, "3DES-CBC"

    .line 151
    invoke-direct {p0, p2}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->makePassphraseKey(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v3, 0x8

    .line 152
    new-array v3, v3, [B

    .line 154
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/components/ComponentManager;->getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;->nextBytes([B)V

    .line 157
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v4

    const-string v5, "3des-cbc"

    .line 158
    invoke-virtual {v4, v5}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sshtools/common/ssh/components/SshCipher;

    const/4 v4, 0x0

    .line 159
    invoke-interface {v5, v4, v3, p2}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 161
    invoke-virtual {v1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 164
    iget p2, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->cookie:I

    invoke-virtual {v2, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 165
    invoke-virtual {v2, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 167
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->size()I

    move-result p1

    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result p2

    rem-int/2addr p1, p2

    if-eqz p1, :cond_1

    .line 168
    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result p1

    .line 169
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->size()I

    move-result p2

    invoke-interface {v5}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v0

    rem-int/2addr p2, v0

    sub-int/2addr p1, p2

    .line 170
    new-array p2, p1, [B

    :goto_0
    if-ge v4, p1, :cond_0

    int-to-byte v0, p1

    .line 172
    aput-byte v0, p2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {v2, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 178
    :cond_1
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v6

    .line 179
    array-length v10, v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v6

    invoke-interface/range {v5 .. v10}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    .line 182
    invoke-virtual {v1, v6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 184
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 200
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    .line 189
    :cond_2
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 195
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 197
    :try_start_2
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :goto_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 200
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 201
    throw p1
.end method

.method private makePassphraseKey(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 335
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    const-string v1, "MD5"

    .line 336
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 337
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 339
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v1

    .line 341
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->reset()V

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 343
    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 345
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p1

    const/16 v0, 0x20

    .line 347
    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x10

    .line 348
    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 349
    invoke-static {p1, v2, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public changePassphrase(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->decryptKey(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->encryptKey([BLjava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    return-void
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 357
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

    .line 256
    iget-object v0, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    invoke-virtual {p0, v0}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->formatKey([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "SSHTools"

    return-object v0
.end method

.method public isPassphraseProtected()Z
    .locals 4

    .line 116
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->keyblob:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/4 v1, 0x0

    .line 119
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v2

    .line 121
    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v1

    .line 125
    :cond_0
    :try_start_1
    const-string v3, "3des-cbc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 131
    throw v1

    .line 130
    :catch_0
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v1
.end method

.method public supportsPassphraseChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    const-string v0, "Unsupported private key algorithm type "

    .line 268
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {p0, p1}, Lcom/sshtools/common/publickey/SshtoolsPrivateKeyFile;->decryptKey(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 273
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 275
    const-string v2, "ssh-dss"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 277
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 278
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    .line 279
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 281
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v3

    .line 282
    invoke-virtual {v6, v7, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 285
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;->getPublicKey()Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 286
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v3

    .line 287
    invoke-virtual {v6, v7, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    move-result-object p1

    .line 286
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v0

    .line 291
    :cond_0
    :try_start_1
    const-string v2, "ssh-rsa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 294
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 297
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 299
    new-instance v3, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v3}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 300
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v4

    .line 301
    invoke-virtual {v4, v0, p1}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    move-result-object p1

    .line 300
    invoke-virtual {v3, p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 302
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object p1

    .line 303
    invoke-virtual {p1, v0, v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateKey;

    move-result-object p1

    .line 302
    invoke-virtual {v3, p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v3

    .line 308
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 312
    :try_start_3
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 315
    throw p1
.end method

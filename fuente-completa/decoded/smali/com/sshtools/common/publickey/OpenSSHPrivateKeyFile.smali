.class public Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;
.super Ljava/lang/Object;
.source "OpenSSHPrivateKeyFile.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SshPrivateKeyFile;


# static fields
.field static final AUTH_MAGIC:Ljava/lang/String; = "openssh-key-v1"


# instance fields
.field comment:Ljava/lang/String;

.field formattedkey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p3, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->encryptKey(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->isFormatted([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    return-void

    .line 76
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Formatted key data is not a valid OpenSSH key format"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private curveFromOOID([B)Ljava/lang/String;
    .locals 3

    .line 563
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->oidByteArrayToString([B)Ljava/lang/String;

    move-result-object p1

    .line 564
    const-string v0, "1.2.840.10045.3.1.7"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    const-string p1, "secp256r1"

    return-object p1

    .line 566
    :cond_0
    const-string v0, "1.3.132.0.34"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 567
    const-string p1, "secp384r1"

    return-object p1

    .line 568
    :cond_1
    const-string v0, "1.3.132.0.35"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    const-string p1, "secp521r1"

    return-object p1

    .line 571
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOpenSSHKeyPair([BLjava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 312
    const-string v1, "none"

    const-string v2, "UTF-8"

    new-instance v3, Lcom/sshtools/common/util/ByteArrayReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/16 v4, 0xe

    .line 315
    :try_start_0
    new-array v4, v4, [B

    .line 316
    invoke-virtual {v3, v4}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 318
    const-string v5, "openssh-key-v1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_f

    const-wide/16 v4, 0x1

    .line 322
    invoke-virtual {v3, v4, v5}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 324
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 326
    new-instance v6, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 330
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-nez v7, :cond_8

    .line 331
    const-string v7, "bcrypt"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v0, :cond_6

    .line 339
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "aes256-cbc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v10

    goto :goto_1

    :sswitch_1
    const-string v5, "aes192-cbc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v11

    goto :goto_1

    :sswitch_2
    const-string v5, "aes128-cbc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v12

    goto :goto_1

    :sswitch_3
    const-string v5, "3des-cbc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_4

    if-eq v5, v11, :cond_3

    if-eq v5, v10, :cond_2

    if-eq v5, v9, :cond_1

    goto :goto_2

    .line 350
    :cond_1
    new-instance v13, Lcom/sshtools/common/ssh/components/jce/TripleDesCbc;

    invoke-direct {v13}, Lcom/sshtools/common/ssh/components/jce/TripleDesCbc;-><init>()V

    goto :goto_2

    .line 347
    :cond_2
    new-instance v13, Lcom/sshtools/common/ssh/components/jce/AES256Cbc;

    invoke-direct {v13}, Lcom/sshtools/common/ssh/components/jce/AES256Cbc;-><init>()V

    goto :goto_2

    .line 344
    :cond_3
    new-instance v13, Lcom/sshtools/common/ssh/components/jce/AES192Cbc;

    invoke-direct {v13}, Lcom/sshtools/common/ssh/components/jce/AES192Cbc;-><init>()V

    goto :goto_2

    .line 341
    :cond_4
    new-instance v13, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;

    invoke-direct {v13}, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;-><init>()V

    .line 356
    :goto_2
    invoke-static {v13}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-nez v13, :cond_5

    .line 358
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v5

    .line 359
    invoke-virtual {v5, v4}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/ssh/components/SshCipher;

    move-object v13, v5

    .line 362
    :cond_5
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    .line 363
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v14

    long-to-int v7, v14

    .line 365
    invoke-interface {v13}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v14

    new-array v15, v14, [B

    .line 366
    invoke-interface {v13}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v8

    new-array v9, v8, [B

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    add-int v2, v14, v8

    invoke-static {v0, v5, v2, v7}, Lcom/sshtools/common/util/BCryptKDF;->bcrypt_pbkdf([B[BII)[B

    move-result-object v0

    .line 373
    invoke-static {v0, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    invoke-static {v0, v8, v15, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 376
    invoke-interface {v13, v11, v15, v9}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    goto :goto_3

    .line 336
    :cond_6
    new-instance v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/InvalidPassphraseException;-><init>()V

    throw v0

    .line 332
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported KDF type %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_8
    :goto_3
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v7

    long-to-int v0, v7

    .line 382
    new-instance v2, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    move v5, v12

    :goto_4
    if-ge v5, v0, :cond_9

    .line 386
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7

    .line 387
    invoke-static {v7}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 390
    :cond_9
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    .line 392
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 393
    invoke-interface {v13, v5}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([B)V

    .line 396
    :cond_a
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, v5}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 399
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 400
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    .line 402
    invoke-virtual {v4, v5}, Lcom/sshtools/common/util/UnsignedInteger32;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v12

    :goto_5
    if-ge v4, v0, :cond_d

    .line 407
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_1

    goto :goto_6

    :sswitch_4
    const-string v7, "ecdsa-sha2-nistp521"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v10

    goto :goto_7

    :sswitch_5
    const-string v7, "ecdsa-sha2-nistp384"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x3

    goto :goto_7

    :sswitch_6
    const-string v7, "ecdsa-sha2-nistp256"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v8

    goto :goto_7

    :sswitch_7
    const-string v7, "ssh-ed448"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v12

    goto :goto_7

    :sswitch_8
    const-string v7, "ssh-ed25519"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move v5, v11

    goto :goto_7

    :sswitch_9
    const-string v7, "ssh-rsa"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x6

    goto :goto_7

    :sswitch_a
    const-string v7, "ssh-dss"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_b

    const/4 v5, 0x5

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v5, -0x1

    :goto_7
    packed-switch v5, :pswitch_data_0

    move-object/from16 v7, p0

    .line 470
    :try_start_3
    new-instance v0, Ljava/io/IOException;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_a

    .line 451
    :pswitch_0
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v17

    .line 452
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v18

    .line 453
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    .line 454
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v24

    .line 455
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    .line 456
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v9

    .line 461
    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 462
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 463
    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 464
    invoke-virtual {v5, v13}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    .line 466
    new-instance v16, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v24}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    goto :goto_8

    .line 441
    :pswitch_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v17

    .line 442
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v18

    .line 443
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v19

    .line 444
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v21

    .line 445
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v20

    .line 447
    new-instance v16, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;

    invoke-direct/range {v16 .. v21}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object/from16 v5, v16

    invoke-virtual {v2, v5}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_8

    .line 427
    :pswitch_2
    :try_start_5
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 429
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    .line 430
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7

    .line 432
    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v9

    check-cast v9, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    .line 433
    invoke-virtual {v9}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    check-cast v9, Ljava/security/interfaces/ECPublicKey;

    .line 431
    invoke-static {v7, v9}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->decodePrivateKey([BLjava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v7

    .line 434
    new-instance v9, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;

    invoke-direct {v9, v7, v5}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_8

    :catch_0
    move-exception v0

    .line 436
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 418
    :pswitch_3
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    .line 419
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v7

    .line 420
    new-instance v9, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;

    invoke-direct {v9, v7, v5}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;-><init>([B[B)V

    invoke-virtual {v2, v9}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    goto :goto_8

    .line 412
    :pswitch_4
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    .line 413
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    .line 414
    new-instance v7, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;

    invoke-direct {v7, v5}, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;-><init>([B)V

    invoke-virtual {v2, v7}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 475
    :goto_8
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    if-lt v5, v8, :cond_c

    .line 476
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v7, p0

    :try_start_7
    iput-object v5, v7, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    goto :goto_9

    :cond_c
    move-object/from16 v7, p0

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 470
    :goto_a
    const-string v4, "Unsupported public key type \'%s\' in OpenSSH formatted private key"

    .line 472
    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v2

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 471
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    move-object/from16 v7, p0

    .line 482
    :try_start_8
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 484
    :try_start_9
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 496
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object v2

    :cond_e
    move-object/from16 v7, p0

    .line 403
    :try_start_a
    new-instance v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    invoke-direct {v0}, Lcom/sshtools/common/publickey/InvalidPassphraseException;-><init>()V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v7, p0

    .line 482
    :goto_b
    :try_start_b
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 483
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object/from16 v7, p0

    :goto_c
    move-object v1, v0

    .line 326
    :try_start_c
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_d

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    :cond_f
    move-object/from16 v7, p0

    .line 319
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected key format %s"

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_d .. :try_end_d} :catch_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_10

    :catchall_6
    move-exception v0

    move-object/from16 v7, p0

    .line 491
    :goto_e
    :try_start_e
    instance-of v1, v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    if-eqz v1, :cond_10

    .line 492
    check-cast v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    throw v0

    .line 494
    :cond_10
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    move-object/from16 v7, p0

    .line 489
    :goto_f
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v7, p0

    .line 487
    :goto_10
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    move-exception v0

    .line 496
    invoke-virtual {v3}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 497
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xe8f1016 -> :sswitch_3
        0x31898f9f -> :sswitch_2
        0x3d26eef2 -> :sswitch_1
        0x6b7225bb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x72868b81 -> :sswitch_a
        -0x72865705 -> :sswitch_9
        -0x55906c0a -> :sswitch_8
        0x14f4b0b4 -> :sswitch_7
        0x55b5c26d -> :sswitch_6
        0x55b5c689 -> :sswitch_5
        0x55b5cd4e -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isFormatted([B)Z
    .locals 3

    .line 789
    :try_start_0
    new-instance v0, Ljava/io/StringReader;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 791
    new-instance p0, Lcom/sshtools/common/publickey/PEMReader;

    invoke-direct {p0, v0}, Lcom/sshtools/common/publickey/PEMReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPassphraseProtectedOpenSSHKeyFile()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/io/StringReader;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v1, Lcom/sshtools/common/publickey/PEMReader;

    invoke-direct {v1, v0}, Lcom/sshtools/common/publickey/PEMReader;-><init>(Ljava/io/Reader;)V

    .line 118
    invoke-virtual {v1}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPENSSH PRIVATE KEY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 120
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/sshtools/common/publickey/PEMReader;->decryptPayload(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const/16 v1, 0xe

    .line 122
    :try_start_0
    new-array v1, v1, [B

    .line 123
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 125
    const-string v3, "openssh-key-v1"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v2

    :cond_0
    const-wide/16 v1, 0x1

    .line 129
    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 131
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v1, 0x1

    .line 133
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return v1

    :catchall_0
    move-exception v1

    .line 120
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :cond_1
    return v2
.end method

.method private pad(Lcom/sshtools/common/util/ByteArrayWriter;I)V
    .locals 2

    const/4 v0, 0x0

    .line 303
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayWriter;->size()I

    move-result v1

    rem-int/2addr v1, p2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 304
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeOpenSSHKeyPair(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 175
    const-string v3, "openssh-key-v1"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    const/16 v5, 0x10

    .line 180
    new-array v6, v5, [B

    .line 181
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 184
    new-instance v7, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v7}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 186
    const-string v8, "none"

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 187
    const-string v9, "aes256-ctr"

    .line 188
    const-string v10, "bcrypt"

    .line 189
    invoke-virtual {v7, v6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 190
    invoke-virtual {v7, v5}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    goto :goto_0

    :cond_0
    move-object v9, v8

    move-object v10, v9

    .line 193
    :goto_0
    invoke-virtual {v0, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    const/4 v10, 0x1

    .line 197
    invoke-virtual {v0, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v11

    invoke-interface {v11}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 200
    new-instance v11, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v11}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 201
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v12

    invoke-virtual {v12}, Ljava/security/SecureRandom;->nextInt()I

    move-result v12

    const v13, 0xfffffff

    and-int/2addr v12, v13

    .line 203
    new-instance v13, Lcom/sshtools/common/util/UnsignedInteger32;

    int-to-long v14, v12

    invoke-direct {v13, v14, v15}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {v11, v13}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 204
    new-instance v12, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-direct {v12, v14, v15}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v12

    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshPrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v12

    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 208
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "ecdsa-sha2-nistp521"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_2

    :sswitch_1
    const-string v10, "ecdsa-sha2-nistp384"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x5

    goto :goto_2

    :sswitch_2
    const-string v10, "ecdsa-sha2-nistp256"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x6

    goto :goto_2

    :sswitch_3
    const-string v10, "ssh-ed448"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v3

    goto :goto_2

    :sswitch_4
    const-string v13, "ssh-ed25519"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_2

    :sswitch_5
    const-string v10, "ssh-rsa"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x2

    goto :goto_2

    :sswitch_6
    const-string v10, "ssh-dss"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x3

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v10, -0x1

    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 258
    new-instance v0, Ljava/io/IOException;

    goto/16 :goto_6

    .line 252
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-virtual {v10}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getCurve()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-virtual {v10}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getPublicOctet()[B

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 254
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v10

    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshPrivateKey;->getJCEPrivateKey()Ljava/security/PrivateKey;

    move-result-object v10

    check-cast v10, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v10}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    goto/16 :goto_3

    .line 241
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    .line 242
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 243
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 244
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 245
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 246
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;

    invoke-virtual {v10}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 229
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    .line 230
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v12

    check-cast v12, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;

    .line 231
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 232
    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 233
    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 234
    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 235
    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 236
    invoke-interface {v12}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    goto :goto_3

    .line 219
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKey;

    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PublicKey;->getA()[B

    move-result-object v10

    .line 220
    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 221
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v12

    check-cast v12, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;

    invoke-virtual {v12}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->getSeed()[B

    move-result-object v12

    const/16 v13, 0x40

    .line 222
    invoke-virtual {v11, v13}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 223
    invoke-virtual {v11, v12}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    .line 224
    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    goto :goto_3

    .line 211
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKey;

    invoke-interface {v10}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKey;->getA()[B

    move-result-object v10

    .line 212
    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPrivateKey()Lcom/sshtools/common/ssh/components/SshPrivateKey;

    move-result-object v10

    check-cast v10, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;

    invoke-virtual {v10}, Lcom/sshtools/common/ssh/components/jce/SshEd448PrivateKeyJCE;->getSeed()[B

    move-result-object v10

    .line 214
    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 263
    :goto_3
    iget-object v10, v1, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 264
    const-string v10, "%s@%s"

    const-string v12, "user.name"

    .line 265
    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v12, v13}, [Ljava/lang/Object;

    move-result-object v12

    .line 264
    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 267
    :cond_2
    invoke-virtual {v11, v10}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 270
    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 272
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedSsh2CiphersCS()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v8

    .line 273
    invoke-virtual {v8, v9}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v8

    check-cast v8, Lcom/sshtools/common/ssh/components/SshCipher;

    .line 275
    invoke-interface {v8}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v9

    new-array v10, v9, [B

    .line 276
    invoke-interface {v8}, Lcom/sshtools/common/ssh/components/SshCipher;->getKeyLength()I

    move-result v12

    new-array v13, v12, [B

    .line 278
    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    add-int v4, v9, v12

    invoke-static {v2, v6, v4, v5}, Lcom/sshtools/common/util/BCryptKDF;->bcrypt_pbkdf([B[BII)[B

    move-result-object v2

    .line 281
    invoke-static {v2, v3, v13, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    invoke-static {v2, v12, v10, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    invoke-interface {v8, v3, v10, v13}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 286
    invoke-interface {v8}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v2

    invoke-direct {v1, v11, v2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->pad(Lcom/sshtools/common/util/ByteArrayWriter;I)V

    .line 287
    invoke-virtual {v11}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    .line 288
    invoke-interface {v8, v2}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([B)V

    .line 289
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    goto :goto_5

    :cond_3
    const/16 v2, 0x8

    .line 292
    invoke-direct {v1, v11, v2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->pad(Lcom/sshtools/common/util/ByteArrayWriter;I)V

    .line 293
    invoke-virtual {v11}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    :goto_5
    :try_start_2
    invoke-virtual {v11}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-void

    .line 258
    :goto_6
    :try_start_3
    const-string v2, "Unsupported public key type %s for OpenSSH private key file format"

    .line 260
    invoke-virtual/range {p2 .. p2}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v3

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 259
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 200
    :try_start_4
    invoke-virtual {v11}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 184
    :try_start_6
    invoke-virtual {v7}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v2

    :sswitch_data_0
    .sparse-switch
        -0x72868b81 -> :sswitch_6
        -0x72865705 -> :sswitch_5
        -0x55906c0a -> :sswitch_4
        0x14f4b0b4 -> :sswitch_3
        0x55b5c26d -> :sswitch_2
        0x55b5c689 -> :sswitch_1
        0x55b5cd4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
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

    .line 779
    invoke-virtual {p0, p1}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    .line 780
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->encryptKey(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    return-void
.end method

.method public encryptKey(Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 757
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 759
    new-instance v2, Lcom/sshtools/common/publickey/PEMWriter;

    invoke-direct {v2}, Lcom/sshtools/common/publickey/PEMWriter;-><init>()V

    .line 760
    const-string v3, "OPENSSH PRIVATE KEY"

    invoke-virtual {v2, v3}, Lcom/sshtools/common/publickey/PEMWriter;->setType(Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, v0, p1, p2}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->writeOpenSSHKeyPair(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshKeyPair;Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lcom/sshtools/common/publickey/PEMWriter;->write(Ljava/io/Writer;[B)V

    .line 764
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 757
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 766
    :goto_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->comment:Ljava/lang/String;

    return-object v0
.end method

.method getDSAKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    .line 624
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 625
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    const/4 v0, 0x2

    .line 627
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 628
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    .line 630
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 631
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 633
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 634
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 636
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 637
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 639
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 640
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/math/BigInteger;-><init>([B)V

    .line 642
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 643
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p1

    invoke-direct {v5, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 645
    new-instance p1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 646
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    move-result-object v0

    .line 647
    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 649
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/common/ssh/components/ComponentManager;->createDsaPrivateKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 653
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0
.end method

.method getECKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    .line 529
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 530
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    const/4 v0, 0x2

    .line 532
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 533
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    const/4 v0, 0x4

    .line 535
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 536
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v0

    const/16 v1, 0xa0

    .line 538
    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 539
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    const/4 v1, 0x6

    .line 540
    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 541
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    const/16 v2, 0xa1

    .line 543
    invoke-virtual {p1, v2}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 544
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    const/4 v2, 0x3

    .line 545
    invoke-virtual {p1, v2}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 546
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p1

    .line 548
    invoke-direct {p0, v1}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->curveFromOOID([B)Ljava/lang/String;

    move-result-object v1

    .line 549
    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->decodeKey([BLjava/lang/String;)Ljava/security/interfaces/ECPublicKey;

    move-result-object p1

    .line 550
    invoke-static {v0, p1}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->decodePrivateKey([BLjava/security/interfaces/ECPublicKey;)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    .line 552
    new-instance v2, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {v2}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 553
    new-instance v3, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;

    invoke-direct {v3, v0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;-><init>(Ljava/security/PrivateKey;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V

    .line 554
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-direct {v0, p1, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 558
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFormattedKey()[B
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    return-object v0
.end method

.method getRSAKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x30

    .line 578
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 580
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getLength()I

    const/4 v0, 0x2

    .line 581
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 583
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    .line 584
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 586
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 587
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 589
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 590
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 592
    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 593
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 595
    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 596
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 598
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 599
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 601
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 602
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 604
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 605
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNReader;->assertByte(I)V

    .line 607
    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNReader;->getData()[B

    move-result-object p1

    invoke-direct {v9, p1}, Ljava/math/BigInteger;-><init>([B)V

    .line 609
    new-instance p1, Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-direct {p1}, Lcom/sshtools/common/ssh/components/SshKeyPair;-><init>()V

    .line 610
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPublicKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 611
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual/range {v1 .. v9}, Lcom/sshtools/common/ssh/components/ComponentManager;->createRsaPrivateCrtKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->setPrivateKey(Lcom/sshtools/common/ssh/components/SshPrivateKey;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 616
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, "OpenSSH"

    return-object v0
.end method

.method public isPassphraseProtected()Z
    .locals 5

    const/4 v0, 0x1

    .line 100
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v2, Lcom/sshtools/common/publickey/PEMReader;

    invoke-direct {v2, v1}, Lcom/sshtools/common/publickey/PEMReader;-><init>(Ljava/io/Reader;)V

    .line 103
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->isPassphraseProtectedOpenSSHKeyFile()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 106
    :cond_0
    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getHeader()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "DEK-Info"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public oidByteArrayToString([B)Ljava/lang/String;
    .locals 7

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    array-length v1, p1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    .line 504
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 505
    aget-byte v5, p1, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_1
    if-ge p1, v1, :cond_3

    if-nez p1, :cond_1

    .line 510
    aget v4, v2, v3

    rem-int/lit8 v5, v4, 0x28

    sub-int/2addr v4, v5

    .line 511
    div-int/lit8 v4, v4, 0x28

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%d.%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 514
    :cond_1
    aget v4, v2, p1

    const-string v5, ".%d"

    const/16 v6, 0x80

    if-ge v4, v6, :cond_2

    .line 515
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, -0x80

    mul-int/2addr v4, v6

    add-int/lit8 p1, p1, 0x1

    .line 517
    aget v6, v2, p1

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 523
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public supportsPassphraseChange()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    const-string v0, "Unsupported type: "

    .line 148
    new-instance v1, Ljava/io/StringReader;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->formattedkey:[B

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/sshtools/common/publickey/PEMReader;

    invoke-direct {v2, v1}, Lcom/sshtools/common/publickey/PEMReader;-><init>(Ljava/io/Reader;)V

    .line 150
    invoke-virtual {v2, p1}, Lcom/sshtools/common/publickey/PEMReader;->decryptPayload(Ljava/lang/String;)[B

    move-result-object v1

    .line 152
    new-instance v3, Lcom/sshtools/common/util/SimpleASNReader;

    invoke-direct {v3, v1}, Lcom/sshtools/common/util/SimpleASNReader;-><init>([B)V

    .line 155
    :try_start_0
    const-string v4, "DSA PRIVATE KEY"

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p0, v3}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->getDSAKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    return-object p1

    .line 157
    :cond_0
    const-string v4, "RSA PRIVATE KEY"

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    invoke-virtual {p0, v3}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->getRSAKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    return-object p1

    .line 159
    :cond_1
    const-string v4, "EC PRIVATE KEY"

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 160
    invoke-virtual {p0, v3}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->getECKeyPair(Lcom/sshtools/common/util/SimpleASNReader;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    return-object p1

    .line 161
    :cond_2
    const-string v3, "OPENSSH PRIVATE KEY"

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-direct {p0, v1, p1}, Lcom/sshtools/common/publickey/OpenSSHPrivateKeyFile;->getOpenSSHKeyPair([BLjava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object p1

    return-object p1

    .line 164
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {v2}, Lcom/sshtools/common/publickey/PEMReader;->getType()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 167
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    new-instance v0, Lcom/sshtools/common/publickey/InvalidPassphraseException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/publickey/InvalidPassphraseException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method writeDSAKeyPair(Lcom/sshtools/common/util/SimpleASNWriter;Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;Lcom/sshtools/common/ssh/components/SshDsaPublicKey;)V
    .locals 3

    .line 698
    new-instance v0, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v1, 0x2

    .line 700
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    const/4 v2, 0x1

    .line 702
    new-array v2, v2, [B

    .line 703
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 704
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 705
    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 706
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 707
    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 708
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 709
    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 710
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 711
    invoke-interface {p3}, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 712
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 713
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshDsaPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 715
    invoke-virtual {v0}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p2

    const/16 p3, 0x30

    .line 717
    invoke-virtual {p1, p3}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 718
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    return-void
.end method

.method writeECDSAKeyPair(Lcom/sshtools/common/util/SimpleASNWriter;Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;)V
    .locals 3

    .line 660
    new-instance v0, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v1, 0x2

    .line 662
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    const/4 v1, 0x1

    .line 664
    new-array v2, v1, [B

    .line 665
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    const/4 v2, 0x4

    .line 667
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 668
    invoke-virtual {p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPrivateKey;->getJCEPrivateKey()Ljava/security/PrivateKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p2}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    const/16 p2, 0xa0

    .line 670
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 672
    new-instance p2, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {p2}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v2, 0x6

    .line 673
    invoke-virtual {p2, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 674
    invoke-virtual {p3}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getOid()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 675
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p2

    .line 676
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    const/16 p2, 0xa1

    .line 678
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 679
    new-instance p2, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {p2}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v2, 0x3

    .line 680
    invoke-virtual {p2, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 681
    invoke-virtual {p3}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getPublicOctet()[B

    move-result-object p3

    .line 682
    array-length v2, p3

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeLength(I)V

    const/4 v1, 0x0

    .line 683
    invoke-virtual {p2, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 684
    invoke-virtual {p2, p3}, Lcom/sshtools/common/util/SimpleASNWriter;->write([B)V

    .line 685
    invoke-virtual {p2}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p2

    .line 686
    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    const/16 p2, 0x30

    .line 688
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 689
    invoke-virtual {v0}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    return-void
.end method

.method writeRSAKeyPair(Lcom/sshtools/common/util/SimpleASNWriter;Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;)V
    .locals 3

    .line 726
    new-instance v0, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v1, 0x2

    .line 728
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    const/4 v2, 0x1

    .line 730
    new-array v2, v2, [B

    .line 731
    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 732
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 733
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 734
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 735
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 736
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 737
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 738
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 739
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 740
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 741
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 742
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 743
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 744
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 745
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 746
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 747
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 749
    invoke-virtual {v0}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p2

    const/16 v0, 0x30

    .line 751
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 752
    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    return-void
.end method

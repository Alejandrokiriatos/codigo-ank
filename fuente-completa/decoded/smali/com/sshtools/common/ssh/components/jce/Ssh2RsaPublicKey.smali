.class public Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;
.super Ljava/lang/Object;
.source "Ssh2RsaPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshRsaPublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey$Ssh2RsaPublicKeyFactory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "ssh-rsa"


# instance fields
.field protected pubKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const-string v0, "RSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 90
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 90
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 93
    :goto_0
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p1, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 94
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method private verifyJCESignature([BLjava/lang/String;[BZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 242
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "rsa-sha2-256"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rsa-sha2-512"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    const-string v0, "SHA1WithRSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 257
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 258
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_1
    const-string v0, "SHA512WithRSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_2

    .line 251
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_2
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_3
    const-string v0, "SHA256WithRSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_4

    .line 245
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_4
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 246
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 264
    invoke-virtual {v0, p3}, Ljava/security/Signature;->update([B)V

    .line 266
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getSignatureLength()I

    move-result v1

    .line 267
    array-length v2, p1

    .line 270
    const-string v3, ") but got "

    const-string v4, " (modulus="

    const/4 v5, 0x0

    if-eqz p4, :cond_6

    .line 271
    array-length v6, p1

    if-ge v6, v1, :cond_6

    .line 272
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    array-length v7, p1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "No Padding Detected: Expected signature length of "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    :cond_5
    new-array v6, v1, [B

    .line 276
    array-length v7, p1

    sub-int v7, v1, v7

    array-length v8, p1

    invoke-static {p1, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    move-object v6, p1

    move v7, v5

    .line 285
    :goto_1
    :try_start_0
    invoke-virtual {v0, v6}, Ljava/security/Signature;->verify([B)Z

    move-result p4
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz p4, :cond_a

    .line 290
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 291
    const-string p4, "Signature failed. Falling back to raw signature data."

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    move p4, v5

    :goto_2
    if-nez p4, :cond_9

    if-eqz v7, :cond_8

    .line 297
    invoke-direct {p0, p1, p2, p3, v5}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->verifyJCESignature([BLjava/lang/String;[BZ)Z

    move-result p4

    :cond_8
    if-nez p4, :cond_9

    .line 300
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "maverick.verbose"

    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 301
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "JCE Reports Invalid Signature: Expected signature length of "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return p4

    .line 288
    :cond_a
    throw v0
.end method


# virtual methods
.method public doPublic(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 332
    const-string v0, "RSA"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 333
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 334
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    .line 339
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    const/4 v4, 0x1

    .line 338
    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 340
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 341
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x0

    aget-byte v5, p1, v3

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    if-nez v5, :cond_2

    .line 342
    array-length v5, p1

    sub-int/2addr v5, v4

    goto :goto_1

    :cond_2
    array-length v5, p1

    .line 341
    :goto_1
    invoke-virtual {v1, p1, v3, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p1

    .line 345
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 346
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "JCE provider requires BouncyCastle provider for RSA/NONE/PKCS1Padding component. Add bcprov.jar to your classpath or configure an alternative provider for this algorithm"

    const/4 v1, 0x5

    invoke-direct {p1, v0, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 349
    :cond_3
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 309
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 312
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 197
    const-string v0, "ssh-rsa"

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 112
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 117
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 119
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 121
    :try_start_2
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Failed to encoded key data"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 128
    :catch_2
    throw v1
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 98
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSignatureLength()I
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 229
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 403
    const-string v0, "ssh-rsa"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 150
    const-string v0, "RSA"

    .line 0
    const-string v1, "The encoded key is not "

    .line 150
    new-instance v2, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v2, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    const/4 p1, 0x5

    .line 158
    :try_start_0
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 160
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 165
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 166
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 167
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v1, p3, p2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-nez p2, :cond_0

    .line 172
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    .line 174
    invoke-static {v0, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 178
    :goto_0
    invoke-virtual {p2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->pubKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    :catch_0
    move-exception p2

    .line 181
    :try_start_2
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Failed to obtain RSA key instance from JCE"

    invoke-direct {p3, v0, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3

    .line 161
    :cond_1
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 186
    :catch_1
    :try_start_3
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "Failed to read encoded key data"

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    :goto_1
    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 190
    throw p1
.end method

.method public test()Ljava/lang/String;
    .locals 4

    .line 373
    const-string v0, "SHA1WithRSA"

    const-string v1, "RSA"

    :try_start_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 374
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    goto :goto_0

    .line 376
    :cond_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 374
    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 380
    :goto_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 381
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    goto :goto_1

    .line 385
    :cond_1
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 382
    invoke-static {v1, v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 388
    :goto_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_2

    .line 389
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    goto :goto_2

    .line 394
    :cond_2
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 396
    :goto_2
    invoke-virtual {v2}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 398
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 204
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 205
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->reset()V

    .line 211
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 212
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 213
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, p1, v1, p2, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->verifyJCESignature([BLjava/lang/String;[BZ)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 216
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 217
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 222
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 v0, 0x10

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.class public Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;
.super Ljava/lang/Object;
.source "Ssh2RsaPrivateCrtKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshRsaPrivateCrtKey;


# instance fields
.field protected prv:Ljava/security/interfaces/RSAPrivateCrtKey;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "RSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 62
    :goto_0
    new-instance v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 65
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-void
.end method


# virtual methods
.method public doPrivate(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 71
    const-string v0, "RSA"

    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 77
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    .line 79
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 179
    :cond_0
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    if-eqz v0, :cond_1

    .line 180
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;

    .line 181
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz p1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 162
    const-string v0, "ssh-rsa"

    return-object v0
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateExponent()Ljava/math/BigInteger;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public sign([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->sign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    const-string v0, "SHA1WithRSA"

    const-string v1, "SHA512WithRSA"

    const-string v2, "SHA256WithRSA"

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v3, "rsa-sha2-256"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "Failed to sign data! "

    if-nez v3, :cond_3

    const-string v2, "rsa-sha2-512"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 148
    :try_start_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-nez p2, :cond_0

    .line 149
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 152
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 154
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 156
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 136
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-nez p2, :cond_2

    .line 137
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_1

    .line 138
    :cond_2
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 140
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 142
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 144
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_3
    :try_start_2
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-nez p2, :cond_4

    .line 125
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    goto :goto_2

    .line 126
    :cond_4
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p2

    .line 127
    :goto_2
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPrivateCrtKey;->prv:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 128
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 130
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 132
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

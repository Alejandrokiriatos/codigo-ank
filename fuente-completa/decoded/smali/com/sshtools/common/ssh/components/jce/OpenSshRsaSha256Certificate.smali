.class public Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;
.super Lcom/sshtools/common/publickey/OpenSshCertificate;
.source "OpenSshRsaSha256Certificate.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshRsaPublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate$OpenSshRsaSha256CertificateFactory;
    }
.end annotation


# static fields
.field public static final SSH_RSA_SHA2_256_CERT_V01:Ljava/lang/String; = "rsa-sha2-256-cert-v01@openssh.com"


# instance fields
.field nonce:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 91
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 78
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method


# virtual methods
.method protected decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 103
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 106
    new-instance v1, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-direct {v1, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to obtain RSA public key instance"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method public doPublic(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->doPublic(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 134
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    if-eqz v0, :cond_0

    .line 136
    :try_start_0
    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->getFingerprint()Ljava/lang/String;

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

    .line 119
    const-string v0, "rsa-sha2-256-cert-v01@openssh.com"

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getBitLength()I

    move-result v0

    return v0
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 123
    const-string v0, "ssh-rsa-cert-v01@openssh.com"

    return-object v0
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 86
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SecurityLevel;->ordinal()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 82
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 195
    const-string v0, "rsa-sha2-256"

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->getFingerprint()Ljava/lang/String;

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

.method public test()Ljava/lang/String;
    .locals 5

    .line 165
    const-string v0, "RSA_Cipher"

    const-string v1, "SHA1WithRSA"

    const-string v2, "RSA"

    :try_start_0
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-nez v3, :cond_0

    .line 166
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    .line 166
    invoke-static {v2, v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 172
    :goto_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-nez v4, :cond_1

    .line 173
    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    goto :goto_1

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 174
    invoke-static {v2, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 180
    :goto_1
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 181
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    goto :goto_2

    .line 186
    :cond_2
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 183
    invoke-static {v1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 188
    :goto_2
    invoke-virtual {v3}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

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

    .line 190
    :goto_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method

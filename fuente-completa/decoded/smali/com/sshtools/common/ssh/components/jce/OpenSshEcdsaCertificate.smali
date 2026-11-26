.class public Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;
.super Lcom/sshtools/common/publickey/OpenSshCertificate;
.source "OpenSshEcdsaCertificate.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# instance fields
.field curve:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nonce:[B

.field spec:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->name:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->spec:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->curve:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lcom/sshtools/common/publickey/OpenSshCertificate;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->name:Ljava/lang/String;

    .line 59
    new-instance p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method


# virtual methods
.method protected decodePublicKey(Lcom/sshtools/common/util/ByteArrayReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->curve:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->getCurveParams(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->fromByteArray([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 82
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 83
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 87
    :goto_0
    new-instance v2, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    new-instance v3, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v3, p1, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    .line 88
    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->curve:Ljava/lang/String;

    invoke-direct {v2, p1, v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, "Failed to obtain ECDSA public key instance"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 152
    :cond_2
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;

    .line 153
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    if-nez v2, :cond_3

    .line 154
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    if-eqz p1, :cond_4

    return v1

    .line 156
    :cond_3
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getBitLength()I

    move-result v0

    return v0
.end method

.method public getCurveParams(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    .line 118
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 123
    :goto_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v1, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    .line 123
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 125
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getJCEPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 67
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SecurityLevel;->ordinal()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getPublicOctet()[B
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getPublicOctet()[B

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 63
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->STRONG:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public test()Ljava/lang/String;
    .locals 3

    .line 170
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 172
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->spec:Ljava/lang/String;

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->spec:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->spec:Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 180
    :goto_1
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 182
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

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

    .line 112
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/OpenSshEcdsaCertificate;->publicKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->verifySignature([B[B)Z

    move-result p1

    return p1
.end method

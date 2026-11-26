.class public Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;
.super Ljava/lang/Object;
.source "Ssh2EcdsaSha2NistPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPublicKey;


# instance fields
.field curve:Ljava/lang/String;

.field name:Ljava/lang/String;

.field nistpCurve:Ljava/lang/String;

.field protected pub:Ljava/security/interfaces/ECPublicKey;

.field spec:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->nistpCurve:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    .line 61
    const-string p1, "prime256v1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "nistp256"

    const-string v1, "secp256r1"

    if-nez p1, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    .line 66
    :cond_0
    const-string p1, "secp384r1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nistp384"

    if-nez v0, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    const-string p1, "secp521r1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "nistp521"

    if-nez v0, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported curve name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    .line 73
    const-string p1, "ecdsa-sha2-nistp521"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->nistpCurve:Ljava/lang/String;

    .line 75
    const-string p1, "SHA512withECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    return-void

    .line 67
    :cond_4
    :goto_1
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    .line 68
    const-string p1, "ecdsa-sha2-nistp384"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->nistpCurve:Ljava/lang/String;

    .line 70
    const-string p1, "SHA384withECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    return-void

    .line 62
    :cond_5
    :goto_2
    iput-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->nistpCurve:Ljava/lang/String;

    .line 64
    const-string p1, "ecdsa-sha2-nistp256"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    .line 65
    const-string p1, "SHA256withECDSA"

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 267
    :cond_1
    instance-of v2, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    if-nez v2, :cond_2

    return v1

    .line 270
    :cond_2
    check-cast p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;

    .line 271
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    if-nez v2, :cond_3

    .line 272
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_4

    return v1

    .line 274
    :cond_3
    iget-object p1, p1, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getCurve()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->nistpCurve:Ljava/lang/String;

    return-object v0
.end method

.method public getCurveParams(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;
    .locals 2

    .line 234
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 236
    invoke-static {v0, v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 239
    :goto_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v1, p1}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 240
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 241
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

.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 143
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getPublicOctet()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 150
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v1

    .line 152
    :catchall_0
    :try_start_2
    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, "Failed to encode public key"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v1

    .line 156
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 159
    :catch_1
    throw v1
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getAlgorithm()Ljava/lang/String;

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

    .line 169
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method public getOid()[B
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->getOidBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x9c4

    return v0
.end method

.method public getPublicOctet()[B
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 164
    invoke-static {v0, v1}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->toByteArray(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

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

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public init([BII)Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 99
    const-string v0, "Failed to decode public key blob"

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    .line 103
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 105
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    .line 106
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->curve:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->getCurveParams(Ljava/lang/String;)Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    .line 110
    invoke-virtual {p2}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sshtools/common/ssh/components/jce/ECUtils;->fromByteArray([BLjava/security/spec/EllipticCurve;)Ljava/security/spec/ECPoint;

    move-result-object p1

    .line 112
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p3

    if-nez p3, :cond_0

    .line 113
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p3

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object p3

    .line 115
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 114
    invoke-static {p3, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p3

    .line 116
    :goto_0
    new-instance v2, Ljava/security/spec/ECPublicKeySpec;

    invoke-direct {v2, p1, p2}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    :catchall_0
    move-exception p1

    const/4 p2, 0x0

    .line 119
    :try_start_1
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 120
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const/4 p2, 0x5

    invoke-direct {p1, v0, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 123
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 124
    throw p1
.end method

.method public test()Ljava/lang/String;
    .locals 3

    .line 287
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getECDSAAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 289
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 293
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    .line 295
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 294
    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 297
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

    .line 299
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 175
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    .line 180
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int v1, v1

    .line 181
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 182
    new-array p1, v1, [B

    .line 183
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 185
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 187
    iget-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    goto :goto_0

    .line 188
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The encoded signature is not ECDSA"

    const/4 v1, 0x5

    invoke-direct {p1, p2, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 200
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 201
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    .line 202
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    .line 204
    new-instance v2, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/4 v3, 0x2

    .line 205
    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 206
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 207
    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 208
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 210
    new-instance p1, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {p1}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/16 v0, 0x30

    .line 211
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 212
    invoke-virtual {v2}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 214
    invoke-virtual {p1}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object p1

    .line 216
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->spec:Ljava/lang/String;

    .line 218
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 217
    invoke-static {v0, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 219
    :goto_1
    iget-object v2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;->pub:Ljava/security/interfaces/ECPublicKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 220
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 222
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 226
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return p1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 196
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 197
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 224
    :goto_2
    :try_start_4
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 v1, 0x10

    invoke-direct {p2, v1, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 226
    :goto_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 227
    throw p1
.end method

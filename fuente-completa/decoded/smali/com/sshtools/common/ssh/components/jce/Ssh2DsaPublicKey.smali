.class public Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;
.super Ljava/lang/Object;
.source "Ssh2DsaPublicKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshDsaPublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey$Ssh2DsaPublicKeyFactory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "ssh-dss"


# instance fields
.field protected pubkey:Ljava/security/interfaces/DSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "DSA"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_0

    .line 93
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 96
    :goto_0
    new-instance v1, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v1, p4, p1, p2, p3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 97
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/DSAPublicKey;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 299
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/SshDsaPublicKey;

    if-eqz v0, :cond_0

    .line 301
    :try_start_0
    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getFingerprint()Ljava/lang/String;

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

    .line 111
    const-string v0, "ssh-dss"

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

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

    .line 137
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getEncodingAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 142
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 143
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 144
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBigInteger(Ljava/math/BigInteger;)V

    .line 146
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
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

    .line 148
    :try_start_2
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Failed to encoded DSA key"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 155
    :catch_2
    throw v1
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getAlgorithm()Ljava/lang/String;

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

    .line 165
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getJCEPublicKey()Ljava/security/interfaces/DSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPublicKey()Ljava/security/interfaces/DSAPublicKey;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 79
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 360
    const-string v0, "ssh-dss"

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getFingerprint()Ljava/lang/String;

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 182
    const-string v0, "DSA"

    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v1, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    const/4 p1, 0x5

    .line 188
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p2

    .line 190
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 195
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p2

    .line 196
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object p3

    .line 197
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    .line 198
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    .line 199
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, v3, p2, p3, v2}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 202
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    if-nez p2, :cond_0

    .line 203
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object p2

    .line 204
    invoke-static {v0, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object p2

    .line 206
    :goto_0
    invoke-virtual {p2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    check-cast p2, Ljava/security/interfaces/DSAPublicKey;

    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    .line 191
    :cond_1
    :try_start_1
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "The encoded key is not DSA"

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 209
    :try_start_2
    new-instance p3, Lcom/sshtools/common/ssh/SshException;

    const-string v0, "Failed to obtain DSA key instance from JCE"

    invoke-direct {p3, v0, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    :goto_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 215
    throw p1
.end method

.method public test()Ljava/lang/String;
    .locals 3

    .line 339
    const-string v0, "SHA1WithDSA"

    const-string v1, "DSA"

    :try_start_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_0

    .line 340
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    goto :goto_0

    .line 342
    :cond_0
    invoke-static {v1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 340
    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 346
    :goto_0
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-nez v2, :cond_1

    .line 347
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    goto :goto_1

    .line 352
    :cond_1
    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    .line 349
    invoke-static {v0, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 354
    :goto_1
    invoke-virtual {v1}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 356
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 236
    const-string v0, " numSize="

    const-string v1, " len="

    const-string v2, "SHA1WithDSA"

    .line 0
    const-string v3, "S: "

    const-string v4, "R: "

    const-string v5, "Encoded Signature: "

    .line 236
    :try_start_0
    array-length v6, p1

    const/16 v7, 0x28

    if-eq v6, v7, :cond_1

    array-length v6, p1

    const/16 v7, 0x38

    if-eq v6, v7, :cond_1

    array-length v6, p1

    const/16 v7, 0x40

    if-eq v6, v7, :cond_1

    .line 240
    new-instance v6, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v6, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :try_start_1
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 245
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, p1}, Ljava/lang/String;-><init>([B)V

    .line 247
    const-string p1, "ssh-dss"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    :try_start_2
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 248
    :cond_0
    :try_start_3
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The encoded signature is not DSA"

    const/4 v0, 0x5

    invoke-direct {p1, p2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 255
    :try_start_4
    invoke-virtual {v6}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 256
    throw p1

    .line 259
    :cond_1
    :goto_0
    array-length v6, p1

    const/4 v7, 0x2

    div-int/2addr v6, v7

    .line 261
    new-instance v8, Ljava/math/BigInteger;

    const/4 v9, 0x0

    invoke-static {p1, v9, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v11, v10}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v8}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 262
    new-instance v10, Ljava/math/BigInteger;

    array-length v12, p1

    invoke-static {p1, v6, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-direct {v10, v11, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 264
    new-instance v10, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v10}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    .line 265
    invoke-virtual {v10, v7}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 266
    invoke-virtual {v10, v8}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 267
    invoke-virtual {v10, v7}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 268
    invoke-virtual {v10, p1}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 270
    new-instance v7, Lcom/sshtools/common/util/SimpleASNWriter;

    invoke-direct {v7}, Lcom/sshtools/common/util/SimpleASNWriter;-><init>()V

    const/16 v11, 0x30

    .line 271
    invoke-virtual {v7, v11}, Lcom/sshtools/common/util/SimpleASNWriter;->writeByte(I)V

    .line 272
    invoke-virtual {v10}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sshtools/common/util/SimpleASNWriter;->writeData([B)V

    .line 274
    invoke-virtual {v7}, Lcom/sshtools/common/util/SimpleASNWriter;->toByteArray()[B

    move-result-object v7

    .line 277
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v10

    if-nez v10, :cond_2

    .line 278
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {v2}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v10

    .line 280
    invoke-static {v2, v10}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v2

    .line 284
    :goto_1
    iget-object v10, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2DsaPublicKey;->pubkey:Ljava/security/interfaces/DSAPublicKey;

    invoke-virtual {v2, v10}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 285
    invoke-virtual {v2, p2}, Ljava/security/Signature;->update([B)V

    .line 287
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 288
    invoke-static {v7}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p2, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {v8}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    array-length v5, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {p2, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    invoke-static {p1}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p2

    array-length p1, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_3
    invoke-virtual {v2, v7}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 294
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 v0, 0x10

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

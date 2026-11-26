.class public Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;
.super Ljava/lang/Object;
.source "SshEd448PublicKeyJCE.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE$SshEd448PublicKeyJCEFactory;
    }
.end annotation


# static fields
.field public static final ALGORITHM_NAME:Ljava/lang/String; = "ssh-ed448"

.field public static final ASN_HEADER:[B


# instance fields
.field pk:[B

.field publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    .line 50
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->ASN_HEADER:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x43t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x71t
        0x3t
        0x3at
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->pk:[B

    .line 84
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->loadPublicKey([B)V

    return-void
.end method

.method private decodeJCEKey()[B
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->publicKey:Ljava/security/PublicKey;

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    .line 156
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->ASN_HEADER:[B

    array-length v2, v1

    array-length v3, v0

    array-length v1, v1

    sub-int/2addr v3, v1

    invoke-static {v0, v2, v3}, Lcom/sshtools/common/util/Arrays;->copy([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private loadPublicKey([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 88
    const-string v0, "Ed448"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->ASN_HEADER:[B

    invoke-static {v1, p1}, Lcom/sshtools/common/util/Arrays;->cat([B[B)[B

    move-result-object p1

    .line 90
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 91
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->publicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private verifyJCESignature([B[B)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 195
    :try_start_0
    const-string v0, "Ed448"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 197
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 198
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 200
    :goto_0
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 v0, 0x5

    invoke-direct {p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 205
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    check-cast p1, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getFingerprint()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getFingerprint()Ljava/lang/String;

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

.method public getA()[B
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->decodeJCEKey()[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "ssh-ed448"

    return-object v0
.end method

.method public getBitLength()I
    .locals 1

    const/16 v0, 0x1c0

    return v0
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 136
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->decodeJCEKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 142
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
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

    .line 144
    :try_start_2
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    const-string v3, "Failed to encoded key data"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 151
    :catch_2
    throw v1
.end method

.method public getEncodingAlgorithm()Ljava/lang/String;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getAlgorithm()Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/ssh/SshKeyFingerprint;->getFingerprint([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x270e

    return v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 75
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->PARANOID:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSigningAlgorithm()Ljava/lang/String;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 218
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getFingerprint()Ljava/lang/String;

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1, p2, p3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([BII)V

    .line 103
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string p2, "ssh-ed448"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->loadPublicKey([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-object p0

    .line 106
    :cond_0
    :try_start_1
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "The encoded key is not ed448"

    const/4 p3, 0x5

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 114
    :goto_0
    :try_start_2
    const-string p2, "Failed to initialise public key"

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 115
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const-string p3, "Failed to read encoded key data"

    invoke-direct {p2, p3, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 118
    throw p1
.end method

.method public test()Ljava/lang/String;
    .locals 3

    .line 233
    :try_start_0
    const-string v0, "Ed448"

    invoke-static {v0}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Ljava/security/KeyFactory;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public verifySignature([B[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 171
    :try_start_0
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    invoke-direct {v0, p1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->reset()V

    .line 177
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1

    .line 179
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 180
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/SshEd448PublicKeyJCE;->verifyJCESignature([B[B)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 183
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 184
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 189
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/16 v0, 0x10

    invoke-direct {p2, v0, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

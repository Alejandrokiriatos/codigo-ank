.class public Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;
.super Ljava/lang/Object;
.source "SshEd25519PrivateKeyJCE.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKey;


# static fields
.field public static final ASN_HEADER:[B


# instance fields
.field key:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 42
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->ASN_HEADER:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x2et
        0x2t
        0x1t
        0x0t
        0x30t
        0x5t
        0x6t
        0x3t
        0x2bt
        0x65t
        0x70t
        0x4t
        0x22t
        0x4t
        0x20t
    .end array-data
.end method

.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->key:Ljava/security/PrivateKey;

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->loadPrivateKey([B[B)V

    return-void
.end method

.method private loadPrivateKey([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 51
    const-string p2, "Ed25519"

    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p2

    const/16 v0, 0x20

    .line 52
    invoke-static {p1, v0}, Lcom/sshtools/common/util/Arrays;->copy([BI)[B

    move-result-object p1

    .line 53
    sget-object v0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->ASN_HEADER:[B

    invoke-static {v0, p1}, Lcom/sshtools/common/util/Arrays;->cat([B[B)[B

    move-result-object p1

    .line 54
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 55
    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->key:Ljava/security/PrivateKey;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 102
    instance-of v0, p1, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->getSeed()[B

    move-result-object v0

    check-cast p1, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->getSeed()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sshtools/common/util/Arrays;->areEqual([B[B)Z

    move-result p1

    return p1
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "ssh-ed25519"

    return-object v0
.end method

.method public getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getSeed()[B
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->key:Ljava/security/PrivateKey;

    invoke-interface {v0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 91
    sget-object v1, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->ASN_HEADER:[B

    array-length v1, v1

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Lcom/sshtools/common/util/Arrays;->copy([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->getSeed()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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

    .line 64
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->sign([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public sign([BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    const-string p2, "Ed25519"

    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p2

    .line 71
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SshEd25519PrivateKeyJCE;->key:Ljava/security/PrivateKey;

    invoke-virtual {p2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 72
    invoke-virtual {p2, p1}, Ljava/security/Signature;->update([B)V

    .line 73
    invoke-virtual {p2}, Ljava/security/Signature;->sign()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 75
    :goto_0
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

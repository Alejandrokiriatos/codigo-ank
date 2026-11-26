.class public Lcom/sshtools/common/ssh/components/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digest(Ljava/lang/String;[B)[B
    .locals 1

    .line 38
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDigest(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Digest;

    move-result-object v0

    .line 39
    invoke-interface {v0, p1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 40
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 42
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "%s is not a supported digest"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static digest(Ljava/lang/String;[BII)[B
    .locals 1

    .line 49
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEComponentManager;->getDefaultInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sshtools/common/ssh/components/ComponentManager;->getDigest(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Digest;

    move-result-object v0

    .line 50
    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([BII)V

    .line 51
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 53
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "%s is not a supported digest"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static md5([B)[B
    .locals 1

    .line 58
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static md5([BII)[B
    .locals 1

    .line 62
    const-string v0, "MD5"

    invoke-static {v0, p0, p1, p2}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1([B)[B
    .locals 1

    .line 66
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha1Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 83
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha1Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 85
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Encoding error. This system does not support UTF-8!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha1Hex([B)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha256([B)[B
    .locals 1

    .line 70
    const-string v0, "SHA-256"

    invoke-static {v0, p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 95
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha256Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 97
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Encoding error. This system does not support UTF-8!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .locals 0

    .line 102
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha384([B)[B
    .locals 1

    .line 74
    const-string v0, "SHA-384"

    invoke-static {v0, p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha384Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 107
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha384Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 109
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Encoding error. This system does not support UTF-8!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha384Hex([B)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha384([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sha512([B)[B
    .locals 1

    .line 78
    const-string v0, "SHA-512"

    invoke-static {v0, p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->digest(Ljava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 119
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha512Hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 121
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Encoding error. This system does not support UTF-8!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .locals 0

    .line 126
    invoke-static {p0}, Lcom/sshtools/common/ssh/components/DigestUtils;->sha512([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sshtools/common/util/Utils;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

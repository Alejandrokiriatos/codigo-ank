.class Lcom/sshtools/common/publickey/PEM;
.super Ljava/lang/Object;
.source "PEM.java"


# static fields
.field public static final DSA_PRIVATE_KEY:Ljava/lang/String; = "DSA PRIVATE KEY"

.field public static final EC_PRIVATE_KEY:Ljava/lang/String; = "EC PRIVATE KEY"

.field protected static final HEX_CHARS:[C

.field protected static final MAX_LINE_LENGTH:I

.field private static final MD5_HASH_BYTES:I = 0x10

.field public static final OPENSSH_PRIVATE_KEY:Ljava/lang/String; = "OPENSSH PRIVATE KEY"

.field protected static final PEM_BEGIN:Ljava/lang/String; = "-----BEGIN "

.field protected static final PEM_BOUNDARY:Ljava/lang/String; = "-----"

.field protected static final PEM_END:Ljava/lang/String; = "-----END "

.field public static final RSA_PRIVATE_KEY:Ljava/lang/String; = "RSA PRIVATE KEY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4a

    sput v0, Lcom/sshtools/common/publickey/PEM;->MAX_LINE_LENGTH:I

    .line 53
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/publickey/PEM;->HEX_CHARS:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getKeyFromPassphrase(Ljava/lang/String;[BI)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 73
    :try_start_0
    new-array p0, v0, [B

    goto :goto_0

    .line 74
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1

    .line 87
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v1

    const-string v2, "MD5"

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/ssh/components/Digest;

    .line 89
    new-array v2, p2, [B

    and-int/lit8 v3, p2, -0x10

    and-int/lit8 v4, p2, 0xf

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x10

    .line 97
    :cond_1
    new-array v4, v3, [B

    move v5, v0

    :goto_1
    add-int/lit8 v6, v5, 0x10

    if-gt v6, v3, :cond_2

    .line 103
    array-length v6, p0

    invoke-interface {v1, p0, v0, v6}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([BII)V

    const/16 v6, 0x8

    .line 104
    invoke-interface {v1, p1, v0, v6}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([BII)V

    .line 105
    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v6

    .line 106
    array-length v7, v6

    invoke-static {v6, v0, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    array-length v7, v6

    add-int/2addr v5, v7

    .line 102
    array-length v7, v6

    invoke-interface {v1, v6, v0, v7}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([BII)V

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v4, v0, v2, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    .line 77
    :catch_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Mandatory US-ASCII character encoding is not supported by the VM"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    .line 114
    new-instance p1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p1, p0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p1
.end method

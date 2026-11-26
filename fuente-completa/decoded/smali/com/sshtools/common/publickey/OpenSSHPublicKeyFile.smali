.class public Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;
.super Ljava/lang/Object;
.source "OpenSSHPublicKeyFile.java"

# interfaces
.implements Lcom/sshtools/common/publickey/SshPublicKeyFile;


# instance fields
.field comment:Ljava/lang/String;

.field formattedkey:[B

.field options:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;-><init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, " "

    if-nez p3, :cond_0

    :try_start_0
    const-string p3, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 55
    :goto_0
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->formattedkey:[B
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 64
    :catch_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to encode public key"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->formattedkey:[B

    .line 43
    invoke-virtual {p0}, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-void
.end method

.method public static isFormatted([B)Z
    .locals 6

    .line 141
    const-string v0, " "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 143
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 146
    const-string v2, ""

    .line 147
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_1
    const/4 v3, -0x1

    if-le p0, v3, :cond_6

    .line 156
    invoke-virtual {v2, v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v3, :cond_5

    .line 159
    invoke-virtual {v2, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v4, v4, 0x1

    .line 161
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 166
    :cond_1
    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const-string v0, "(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{0,2}==|[A-Za-z0-9+/]{0,3}=)?"

    const/4 v5, 0x1

    if-eq p0, v3, :cond_3

    .line 170
    :try_start_1
    invoke-virtual {v2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v5

    .line 179
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v5

    :cond_5
    :goto_2
    move p0, v4

    goto :goto_1

    :cond_6
    return v1

    :catchall_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedKey()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->formattedkey:[B

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->options:Ljava/lang/String;

    return-object v0
.end method

.method public toPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->formattedkey:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 80
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    const-string v0, ""

    .line 84
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, -0x1

    if-le v1, v2, :cond_7

    .line 93
    const-string v3, " "

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v2, :cond_6

    .line 96
    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    .line 98
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedPublicKeys()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 106
    const-string v5, "Public key blob does not appear to be base64 encoded data"

    const-string v6, "(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{0,2}==|[A-Za-z0-9+/]{0,3}=)?"

    if-eq v3, v2, :cond_4

    .line 107
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->comment:Ljava/lang/String;

    .line 113
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    invoke-static {v2}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0

    .line 114
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 123
    invoke-static {v0}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->decodeSSH2PublicKey(Ljava/lang/String;[B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0

    .line 121
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    move v1, v4

    goto :goto_1

    .line 127
    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The format does not appear to be an OpenSSH public key file in the format <algorithm> <base64_blob>"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/common/publickey/OpenSSHPublicKeyFile;->formattedkey:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

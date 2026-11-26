.class public Lcom/sshtools/common/publickey/PEMReader;
.super Lcom/sshtools/common/publickey/PEM;
.source "PEMReader.java"


# instance fields
.field private header:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:[B

.field private reader:Ljava/io/LineNumberReader;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PEM;-><init>()V

    .line 47
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-direct {v0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    .line 48
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PEMReader;->read()V

    return-void
.end method

.method private read()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ": "

    const-string v2, "-----"

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    const-string v3, "-----BEGIN "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    .line 58
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->type:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_1
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    .line 64
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid PEM boundary at line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->header:Ljava/util/Hashtable;

    .line 70
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v3, 0x3a

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 77
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v6, "\\"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 85
    :goto_2
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 86
    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v7, " "

    if-eqz v5, :cond_5

    .line 87
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 88
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 96
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v3, p0, Lcom/sshtools/common/publickey/PEMReader;->header:Ljava/util/Hashtable;

    invoke-virtual {v3, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    :goto_3
    if-eqz v0, :cond_b

    .line 111
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    :goto_4
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 114
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 116
    iget-object v2, p0, Lcom/sshtools/common/publickey/PEMReader;->type:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "-----END "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 119
    :cond_8
    new-instance v2, Ljava/io/IOException;

    iget-object v3, p0, Lcom/sshtools/common/publickey/PEMReader;->reader:Ljava/io/LineNumberReader;

    .line 120
    invoke-virtual {v3}, Ljava/io/LineNumberReader;->getLineNumber()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid PEM end boundary at line "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 126
    :cond_a
    :goto_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->payload:[B

    return-void

    .line 107
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The key format is invalid! OpenSSH formatted keys must begin with -----BEGIN RSA or -----BEGIN DSA"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decryptPayload(Ljava/lang/String;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->header:Ljava/util/Hashtable;

    const-string v1, "DEK-Info"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const/16 v1, 0x2c

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    .line 170
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 172
    const-string v4, "DES-EDE3-CBC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "AES-128-CBC"

    if-nez v5, :cond_1

    .line 173
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported passphrase algorithm: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 181
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x10

    if-ge v2, v7, :cond_2

    .line 182
    div-int/lit8 v7, v2, 0x2

    add-int/lit8 v9, v2, 0x2

    .line 183
    invoke-virtual {v0, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    move v2, v9

    goto :goto_1

    .line 189
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x18

    .line 190
    invoke-static {p1, v1, v0}, Lcom/sshtools/common/publickey/PEMReader;->getKeyFromPassphrase(Ljava/lang/String;[BI)[B

    move-result-object p1

    .line 191
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/TripleDesCbc;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/TripleDesCbc;-><init>()V

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 192
    :cond_3
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 193
    invoke-static {p1, v1, v8}, Lcom/sshtools/common/publickey/PEMReader;->getKeyFromPassphrase(Ljava/lang/String;[BI)[B

    move-result-object p1

    .line 194
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;-><init>()V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    move-object v6, p1

    .line 197
    :goto_3
    invoke-interface {v6, v5, v1, p1}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 199
    iget-object v7, p0, Lcom/sshtools/common/publickey/PEMReader;->payload:[B

    array-length v11, v7

    new-array v9, v11, [B

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 200
    invoke-interface/range {v6 .. v11}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V

    return-object v9

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/sshtools/common/publickey/PEMReader;->payload:[B

    return-object p1
.end method

.method public getHeader()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->header:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getPayload()[B
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->payload:[B

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMReader;->type:Ljava/lang/String;

    return-object v0
.end method

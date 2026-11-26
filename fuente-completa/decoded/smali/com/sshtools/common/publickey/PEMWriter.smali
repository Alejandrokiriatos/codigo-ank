.class Lcom/sshtools/common/publickey/PEMWriter;
.super Lcom/sshtools/common/publickey/PEM;
.source "PEMWriter.java"


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

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/sshtools/common/publickey/PEM;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public encryptPayload([BLjava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    .line 105
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0x10

    .line 110
    new-array v1, v0, [B

    .line 111
    invoke-static {}, Lcom/sshtools/common/ssh/components/ComponentManager;->getInstance()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/components/ComponentManager;->getRND()Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;->nextBytes([B)V

    .line 113
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 116
    sget-object v5, Lcom/sshtools/common/publickey/PEMWriter;->HEX_CHARS:[C

    aget-byte v6, v1, v4

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    sget-object v5, Lcom/sshtools/common/publickey/PEMWriter;->HEX_CHARS:[C

    aget-byte v6, v1, v4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v4, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    const-string v5, "DEK-Info"

    const-string v6, "maverick.privatekey.encryption"

    const-string v7, "AES-128-CBC"

    invoke-static {v6, v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v2, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    const-string v4, "Proc-Type"

    const-string v5, "4,ENCRYPTED"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p2, v1, v0}, Lcom/sshtools/common/publickey/PEMWriter;->getKeyFromPassphrase(Ljava/lang/String;[BI)[B

    move-result-object p2

    .line 125
    new-instance v4, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;

    invoke-direct {v4}, Lcom/sshtools/common/ssh/components/jce/AES128Cbc;-><init>()V

    .line 126
    invoke-interface {v4, v3, v1, p2}, Lcom/sshtools/common/ssh/components/SshCipher;->init(I[B[B)V

    .line 128
    invoke-interface {v4}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result p2

    array-length v0, p1

    invoke-interface {v4}, Lcom/sshtools/common/ssh/components/SshCipher;->getBlockSize()I

    move-result v1

    rem-int/2addr v0, v1

    sub-int/2addr p2, v0

    if-lez p2, :cond_3

    .line 130
    array-length v0, p1

    add-int/2addr v0, p2

    new-array v1, v0, [B

    .line 131
    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    array-length p1, p1

    :goto_1
    if-ge p1, v0, :cond_2

    int-to-byte v2, p2

    .line 133
    aput-byte v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v1

    goto :goto_2

    :cond_3
    move-object v5, p1

    .line 138
    :goto_2
    array-length v9, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v5

    invoke-interface/range {v4 .. v9}, Lcom/sshtools/common/ssh/components/SshCipher;->transform([BI[BII)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 143
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2

    :cond_4
    :goto_3
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

    .line 153
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sshtools/common/publickey/PEMWriter;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/sshtools/common/publickey/PEMWriter;->type:Ljava/lang/String;

    return-void
.end method

.method public write(Ljava/io/Writer;[B)V
    .locals 8

    .line 57
    new-instance v0, Ljava/io/PrintWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 58
    iget-object p1, p0, Lcom/sshtools/common/publickey/PEMWriter;->type:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-----BEGIN "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "-----"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_4

    .line 61
    iget-object p1, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 63
    iget-object v4, p0, Lcom/sshtools/common/publickey/PEMWriter;->header:Ljava/util/Hashtable;

    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    sget v6, Lcom/sshtools/common/publickey/PEMWriter;->MAX_LINE_LENGTH:I

    if-le v5, v6, :cond_2

    .line 68
    sget v5, Lcom/sshtools/common/publickey/PEMWriter;->MAX_LINE_LENGTH:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 69
    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 73
    sget v5, Lcom/sshtools/common/publickey/PEMWriter;->MAX_LINE_LENGTH:I

    add-int/2addr v5, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v5, v7, :cond_1

    .line 74
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_1
    sget v5, Lcom/sshtools/common/publickey/PEMWriter;->MAX_LINE_LENGTH:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    :goto_2
    sget v5, Lcom/sshtools/common/publickey/PEMWriter;->MAX_LINE_LENGTH:I

    add-int/2addr v3, v5

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 90
    :cond_4
    invoke-static {p2, v2}, Lcom/sshtools/common/util/Base64;->encodeBytes([BZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/sshtools/common/publickey/PEMWriter;->type:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "-----END "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/sshtools/common/net/HttpResponse;
.super Lcom/sshtools/common/net/HttpHeader;
.source "HttpResponse.java"


# instance fields
.field private reason:Ljava/lang/String;

.field private status:I

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/sshtools/common/net/HttpHeader;-><init>()V

    return-void
.end method

.method private processResponse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/sshtools/common/net/HttpResponse;->begin:Ljava/lang/String;

    const-string v2, " \t\r"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 71
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sshtools/common/net/HttpResponse;->version:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sshtools/common/net/HttpResponse;->status:I

    .line 73
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->reason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 77
    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read HTTP resposne header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :catch_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to read HTTP repsonse header"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getAuthenticationMethod()Ljava/lang/String;
    .locals 3

    .line 82
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Lcom/sshtools/common/net/HttpResponse;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x20

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAuthenticationRealm()Ljava/lang/String;
    .locals 5

    .line 94
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {p0, v0}, Lcom/sshtools/common/net/HttpResponse;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x3d

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    :cond_0
    :goto_0
    if-ltz v2, :cond_2

    const/16 v3, 0x20

    .line 102
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 104
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 106
    const-string v4, "realm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x2

    const/16 v1, 0x22

    .line 108
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 109
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/sshtools/common/net/HttpResponse;->status:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public process(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0, p1}, Lcom/sshtools/common/net/HttpResponse;->readLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->begin:Ljava/lang/String;

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->begin:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sshtools/common/net/HttpResponse;->readLine(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/net/HttpResponse;->begin:Ljava/lang/String;

    goto :goto_0

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/sshtools/common/net/HttpResponse;->processResponse()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/sshtools/common/net/HttpResponse;->processHeaderFields(Ljava/nio/ByteBuffer;)V

    return-void
.end method

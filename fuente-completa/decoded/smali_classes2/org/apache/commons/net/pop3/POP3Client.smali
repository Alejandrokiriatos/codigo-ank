.class public Lorg/apache/commons/net/pop3/POP3Client;
.super Lorg/apache/commons/net/pop3/POP3;
.source "POP3Client.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/apache/commons/net/pop3/POP3;-><init>()V

    return-void
.end method

.method static synthetic lambda$listMessages$0(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    .line 186
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$listUniqueIdentifiers$1(Ljava/util/ListIterator;I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 0

    .line 235
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/pop3/POP3Client;->parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    .line 53
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 64
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    new-instance v1, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(II)V

    :catch_0
    return-object v1
.end method

.method private static parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3

    .line 80
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 89
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 91
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    new-instance v1, Lorg/apache/commons/net/pop3/POP3MessageInfo;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/net/pop3/POP3MessageInfo;-><init>(ILjava/lang/String;)V

    :catch_0
    return-object v1
.end method


# virtual methods
.method public capa()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 118
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteMessage(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public listMessage(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x4

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 159
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/pop3/POP3Client;->lastReplyLine:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1
.end method

.method public listMessages()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x4

    .line 175
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 181
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 183
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 186
    new-instance v2, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda1;-><init>(Ljava/util/ListIterator;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public listUniqueIdentifier(I)Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/16 v0, 0xb

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 208
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/net/pop3/POP3Client;->lastReplyLine:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/net/pop3/POP3Client;->parseUID(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object p1

    return-object p1
.end method

.method public listUniqueIdentifiers()[Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xb

    .line 224
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 227
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getAdditionalReply()V

    .line 230
    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->replyLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lorg/apache/commons/net/pop3/POP3MessageInfo;

    .line 232
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->replyLines:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 235
    new-instance v2, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lorg/apache/commons/net/pop3/POP3Client$$ExternalSyntheticLambda0;-><init>(Ljava/util/ListIterator;)V

    invoke-static {v0, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    .line 259
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 263
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    return p1
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 295
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 299
    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 301
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getCharset()Ljava/nio/charset/Charset;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p2

    .line 302
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, v1

    .line 304
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 305
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xf

    if-gt v2, v3, :cond_1

    .line 307
    const-string v3, "0"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 313
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    .line 314
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    .line 317
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x1

    .line 321
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    return p1
.end method

.method public logout()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 336
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->setState(I)V

    .line 338
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    .line 339
    iget v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->replyCode:I

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public noop()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x7

    .line 351
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public reset()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x8

    .line 365
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public retrieveMessage(I)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x5

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    .line 394
    :cond_1
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/pop3/POP3Client;->reader:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method public retrieveMessageTop(II)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p2, :cond_2

    .line 415
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 418
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    .line 422
    :cond_1
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/pop3/POP3Client;->reader:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public status()Lorg/apache/commons/net/pop3/POP3MessageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lorg/apache/commons/net/pop3/POP3Client;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    const/4 v0, 0x3

    .line 438
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/pop3/POP3Client;->sendCommand(I)I

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 441
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/net/pop3/POP3Client;->lastReplyLine:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/net/pop3/POP3Client;->parseStatus(Ljava/lang/String;)Lorg/apache/commons/net/pop3/POP3MessageInfo;

    move-result-object v0

    return-object v0
.end method

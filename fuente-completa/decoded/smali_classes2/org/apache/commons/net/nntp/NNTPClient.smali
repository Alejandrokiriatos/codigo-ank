.class public Lorg/apache/commons/net/nntp/NNTPClient;
.super Lorg/apache/commons/net/nntp/NNTP;
.source "NNTPClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTP;-><init>()V

    return-void
.end method

.method private ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 183
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;

    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleId:Ljava/lang/String;

    .line 184
    iget-wide v0, p1, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    long-to-int p1, v0

    iput p1, p2, Lorg/apache/commons/net/nntp/ArticlePointer;->articleNumber:I

    :cond_0
    return-void
.end method

.method private ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 192
    :cond_0
    new-instance p1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-direct {p1}, Lorg/apache/commons/net/nntp/ArticleInfo;-><init>()V

    return-object p1
.end method

.method static parseArticleEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/Article;
    .locals 3

    .line 78
    new-instance v0, Lorg/apache/commons/net/nntp/Article;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/Article;-><init>()V

    .line 79
    invoke-virtual {v0, p0}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    .line 80
    const-string v1, "\t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 81
    array-length v1, p0

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 84
    :try_start_0
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/nntp/Article;->setArticleNumber(J)V

    const/4 v1, 0x1

    .line 85
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setSubject(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 86
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setFrom(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 87
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setDate(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 88
    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/Article;->setArticleId(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 89
    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/nntp/Article;->addReference(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method private parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 539
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 540
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 544
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleNumber:J

    const/4 v1, 0x2

    .line 546
    aget-object v0, v0, v1

    iput-object v0, p2, Lorg/apache/commons/net/nntp/ArticleInfo;->articleId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 552
    :catch_0
    :cond_0
    new-instance p2, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse article pointer.\nServer reply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/MalformedServerReplyException;
        }
    .end annotation

    .line 103
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 108
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V

    const/4 v1, 0x2

    .line 110
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setFirstArticle(J)V

    const/4 v1, 0x3

    .line 112
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setLastArticle(J)V

    const/4 v1, 0x4

    .line 114
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setNewsgroup(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p1, v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 123
    :catch_0
    :cond_0
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not parse newsgroup info.\nServer reply: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 12

    .line 128
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 129
    array-length v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 132
    :cond_0
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;

    invoke-direct {v0}, Lorg/apache/commons/net/nntp/NewsgroupInfo;-><init>()V

    const/4 v1, 0x0

    .line 136
    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setNewsgroup(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 139
    :try_start_0
    aget-object v4, p0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x2

    .line 140
    aget-object v7, p0, v6

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 141
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setFirstArticle(J)V

    .line 142
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setLastArticle(J)V

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    cmp-long v11, v4, v9

    if-nez v11, :cond_1

    .line 144
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V

    goto :goto_0

    :cond_1
    sub-long/2addr v4, v7

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 146
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setArticleCount(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x3

    .line 152
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v4, 0x4d

    if-eq p0, v4, :cond_4

    const/16 v4, 0x4e

    if-eq p0, v4, :cond_3

    const/16 v4, 0x59

    if-eq p0, v4, :cond_2

    const/16 v4, 0x79

    if-eq p0, v4, :cond_2

    const/16 v4, 0x6d

    if-eq p0, v4, :cond_4

    const/16 v3, 0x6e

    if-eq p0, v3, :cond_3

    .line 166
    invoke-virtual {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    return-object v0

    .line 155
    :cond_2
    invoke-virtual {v0, v6}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    return-object v0

    .line 159
    :cond_3
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    return-object v0

    .line 163
    :cond_4
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/NewsgroupInfo;->setPostingPermission(I)V

    return-object v0

    :catch_0
    return-object v2
.end method

.method private readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 594
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 595
    invoke-static {v2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 599
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    :cond_0
    new-instance v0, Lorg/apache/commons/net/MalformedServerReplyException;

    invoke-direct {v0, v2}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 602
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 603
    sget-object v0, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    return-object v0

    .line 605
    :cond_2
    sget-object v1, Lorg/apache/commons/net/nntp/NewsgroupInfo;->EMPTY_ARRAY:[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/nntp/NewsgroupInfo;

    return-object v0

    :catchall_0
    move-exception v0

    .line 593
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
.end method

.method private retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 609
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p4, :cond_1

    .line 614
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 617
    :cond_1
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 622
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(I)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 630
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    .line 633
    :cond_2
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->xover(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1088
    :cond_0
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method

.method private retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1153
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->xhdr(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1157
    :cond_0
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object p2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, p2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    return-object p1
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoUser(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x17d

    if-ne p1, v0, :cond_0

    .line 208
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->authinfoPass(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x119

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_isAllowedToPost:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public completePendingCommand()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReply()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public forwardArticle(Ljava/lang/String;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ihave(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 259
    :cond_0
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object p1
.end method

.method public iterateArticleInfo(JJ)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/Article;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    new-instance p2, Lorg/apache/commons/net/nntp/ArticleIterator;

    new-instance p3, Lorg/apache/commons/net/nntp/ReplyIterator;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p4}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;Z)V

    invoke-direct {p2, p3}, Lorg/apache/commons/net/nntp/ArticleIterator;-><init>(Ljava/lang/Iterable;)V

    return-object p2

    .line 274
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "XOVER command failed: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterateNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v4

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 296
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, v0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 298
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NEWNEWS command failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 318
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NEWGROUPS command failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public iterateNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewNewsgroupListing(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public iterateNewsgroupListing()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object v0

    .line 353
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST command failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->listActive(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance p1, Lorg/apache/commons/net/nntp/ReplyIterator;

    iget-object v0, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/nntp/ReplyIterator;-><init>(Ljava/io/BufferedReader;)V

    return-object p1

    .line 369
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LIST ACTIVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " command failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterateNewsgroups()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 384
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing()Ljava/lang/Iterable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public iterateNewsgroups(Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 397
    new-instance v0, Lorg/apache/commons/net/nntp/NewsgroupIterator;

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->iterateNewsgroupListing(Ljava/lang/String;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/net/nntp/NewsgroupIterator;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public listHelp()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->help()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isInformational(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v2, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 415
    :try_start_1
    invoke-static {v1, v0}, Lorg/apache/commons/net/io/Util;->copyReader(Ljava/io/Reader;Ljava/io/Writer;)J

    .line 416
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 414
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/StringWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
.end method

.method public listNewNews(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getNewsgroups()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v5

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/net/nntp/NNTPClient;->newnews(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 438
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    new-instance p1, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v0, v1, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 440
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 442
    sget-object p1, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 439
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public listNewNewsgroups(Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->isGMT()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/net/nntp/NewGroupsOrNewsQuery;->getDistributions()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->newgroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 464
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public listNewsgroups()[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->list()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 485
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public listNewsgroups(Ljava/lang/String;)[Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->listActive(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 502
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->readNewsgroupListing()[Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public listOverviewFmt()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    const-string v0, "LIST"

    const-string v1, "OVERVIEW.FMT"

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->sendCommand(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 515
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageReader;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_reader_:Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageReader;-><init>(Ljava/io/Reader;)V

    .line 516
    :try_start_0
    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/net/util/NetConstants;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 515
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public logout()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->quit()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    return v0
.end method

.method public postArticle()Ljava/io/Writer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->post()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveIntermediate(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 585
    :cond_0
    new-instance v0, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;

    iget-object v1, p0, Lorg/apache/commons/net/nntp/NNTPClient;->_writer_:Ljava/io/BufferedWriter;

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/DotTerminatedMessageWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public retrieveArticle(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 708
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 747
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 643
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticle(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 654
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 667
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 668
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 719
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 761
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 762
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleBody(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 810
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 838
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 878
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody()Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 773
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleBody(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 784
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 797
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 798
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 849
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 892
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleBody(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 893
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleHeader(J)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 941
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 969
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(IJLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1009
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieve(ILjava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader()Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 904
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public retrieveArticleHeader(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 915
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(ILorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 927
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 928
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(JLorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 929
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 980
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1022
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1023
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleHeader(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Ljava/io/BufferedReader;

    move-result-object p1

    .line 1024
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return-object p1
.end method

.method public retrieveArticleInfo(J)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleInfo(JJ)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleInfo(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 1036
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveArticleInfo(II)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    int-to-long p1, p2

    .line 1048
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveArticleInfo(JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1125
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p2

    .line 1100
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;J)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public retrieveHeader(Ljava/lang/String;II)Ljava/io/Reader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v0, p0

    move-object v1, p1

    .line 1113
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/nntp/NNTPClient;->retrieveHeader(Ljava/lang/String;JJ)Ljava/io/BufferedReader;

    move-result-object p1

    return-object p1
.end method

.method public selectArticle(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    .line 1194
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(J)Z

    move-result p1

    return p1
.end method

.method public selectArticle(ILorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1206
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    int-to-long v1, p1

    .line 1207
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    .line 1208
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return p1
.end method

.method public selectArticle(J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1220
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(JLorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1239
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(J)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 1244
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public selectArticle(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1258
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1279
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->stat(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1282
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->stat()I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1287
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1302
    invoke-direct {p0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1303
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    .line 1304
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return p1
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1168
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result p1

    return p1
.end method

.method public selectArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1179
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1180
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1181
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method

.method public selectNewsgroup(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1317
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z

    move-result p1

    return p1
.end method

.method public selectNewsgroup(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1334
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->group(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    .line 1339
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/commons/net/nntp/NNTPClient;->parseGroupReply(Ljava/lang/String;Lorg/apache/commons/net/nntp/NewsgroupInfo;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public selectNextArticle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1352
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1370
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->next()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1375
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public selectNextArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1389
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1390
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectNextArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1391
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method

.method public selectPreviousArticle()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1403
    move-object v1, v0

    check-cast v1, Lorg/apache/commons/net/nntp/ArticleInfo;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v0

    return v0
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->last()I

    move-result v0

    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPReply;->isPositiveCompletion(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 1428
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NNTPClient;->getReplyString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->parseArticlePointer(Ljava/lang/String;Lorg/apache/commons/net/nntp/ArticleInfo;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticlePointer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1442
    invoke-direct {p0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ap2ai(Lorg/apache/commons/net/nntp/ArticlePointer;)Lorg/apache/commons/net/nntp/ArticleInfo;

    move-result-object v0

    .line 1443
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/NNTPClient;->selectPreviousArticle(Lorg/apache/commons/net/nntp/ArticleInfo;)Z

    move-result v1

    .line 1444
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/nntp/NNTPClient;->ai2ap(Lorg/apache/commons/net/nntp/ArticleInfo;Lorg/apache/commons/net/nntp/ArticlePointer;)V

    return v1
.end method

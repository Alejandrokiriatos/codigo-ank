.class public Lorg/apache/commons/net/ftp/FTPListParseEngine;
.super Ljava/lang/Object;
.source "FTPListParseEngine.java"


# static fields
.field private static final EMPTY_FTP_FILE_ARRAY:[Lorg/apache/commons/net/ftp/FTPFile;


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private internalIterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final saveUnparseableEntries:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    new-array v0, v0, [Lorg/apache/commons/net/ftp/FTPFile;

    sput-object v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->EMPTY_FTP_FILE_ARRAY:[Lorg/apache/commons/net/ftp/FTPFile;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    .line 99
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getUnparseableEntries()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    return-void
.end method

.method private read(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 241
    :try_start_0
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    .line 243
    iget-object p2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {p1, v0}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 240
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method


# virtual methods
.method public getFileList(Lorg/apache/commons/net/ftp/FTPFileFilter;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/net/ftp/FTPFileFilter;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/net/ftp/FTPFile;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda0;-><init>(Lorg/apache/commons/net/ftp/FTPListParseEngine;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine$$ExternalSyntheticLambda1;-><init>(Lorg/apache/commons/net/ftp/FTPFileFilter;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getFiles()[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    sget-object v0, Lorg/apache/commons/net/ftp/FTPFileFilters;->NON_NULL:Lorg/apache/commons/net/ftp/FTPFileFilter;

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Lorg/apache/commons/net/ftp/FTPFileFilter;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFileList(Lorg/apache/commons/net/ftp/FTPFileFilter;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->EMPTY_FTP_FILE_ARRAY:[Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object p1
.end method

.method public getNext(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .line 165
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    .line 167
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-nez v2, :cond_0

    .line 170
    iget-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v3, :cond_0

    .line 171
    new-instance v2, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    .line 173
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 176
    :cond_1
    sget-object p1, Lorg/apache/commons/net/ftp/FTPListParseEngine;->EMPTY_FTP_FILE_ARRAY:[Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object p1
.end method

.method public getPrevious(I)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .line 198
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    if-lez p1, :cond_1

    .line 200
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    iget-object v2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v2, v1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-nez v2, :cond_0

    .line 203
    iget-boolean v3, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v3, :cond_0

    .line 204
    new-instance v2, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v2, v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 206
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 209
    :cond_1
    sget-object p1, Lorg/apache/commons/net/ftp/FTPListParseEngine;->EMPTY_FTP_FILE_ARRAY:[Lorg/apache/commons/net/ftp/FTPFile;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/net/ftp/FTPFile;

    return-object p1
.end method

.method public hasNext()Z
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getFileList$0$org-apache-commons-net-ftp-FTPListParseEngine(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 117
    iget-boolean v1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->saveUnparseableEntries:Z

    if-eqz v1, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public readServerList(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public readServerList(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    .line 271
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->read(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 272
    iget-object p1, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->parser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iget-object p2, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {p1, p2}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->preParse(Ljava/util/List;)Ljava/util/List;

    .line 273
    invoke-virtual {p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->resetIterator()V

    return-void
.end method

.method public resetIterator()V
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPListParseEngine;->internalIterator:Ljava/util/ListIterator;

    return-void
.end method

.class public Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "MVSFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd HH:mm"

.field static final FILE_LIST_REGEX:Ljava/lang/String; = "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?\\S+\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

.field static final FILE_LIST_TYPE:I = 0x0

.field static final JES_LEVEL_1_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

.field static final JES_LEVEL_1_LIST_TYPE:I = 0x3

.field static final JES_LEVEL_2_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

.field static final JES_LEVEL_2_LIST_TYPE:I = 0x4

.field static final MEMBER_LIST_REGEX:Ljava/lang/String; = "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

.field static final MEMBER_LIST_TYPE:I = 0x1

.field static final UNIX_LIST_TYPE:I = 0x2

.field static final UNKNOWN_LIST_TYPE:I = -0x1


# instance fields
.field private isType:I

.field private unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 224
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 151
    iput v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    const/4 v0, 0x0

    .line 225
    invoke-super {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method private parseFileList(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    .line 253
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 254
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 255
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 256
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 261
    const-string p1, "PS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 262
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    .line 263
    :cond_0
    const-string p1, "PO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "PO-E"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    .line 265
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    .line 273
    :cond_3
    const-string v0, "Migrated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 274
    const-string v3, "ARCIVE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    return-object v1

    .line 276
    :cond_5
    :goto_1
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 277
    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 278
    invoke-virtual {v1, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 279
    const-string v3, "\\s+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x5

    :goto_2
    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    return-object v1
.end method

.method private parseJeslevel1List(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x3

    .line 335
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevelList(Ljava/lang/String;I)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method private parseJeslevel2List(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    const/4 v0, 0x4

    .line 362
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevelList(Ljava/lang/String;I)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method private parseJeslevelList(Ljava/lang/String;I)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    .line 366
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 368
    invoke-virtual {p0, p2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "OUTPUT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 369
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 370
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 372
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private parseMemberList(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 5

    .line 405
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 406
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 408
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 410
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 413
    :try_start_0
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 426
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 428
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 230
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "yyyy/MM/dd HH:mm"

    const/4 v2, 0x0

    const-string v3, "MVS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2

    .line 296
    iget v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 306
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel2List(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseJeslevel1List(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    .line 302
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    .line 300
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseMemberList(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1

    .line 298
    :cond_4
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->parseFileList(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    return-object p1
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 449
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 450
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    const-string v2, "Volume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    const-string v2, "Dsname"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 452
    invoke-virtual {p0, v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 453
    const-string v1, "\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s+(?:\\S+\\s+)?\\S+\\s+\\S+\\s+\\S+\\s+(PS|PO|PO-E)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 454
    :cond_0
    const-string v2, "Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 455
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 456
    const-string v1, "(\\S+)\\s+\\S+\\s+\\S+\\s+(\\S+)\\s+(\\S+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+\\S+\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 457
    :cond_1
    const-string v2, "total"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    .line 458
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 459
    new-instance v1, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->unixFTPEntryParser:Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    goto :goto_0

    .line 460
    :cond_2
    const-string v2, "Spool Files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_3

    .line 461
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 462
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    .line 463
    :cond_3
    const-string v2, "JOBNAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "JOBID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    const/4 v1, 0x4

    .line 464
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 465
    const-string v1, "(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+)\\s+(\\S+).*"

    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->setRegex(Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    .line 467
    invoke-virtual {p0, v1}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->setType(I)V

    .line 469
    :goto_0
    iget v1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    if-eq v1, v3, :cond_5

    .line 470
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object p1
.end method

.method setType(I)V
    .locals 0

    .line 482
    iput p1, p0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;->isType:I

    return-void
.end method

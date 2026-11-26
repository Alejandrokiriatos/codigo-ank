.class public Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "OS400FTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "yy/MM/dd HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 262
    const-string v0, "(\\S+)\\s+(?:(\\d+)\\s+)?(?:(\\S+)\\s+(\\S+)\\s+)?(\\*STMF|\\*DIR|\\*FILE|\\*MEM)\\s+((\\S+\\s*)+)?"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method private isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 273
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "yy/MM/dd HH:mm:ss"

    const/4 v2, 0x0

    const-string v3, "OS/400"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 11

    .line 288
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 289
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 294
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 296
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_1

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 297
    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x5

    .line 299
    invoke-virtual {p0, v6}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    .line 300
    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 305
    :try_start_0
    invoke-super {p0, v5}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :catch_0
    const-string v8, "*STMF"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x2f

    const/4 v10, 0x0

    if-eqz v8, :cond_4

    .line 312
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v1, p1

    move v4, v10

    goto :goto_8

    :cond_3
    :goto_2
    return-object v1

    .line 315
    :cond_4
    const-string v8, "*DIR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 317
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v1, p1

    :goto_3
    move v4, v1

    goto :goto_8

    :cond_6
    :goto_4
    return-object v1

    .line 320
    :cond_7
    const-string v8, "*FILE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v7, :cond_9

    .line 328
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".SAVF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move v1, v10

    goto :goto_3

    :cond_9
    :goto_6
    return-object v1

    .line 333
    :cond_a
    const-string v8, "*MEM"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 337
    invoke-direct {p0, v7}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    return-object v1

    .line 340
    :cond_b
    invoke-direct {p0, v3}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0, v5}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_7

    .line 349
    :cond_c
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_d
    :goto_7
    return-object v1

    :cond_e
    move v1, p1

    .line 354
    :goto_8
    invoke-virtual {v0, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    .line 356
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    .line 359
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    :catch_1
    const-string v2, "/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 365
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_f
    if-eqz v1, :cond_10

    .line 368
    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_10

    add-int/2addr v1, p1

    .line 370
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 374
    :cond_10
    invoke-virtual {v0, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_11
    return-object v1
.end method

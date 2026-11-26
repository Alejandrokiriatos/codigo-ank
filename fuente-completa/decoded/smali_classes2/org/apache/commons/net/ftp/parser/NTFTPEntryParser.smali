.class public Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "NTFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MM-dd-yy hh:mma"

.field private static final DEFAULT_DATE_FORMAT2:Ljava/lang/String; = "MM-dd-yy kk:mm"

.field private static final REGEX:Ljava/lang/String; = "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"


# instance fields
.field private final timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 3

    .line 67
    const-string v0, "(\\S+)\\s+(\\S+)\\s+(?:(<DIR>)|([0-9]+))\\s+(\\S.*)"

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;I)V

    .line 68
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    .line 69
    new-instance p1, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const/4 v0, 0x0

    const-string v1, "WINDOWS"

    const-string v2, "MM-dd-yy kk:mm"

    invoke-direct {p1, v1, v2, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;->setDefaultDateFormatStr(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParserImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    .line 72
    check-cast v0, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method public getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 4

    .line 82
    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "MM-dd-yy hh:mma"

    const/4 v2, 0x0

    const-string v3, "WINDOWS"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 7

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 96
    new-instance v0, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 97
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    .line 99
    invoke-virtual {p0, v3}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    .line 100
    invoke-virtual {p0, v4}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 101
    invoke-virtual {p0, v5}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 102
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, ".."

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 106
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;->timestampParser:Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;

    invoke-interface {v1, p1}, Lorg/apache/commons/net/ftp/parser/FTPTimestampParser;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :catch_1
    :goto_0
    invoke-virtual {v0, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 116
    const-string p1, "<DIR>"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {v0, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const-wide/16 v1, 0x0

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 120
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    if-eqz v4, :cond_2

    .line 122
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :goto_2
    return-object v1
.end method

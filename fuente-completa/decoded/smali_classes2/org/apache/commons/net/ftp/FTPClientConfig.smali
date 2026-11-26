.class public Lorg/apache/commons/net/ftp/FTPClientConfig;
.super Ljava/lang/Object;
.source "FTPClientConfig.java"


# static fields
.field private static final LANGUAGE_CODE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYST_AS400:Ljava/lang/String; = "AS/400"

.field public static final SYST_L8:Ljava/lang/String; = "TYPE: L8"

.field public static final SYST_MACOS_PETER:Ljava/lang/String; = "MACOS PETER"

.field public static final SYST_MVS:Ljava/lang/String; = "MVS"

.field public static final SYST_NETWARE:Ljava/lang/String; = "NETWARE"

.field public static final SYST_NT:Ljava/lang/String; = "WINDOWS"

.field public static final SYST_OS2:Ljava/lang/String; = "OS/2"

.field public static final SYST_OS400:Ljava/lang/String; = "OS/400"

.field public static final SYST_UNIX:Ljava/lang/String; = "UNIX"

.field public static final SYST_UNIX_TRIM_LEADING:Ljava/lang/String; = "UNIX_LTRIM"

.field public static final SYST_VMS:Ljava/lang/String; = "VMS"


# instance fields
.field private defaultDateFormatStr:Ljava/lang/String;

.field private lenientFutureDates:Z

.field private recentDateFormatStr:Ljava/lang/String;

.field private saveUnparseableEntries:Z

.field private serverLanguageCode:Ljava/lang/String;

.field private final serverSystemKey:Ljava/lang/String;

.field private serverTimeZoneId:Ljava/lang/String;

.field private shortMonthNames:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 195
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    .line 203
    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v1, "de"

    sget-object v2, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v1, "it"

    sget-object v2, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v1, Ljava/util/Locale;

    const-string v2, "es"

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v1, Ljava/util/Locale;

    const-string v2, "pt"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v1, Ljava/util/Locale;

    const-string v2, "da"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sv"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/util/Locale;

    const-string v2, "no"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    new-instance v1, Ljava/util/Locale;

    const-string v2, "nl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    new-instance v1, Ljava/util/Locale;

    const-string v2, "ro"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sq"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sh"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sk"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v1, Ljava/util/Locale;

    const-string v2, "sl"

    invoke-direct {v1, v2, v3, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v1, "fr"

    const-string v2, "jan|f\u00e9v|mar|avr|mai|jun|jui|ao\u00fb|sep|oct|nov|d\u00e9c"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 301
    const-string v0, "UNIX"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 329
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 354
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 355
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 370
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 371
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 372
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 373
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 374
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 375
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 392
    invoke-direct {p0, p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;)V

    .line 393
    iput-object p2, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 394
    iput-boolean p7, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 395
    iput-object p3, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 396
    iput-boolean p8, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 397
    iput-object p4, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 398
    iput-object p5, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    .line 399
    iput-object p6, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 334
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 335
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 336
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 337
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 338
    iget-boolean p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 339
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 340
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 341
    iget-object p1, p2, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 311
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    .line 312
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    .line 313
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    .line 314
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    .line 315
    iget-boolean v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    iput-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    .line 316
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    .line 317
    iget-object v0, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    .line 318
    iget-object p1, p1, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-void
.end method

.method public static getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 2

    .line 230
    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 231
    new-instance v0, Ljava/text/DateFormatSymbols;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 232
    invoke-virtual {v0, p0}, Ljava/text/DateFormatSymbols;->setShortMonths([Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSupportedLanguageCodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static lookupDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;
    .locals 1

    .line 255
    sget-object v0, Lorg/apache/commons/net/ftp/FTPClientConfig;->LANGUAGE_CODE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 257
    instance-of v0, p0, Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/text/DateFormatSymbols;

    check-cast p0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0

    .line 260
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 261
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getDateFormatSymbols(Ljava/lang/String;)Ljava/text/DateFormatSymbols;

    move-result-object p0

    return-object p0

    .line 264
    :cond_1
    new-instance p0, Ljava/text/DateFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object p0
.end method

.method private static splitShortMonthString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 268
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "|"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    const/16 v1, 0xc

    if-ne v1, p0, :cond_1

    const/16 p0, 0xd

    .line 273
    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 275
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 276
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v1

    move v1, v2

    goto :goto_0

    .line 278
    :cond_0
    const-string v0, ""

    aput-object v0, p0, v1

    return-object p0

    .line 271
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "expecting a pipe-delimited string containing 12 tokens"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDefaultDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentDateFormatStr()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-object v0
.end method

.method public getServerLanguageCode()Ljava/lang/String;
    .locals 1

    .line 427
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServerSystemKey()Ljava/lang/String;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverSystemKey:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTimeZoneId()Ljava/lang/String;
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonthNames()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-object v0
.end method

.method public getUnparseableEntries()Z
    .locals 1

    .line 470
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return v0
.end method

.method public isLenientFutureDates()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return v0
.end method

.method public setDefaultDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->defaultDateFormatStr:Ljava/lang/String;

    return-void
.end method

.method public setLenientFutureDates(Z)V
    .locals 0

    .line 510
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->lenientFutureDates:Z

    return-void
.end method

.method public setRecentDateFormatStr(Ljava/lang/String;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->recentDateFormatStr:Ljava/lang/String;

    return-void
.end method

.method public setServerLanguageCode(Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverLanguageCode:Ljava/lang/String;

    return-void
.end method

.method public setServerTimeZoneId(Ljava/lang/String;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->serverTimeZoneId:Ljava/lang/String;

    return-void
.end method

.method public setShortMonthNames(Ljava/lang/String;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->shortMonthNames:Ljava/lang/String;

    return-void
.end method

.method public setUnparseableEntries(Z)V
    .locals 0

    .line 595
    iput-boolean p1, p0, Lorg/apache/commons/net/ftp/FTPClientConfig;->saveUnparseableEntries:Z

    return-void
.end method

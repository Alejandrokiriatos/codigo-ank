.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "MLSxEntryParser.java"


# static fields
.field private static final INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNIX_GROUPS:[I

.field private static final UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 63
    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "cdir"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v4, "pdir"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v4, "dir"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    .line 73
    filled-new-array {v1, v2, v0}, [I

    move-result-object v3

    sput-object v3, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    .line 76
    new-array v4, v1, [I

    filled-new-array {v0}, [I

    move-result-object v5

    filled-new-array {v2}, [I

    move-result-object v6

    filled-new-array {v0, v2}, [I

    move-result-object v7

    filled-new-array {v1}, [I

    move-result-object v8

    filled-new-array {v1, v0}, [I

    move-result-object v9

    filled-new-array {v1, v2}, [I

    move-result-object v10

    filled-new-array {v1, v2, v0}, [I

    move-result-object v11

    filled-new-array/range {v4 .. v11}, [[I

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .locals 6

    .line 162
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-char v3, p2, v2

    const/16 v4, 0x61

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    const/16 v4, 0x70

    if-eq v3, v4, :cond_4

    const/16 v4, 0x72

    if-eq v3, v4, :cond_3

    const/16 v4, 0x77

    if-eq v3, v4, :cond_2

    const/16 v4, 0x6c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x6d

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 175
    :pswitch_0
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 169
    :pswitch_2
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 184
    :cond_0
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    .line 181
    invoke-virtual {p1, v1, v3, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {p1, v1, v1, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 187
    :cond_4
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    .line 166
    :cond_5
    invoke-virtual {p1, v1, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .locals 1

    .line 88
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    .line 100
    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->INSTANCE:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p0

    return-object p0
.end method

.method public static parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5

    .line 113
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move v2, v1

    .line 120
    :goto_0
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    .line 122
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 123
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-direct {v4, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 124
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 125
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 126
    invoke-virtual {v0, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 127
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq v1, p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_1
    invoke-virtual {v4, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    if-nez v2, :cond_2

    const/16 p0, 0xe

    .line 132
    invoke-virtual {v4, p0}, Ljava/util/GregorianCalendar;->clear(I)V

    :cond_2
    return-object v4
.end method

.method public static parseGmtInstant(Ljava/lang/String;)Ljava/time/Instant;
    .locals 0

    .line 145
    invoke-static {p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->toInstant()Ljava/time/Instant;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18

    move-object/from16 v0, p1

    .line 204
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 206
    new-instance v1, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v1}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 207
    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    return-object v1

    :cond_0
    return-object v3

    :cond_1
    const/4 v2, 0x2

    .line 214
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 215
    array-length v5, v1

    if-ne v5, v2, :cond_14

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_9

    :cond_2
    const/4 v5, 0x0

    .line 218
    aget-object v6, v1, v5

    .line 219
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    return-object v3

    .line 222
    :cond_3
    new-instance v8, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v8}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    .line 223
    invoke-virtual {v8, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    .line 224
    aget-object v0, v1, v4

    invoke-virtual {v8, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    aget-object v1, v1, v5

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "unix.mode="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 227
    array-length v6, v0

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_13

    aget-object v9, v0, v7

    .line 228
    const-string v10, "="

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 232
    array-length v10, v9

    if-eq v10, v2, :cond_4

    return-object v3

    .line 235
    :cond_4
    aget-object v10, v9, v5

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 236
    aget-object v9, v9, v4

    .line 237
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v17, v3

    goto/16 :goto_8

    .line 240
    :cond_5
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    .line 241
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x3

    sparse-switch v13, :sswitch_data_0

    :goto_1
    move v13, v11

    goto :goto_2

    :sswitch_0
    const-string v13, "type"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_1

    :cond_6
    move v13, v14

    goto :goto_2

    :sswitch_1
    const-string v13, "size"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_1

    :cond_7
    move v13, v2

    goto :goto_2

    :sswitch_2
    const-string v13, "sizd"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto :goto_1

    :cond_8
    move v13, v4

    goto :goto_2

    :sswitch_3
    const-string v13, "modify"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto :goto_1

    :cond_9
    move v13, v5

    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 264
    const-string v13, "unix."

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 265
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 266
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    goto :goto_3

    :sswitch_4
    const-string v12, "owner"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_3

    :cond_a
    move v11, v2

    goto :goto_3

    :sswitch_5
    const-string v12, "group"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_3

    :cond_b
    move v11, v4

    goto :goto_3

    :sswitch_6
    const-string v12, "mode"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_3

    :cond_c
    move v11, v5

    :goto_3
    packed-switch v11, :pswitch_data_1

    :cond_d
    :goto_4
    move-object/from16 v17, v3

    goto :goto_7

    .line 271
    :pswitch_0
    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    goto :goto_4

    .line 268
    :pswitch_1
    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 274
    :pswitch_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v14

    move v11, v5

    :goto_5
    if-ge v11, v14, :cond_d

    add-int v12, v10, v11

    .line 276
    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    if-ltz v12, :cond_e

    const/4 v13, 0x7

    if-gt v12, v13, :cond_e

    .line 278
    sget-object v13, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    aget-object v12, v13, v12

    array-length v13, v12

    move v15, v5

    :goto_6
    if-ge v15, v13, :cond_e

    aget v2, v12, v15

    .line 279
    sget-object v16, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    move-object/from16 v17, v3

    aget v3, v16, v11

    invoke-virtual {v8, v3, v2, v4}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x2

    goto :goto_6

    :cond_e
    move-object/from16 v17, v3

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x2

    goto :goto_5

    :cond_f
    move-object/from16 v17, v3

    if-nez v1, :cond_10

    .line 291
    const-string v2, "perm"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, p0

    .line 292
    invoke-direct {v2, v8, v12}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    :goto_7
    move-object/from16 v2, p0

    goto :goto_8

    :pswitch_3
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    .line 255
    sget-object v3, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_11

    .line 257
    invoke-virtual {v8, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_8

    .line 259
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_8

    :pswitch_4
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    .line 244
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_8

    :pswitch_5
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    .line 247
    invoke-static {v9}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseGMTdateTime(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    if-nez v3, :cond_12

    return-object v17

    .line 251
    :cond_12
    invoke-virtual {v8, v3}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    const/4 v2, 0x2

    goto/16 :goto_0

    :cond_13
    move-object/from16 v2, p0

    return-object v8

    :cond_14
    :goto_9
    move-object/from16 v2, p0

    move-object/from16 v17, v3

    return-object v17

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fb48746 -> :sswitch_3
        0x35e000 -> :sswitch_2
        0x35e001 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x3339a3 -> :sswitch_6
        0x5e0f67f -> :sswitch_5
        0x653f2b3 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

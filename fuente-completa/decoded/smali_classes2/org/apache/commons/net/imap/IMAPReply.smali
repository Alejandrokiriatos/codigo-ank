.class public final Lorg/apache/commons/net/imap/IMAPReply;
.super Ljava/lang/Object;
.source "IMAPReply.java"


# static fields
.field public static final BAD:I = 0x2

.field public static final CONT:I = 0x3

.field private static final IMAP_BAD:Ljava/lang/String; = "BAD"

.field private static final IMAP_CONTINUATION_PREFIX:Ljava/lang/String; = "+"

.field private static final IMAP_NO:Ljava/lang/String; = "NO"

.field private static final IMAP_OK:Ljava/lang/String; = "OK"

.field private static final IMAP_UNTAGGED_PREFIX:Ljava/lang/String; = "* "

.field private static final LITERAL_PATTERN:Ljava/util/regex/Pattern;

.field public static final NO:I = 0x1

.field public static final OK:I = 0x0

.field public static final PARTIAL:I = 0x3

.field private static final TAGGED_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAGGED_RESPONSE:Ljava/lang/String; = "^\\w{1,80} (\\S{1,80}).{0,500}"

.field private static final UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNTAGGED_RESPONSE:Ljava/lang/String; = "^\\* (\\S{1,80}).{0,500}"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-string v0, "^\\w{1,80} (\\S{1,80}).{0,500}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    const-string v0, "^\\* (\\S{1,80}).{0,500}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    .line 93
    const-string v0, "\\{(\\d+)\\}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReplyCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result p0

    return p0
.end method

.method private static getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 111
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "BAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "OK"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string v1, "NO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v2

    :pswitch_1
    return v3

    :pswitch_2
    return v0

    .line 125
    :cond_4
    :goto_1
    new-instance p1, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received unexpected IMAP protocol response from server: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\'."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9c1 -> :sswitch_2
        0x9dc -> :sswitch_1
        0xffe5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getUntaggedReplyCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result p0

    return p0
.end method

.method public static isContinuation(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isContinuation(Ljava/lang/String;)Z
    .locals 1

    .line 156
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isSuccess(I)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isUntagged(Ljava/lang/String;)Z
    .locals 1

    .line 176
    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static literalCount(Ljava/lang/String;)I
    .locals 1

    .line 186
    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->LITERAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 187
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

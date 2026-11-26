.class public final Lorg/apache/commons/net/smtp/SMTPCommand;
.super Ljava/lang/Object;
.source "SMTPCommand.java"


# static fields
.field public static final AUTH:I = 0xe

.field public static final DATA:I = 0x3

.field public static final EHLO:I = 0xf

.field public static final EXPAND:I = 0x9

.field public static final EXPN:I = 0x9

.field public static final HELLO:I = 0x0

.field public static final HELO:I = 0x0

.field public static final HELP:I = 0xa

.field public static final LOGIN:I = 0x0

.field public static final LOGOUT:I = 0xd

.field public static final MAIL:I = 0x1

.field public static final MAIL_FROM:I = 0x1

.field private static final NEXT:I = 0x10

.field public static final NOOP:I = 0xb

.field public static final QUIT:I = 0xd

.field public static final RCPT:I = 0x2

.field public static final RECIPIENT:I = 0x2

.field public static final RESET:I = 0x7

.field public static final RSET:I = 0x7

.field public static final SAML:I = 0x6

.field public static final SEND:I = 0x4

.field public static final SEND_AND_MAIL_FROM:I = 0x6

.field public static final SEND_FROM:I = 0x4

.field public static final SEND_MESSAGE_DATA:I = 0x3

.field public static final SEND_OR_MAIL_FROM:I = 0x5

.field public static final SOML:I = 0x5

.field public static final TURN:I = 0xc

.field public static final VERIFY:I = 0x8

.field public static final VRFY:I = 0x8

.field private static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x10

    .line 121
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HELO"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MAIL FROM:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "RCPT TO:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "DATA"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "SEND FROM:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "SOML FROM:"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SAML FROM:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "RSET"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "VRFY"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "EXPN"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "HELP"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "NOOP"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "TURN"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "QUIT"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "AUTH"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "EHLO"

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/commons/net/smtp/SMTPCommand;->commands:[Ljava/lang/String;

    .line 125
    array-length v1, v1

    if-ne v1, v0, :cond_0

    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error in array definition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lorg/apache/commons/net/smtp/SMTPCommand;->commands:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

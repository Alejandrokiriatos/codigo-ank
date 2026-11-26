.class public final Lorg/apache/commons/net/pop3/POP3Command;
.super Ljava/lang/Object;
.source "POP3Command.java"


# static fields
.field public static final APOP:I = 0x9

.field public static final AUTH:I = 0xd

.field public static final CAPA:I = 0xc

.field public static final DELE:I = 0x6

.field public static final LIST:I = 0x4

.field private static final NEXT:I = 0xe

.field public static final NOOP:I = 0x7

.field public static final PASS:I = 0x1

.field public static final QUIT:I = 0x2

.field public static final RETR:I = 0x5

.field public static final RSET:I = 0x8

.field public static final STAT:I = 0x3

.field public static final TOP:I = 0xa

.field public static final UIDL:I = 0xb

.field public static final USER:I

.field static final commands:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    .line 64
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "USER"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "PASS"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "QUIT"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "STAT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LIST"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "RETR"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "DELE"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "NOOP"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "RSET"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "APOP"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "TOP"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "UIDL"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "CAPA"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "AUTH"

    aput-object v3, v1, v2

    sput-object v1, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    .line 67
    array-length v1, v1

    if-ne v1, v0, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error in array definition"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/commons/net/pop3/POP3Command;->commands:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

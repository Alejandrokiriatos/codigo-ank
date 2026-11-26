.class public final enum Lorg/apache/commons/net/imap/IMAPCommand;
.super Ljava/lang/Enum;
.source "IMAPCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/net/imap/IMAPCommand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum COPY:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LIST:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum STORE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UID:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

.field public static final enum XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;


# instance fields
.field private final imapCommand:Ljava/lang/String;

.field private final maxParamCount:I

.field private final minParamCount:I


# direct methods
.method private static synthetic $values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 27

    .line 23
    sget-object v1, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v2, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v3, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v4, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v5, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v6, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v7, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v8, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v9, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v10, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v11, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v12, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v13, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v14, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v15, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v16, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v17, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v18, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v19, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v20, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v21, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v22, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v23, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v24, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v25, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    sget-object v26, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    filled-new-array/range {v1 .. v26}, [Lorg/apache/commons/net/imap/IMAPCommand;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 31
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CAPABILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CAPABILITY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 36
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "NOOP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->NOOP:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 41
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LOGOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGOUT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 47
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STARTTLS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STARTTLS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 52
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "AUTHENTICATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->AUTHENTICATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 57
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LOGIN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LOGIN:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 62
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "XOAUTH"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->XOAUTH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 68
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SELECT"

    const/4 v7, 0x7

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SELECT:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 73
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "EXAMINE"

    const/16 v7, 0x8

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXAMINE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 78
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CREATE"

    const/16 v7, 0x9

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CREATE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 83
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "DELETE"

    const/16 v7, 0xa

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->DELETE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 88
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "RENAME"

    const/16 v7, 0xb

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->RENAME:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 92
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SUBSCRIBE"

    const/16 v7, 0xc

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 96
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "UNSUBSCRIBE"

    const/16 v7, 0xd

    invoke-direct {v0, v1, v7, v3}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UNSUBSCRIBE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 100
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LIST"

    const/16 v7, 0xe

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LIST:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 104
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "LSUB"

    const/16 v7, 0xf

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->LSUB:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 108
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STATUS"

    const/16 v7, 0x10

    invoke-direct {v0, v1, v7, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STATUS:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 113
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "APPEND"

    const/16 v7, 0x11

    invoke-direct {v0, v1, v7, v4, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->APPEND:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 119
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CHECK"

    const/16 v6, 0x12

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CHECK:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 124
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "CLOSE"

    const/16 v6, 0x13

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->CLOSE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 129
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "EXPUNGE"

    const/16 v6, 0x14

    invoke-direct {v0, v1, v6, v2}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->EXPUNGE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 134
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "SEARCH"

    const/16 v2, 0x15

    const v6, 0x7fffffff

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->SEARCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 139
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "FETCH"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->FETCH:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 144
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "STORE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->STORE:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 149
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "COPY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2, v4}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->COPY:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 154
    new-instance v0, Lorg/apache/commons/net/imap/IMAPCommand;

    const-string v1, "UID"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2, v4, v6}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->UID:Lorg/apache/commons/net/imap/IMAPCommand;

    .line 23
    invoke-static {}, Lorg/apache/commons/net/imap/IMAPCommand;->$values()[Lorg/apache/commons/net/imap/IMAPCommand;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    const/4 v3, 0x0

    move v5, p3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    .line 179
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 183
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    move v5, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 191
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/net/imap/IMAPCommand;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    .line 196
    iput p4, p0, Lorg/apache/commons/net/imap/IMAPCommand;->minParamCount:I

    .line 197
    iput p5, p0, Lorg/apache/commons/net/imap/IMAPCommand;->maxParamCount:I

    return-void
.end method

.method public static getCommand(Lorg/apache/commons/net/imap/IMAPCommand;)Ljava/lang/String;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->getIMAPCommand()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 23
    const-class v0, Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/net/imap/IMAPCommand;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/net/imap/IMAPCommand;
    .locals 1

    .line 23
    sget-object v0, Lorg/apache/commons/net/imap/IMAPCommand;->$VALUES:[Lorg/apache/commons/net/imap/IMAPCommand;

    invoke-virtual {v0}, [Lorg/apache/commons/net/imap/IMAPCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/net/imap/IMAPCommand;

    return-object v0
.end method


# virtual methods
.method public getIMAPCommand()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/commons/net/imap/IMAPCommand;->imapCommand:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/net/imap/IMAPCommand;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

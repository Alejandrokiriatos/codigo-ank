.class public final enum Lcom/sshtools/client/shell/ExpectShell$OS;
.super Ljava/lang/Enum;
.source "ExpectShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/shell/ExpectShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/client/shell/ExpectShell$OS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum AIX:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum DARWIN:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum FREEBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum LINUX:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum NETBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum OPENBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum SOLARIS:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum UNIX:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

.field public static final enum WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 13

    .line 57
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->LINUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v2, Lcom/sshtools/client/shell/ExpectShell$OS;->SOLARIS:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v3, Lcom/sshtools/client/shell/ExpectShell$OS;->AIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v4, Lcom/sshtools/client/shell/ExpectShell$OS;->DARWIN:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v5, Lcom/sshtools/client/shell/ExpectShell$OS;->FREEBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v6, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v7, Lcom/sshtools/client/shell/ExpectShell$OS;->NETBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v8, Lcom/sshtools/client/shell/ExpectShell$OS;->HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v9, Lcom/sshtools/client/shell/ExpectShell$OS;->UNIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v10, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v11, Lcom/sshtools/client/shell/ExpectShell$OS;->POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v12, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    filled-new-array/range {v0 .. v12}, [Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "WINDOWS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "LINUX"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->LINUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "SOLARIS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->SOLARIS:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "AIX"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->AIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "DARWIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->DARWIN:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "FREEBSD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->FREEBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "OPENBSD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "NETBSD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->NETBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "HPUX"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "UNIX"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->UNIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "OPENVMS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "POWERSHELL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

    new-instance v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$OS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 57
    invoke-static {}, Lcom/sshtools/client/shell/ExpectShell$OS;->$values()[Lcom/sshtools/client/shell/ExpectShell$OS;

    move-result-object v0

    sput-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->$VALUES:[Lcom/sshtools/client/shell/ExpectShell$OS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static code(I)Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 130
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 128
    :pswitch_0
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 126
    :pswitch_1
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 124
    :pswitch_2
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->UNIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 122
    :pswitch_3
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 120
    :pswitch_4
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->NETBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 118
    :pswitch_5
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 116
    :pswitch_6
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->FREEBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 114
    :pswitch_7
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->DARWIN:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 112
    :pswitch_8
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->AIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 110
    :pswitch_9
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->SOLARIS:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 108
    :pswitch_a
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->LINUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    .line 106
    :pswitch_b
    sget-object p0, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 1

    .line 57
    const-class v0, Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/client/shell/ExpectShell$OS;
    .locals 1

    .line 57
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$OS;->$VALUES:[Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v0}, [Lcom/sshtools/client/shell/ExpectShell$OS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/client/shell/ExpectShell$OS;

    return-object v0
.end method


# virtual methods
.method public code()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.3"
    .end annotation

    .line 67
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x63

    return v0

    :pswitch_0
    const/16 v0, 0x16

    return v0

    :pswitch_1
    const/16 v0, 0x15

    return v0

    :pswitch_2
    const/16 v0, 0x14

    return v0

    :pswitch_3
    const/16 v0, 0x9

    return v0

    :pswitch_4
    const/16 v0, 0x8

    return v0

    :pswitch_5
    const/4 v0, 0x7

    return v0

    :pswitch_6
    const/4 v0, 0x6

    return v0

    :pswitch_7
    const/4 v0, 0x5

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_a
    const/4 v0, 0x2

    return v0

    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public description()Ljava/lang/String;
    .locals 2

    .line 140
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 166
    const-string v0, "Unknown"

    return-object v0

    .line 164
    :pswitch_0
    const-string v0, "Windows PowerShell"

    return-object v0

    .line 162
    :pswitch_1
    const-string v0, "OpenVMS"

    return-object v0

    .line 160
    :pswitch_2
    const-string v0, "UNIX"

    return-object v0

    .line 158
    :pswitch_3
    const-string v0, "HP-UX"

    return-object v0

    .line 156
    :pswitch_4
    const-string v0, "NetBSD"

    return-object v0

    .line 154
    :pswitch_5
    const-string v0, "OpenBSD"

    return-object v0

    .line 152
    :pswitch_6
    const-string v0, "FreeBSD"

    return-object v0

    .line 150
    :pswitch_7
    const-string v0, "Darwin"

    return-object v0

    .line 148
    :pswitch_8
    const-string v0, "AIX"

    return-object v0

    .line 146
    :pswitch_9
    const-string v0, "Solaris"

    return-object v0

    .line 144
    :pswitch_a
    const-string v0, "Linux"

    return-object v0

    .line 142
    :pswitch_b
    const-string v0, "Windows"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public echoCommand()Ljava/lang/String;
    .locals 2

    .line 193
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 199
    const-string v0, "echo"

    return-object v0

    .line 197
    :cond_0
    const-string v0, "WRITE SYS$OUTPUT"

    return-object v0

    .line 195
    :cond_1
    const-string v0, "\r\n"

    return-object v0
.end method

.method public eol()Ljava/lang/String;
    .locals 2

    .line 223
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 227
    const-string v0, "\r"

    return-object v0

    .line 225
    :cond_0
    const-string v0, "\r\n"

    return-object v0
.end method

.method public exitCodeVariable()Ljava/lang/String;
    .locals 2

    .line 176
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 182
    const-string v0, "$?"

    return-object v0

    .line 180
    :cond_0
    const-string v0, "$SEVERITY"

    return-object v0

    .line 178
    :cond_1
    const-string v0, "%errorlevel%"

    return-object v0
.end method

.method public pipeCommand()Ljava/lang/String;
    .locals 2

    .line 209
    sget-object v0, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 213
    const-string v0, ""

    return-object v0

    .line 211
    :cond_0
    const-string v0, "PIPE"

    return-object v0
.end method

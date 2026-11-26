.class public final enum Lcom/sshtools/common/sftp/SftpSubsystemOperation;
.super Ljava/lang/Enum;
.source "SftpSubsystemOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/sftp/SftpSubsystemOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum CLOSE_HANDLE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum CREATE_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum EXTENDED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum FOLLOW_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum GET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum INIT:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum MAKE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum OPEN_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum OPEN_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum READ_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum READ_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum REMOVE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum REMOVE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum RENAME_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum RESOLVE_PATH:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum SET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum UNSUPPORTED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

.field public static final enum WRITE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 19

    .line 25
    sget-object v1, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->INIT:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v2, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->MAKE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v3, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RESOLVE_PATH:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v4, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v5, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v6, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->WRITE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v7, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v8, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v9, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->REMOVE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v10, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CLOSE_HANDLE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v11, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->REMOVE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v12, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RENAME_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v13, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->GET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v14, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->SET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v15, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CREATE_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v16, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->FOLLOW_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v17, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->EXTENDED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    sget-object v18, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->UNSUPPORTED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    filled-new-array/range {v1 .. v18}, [Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->INIT:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 28
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "MAKE_DIRECTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->MAKE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 29
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "RESOLVE_PATH"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RESOLVE_PATH:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 30
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "OPEN_FILE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 31
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "READ_FILE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 32
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "WRITE_FILE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->WRITE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 33
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "OPEN_DIRECTORY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 34
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "READ_DIRECTORY"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 35
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "REMOVE_DIRECTORY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->REMOVE_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 36
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "CLOSE_HANDLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CLOSE_HANDLE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 37
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "REMOVE_FILE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->REMOVE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 38
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "RENAME_FILE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RENAME_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 39
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "GET_ATTRIBUTES"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->GET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 40
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "SET_ATTRIBUTES"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->SET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 41
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "CREATE_SYMLINK"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CREATE_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 42
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "FOLLOW_SYMLINK"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->FOLLOW_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 43
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "EXTENDED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->EXTENDED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 44
    new-instance v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    const-string v1, "UNSUPPORTED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->UNSUPPORTED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    .line 25
    invoke-static {}, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->$values()[Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->$VALUES:[Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 25
    const-class v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 25
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->$VALUES:[Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    invoke-virtual {v0}, [Lcom/sshtools/common/sftp/SftpSubsystemOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

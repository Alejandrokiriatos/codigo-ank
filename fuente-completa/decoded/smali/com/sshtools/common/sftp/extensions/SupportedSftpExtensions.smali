.class public final enum Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;
.super Ljava/lang/Enum;
.source "SupportedSftpExtensions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "3.1.0"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum CHECK_FILE_HANDLE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum CHECK_FILE_NAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum COPY_DATA:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum COPY_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum CREATE_MULTIPART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum HARDLINK:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum MD5_FILE_HASH:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum OPEN_DIRECTORY_WITH_FILTER:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum OPEN_PART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum POSIX_RENAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

.field public static final enum STATVFS:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;


# direct methods
.method private static synthetic $values()[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;
    .locals 11

    .line 28
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->MD5_FILE_HASH:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v1, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->POSIX_RENAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v2, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v3, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_DIRECTORY_WITH_FILTER:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v4, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_DATA:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v5, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_NAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v6, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_HANDLE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v7, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CREATE_MULTIPART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v8, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_PART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v9, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->HARDLINK:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    sget-object v10, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->STATVFS:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    filled-new-array/range {v0 .. v10}, [Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "MD5_FILE_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->MD5_FILE_HASH:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 32
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "POSIX_RENAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->POSIX_RENAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 33
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "COPY_FILE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 34
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "OPEN_DIRECTORY_WITH_FILTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_DIRECTORY_WITH_FILTER:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 35
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "COPY_DATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->COPY_DATA:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 36
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "CHECK_FILE_NAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_NAME:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 37
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "CHECK_FILE_HANDLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CHECK_FILE_HANDLE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 38
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "CREATE_MULTIPART_FILE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->CREATE_MULTIPART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 39
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "OPEN_PART_FILE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->OPEN_PART_FILE:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 40
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "HARDLINK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->HARDLINK:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 41
    new-instance v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    const-string v1, "STATVFS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->STATVFS:Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    .line 28
    invoke-static {}, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->$values()[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->$VALUES:[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;
    .locals 1

    .line 28
    const-class v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    return-object p0
.end method

.method public static values()[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;
    .locals 1

    .line 28
    sget-object v0, Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->$VALUES:[Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    invoke-virtual {v0}, [Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sshtools/common/sftp/extensions/SupportedSftpExtensions;

    return-object v0
.end method

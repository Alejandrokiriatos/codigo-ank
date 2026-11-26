.class public final Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
.super Ljava/lang/Object;
.source "SftpFileAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpFileAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SftpFileAttributesBuilder"
.end annotation


# instance fields
.field private aclFlags:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private final acls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/sftp/ACL;",
            ">;"
        }
    .end annotation
.end field

.field private allocationSize:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation
.end field

.field private attributeBits:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private attributeBitsValid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private charsetEncoding:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private createTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private final extendedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private flags:J

.field private gid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private group:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastAccessTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private lastAttributesModifiedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private lastModifiedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private linkCount:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mimeType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private permissions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/sftp/PosixPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private size:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation
.end field

.field private supportedAttributeBits:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private supportedAttributeMask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private textHint:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private type:I

.field private uid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private untranslatedName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private username:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public static synthetic $r8$lambda$3FmKeWA__yzaspyT-olkIzvvBdM(Lcom/sshtools/common/util/UnsignedInteger32;)J
    .locals 2

    invoke-virtual {p0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetaclFlags(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetacls(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallocationSize(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetattributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetattributeBitsValid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextendedAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflags(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)J
    .locals 2

    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetgid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroup(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAccessTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAttributesModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkCount(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmimeType(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissions(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportedAttributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportedAttributeMask(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextHint(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuntranslatedName(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetversion(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    return p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 80
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 81
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 82
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 83
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    .line 84
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    .line 87
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->charsetEncoding:Ljava/util/Optional;

    const/4 v0, 0x4

    .line 88
    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    .line 89
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    .line 90
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeBits:Ljava/util/Optional;

    .line 91
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 92
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 93
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 94
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 95
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 96
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    .line 99
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    .line 100
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    .line 101
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    .line 102
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    .line 103
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    .line 104
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    return-void
.end method

.method public static create()Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1

    .line 62
    new-instance v0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;-><init>()V

    return-object v0
.end method

.method public static createWith(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1

    .line 66
    new-instance v0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->fromAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$calcCharset$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 508
    :try_start_0
    const-string v0, "1234567890"

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 511
    :catch_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " is not a supported character set encoding. Defaulting to ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    const-string p0, "ISO-8859-1"

    return-object p0
.end method

.method static synthetic lambda$fromPacket$1(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 597
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$fromPacket$2(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    .line 604
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static of(Lcom/sshtools/common/util/ByteArrayReader;ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->asVersion(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCharsetEncoding(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->fromPacket(Lcom/sshtools/common/util/ByteArrayReader;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1

    .line 70
    new-instance v0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    invoke-direct {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withType(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCharsetEncoding(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAcls(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/ACL;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public varargs addAcls([Lcom/sshtools/common/sftp/ACL;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 110
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->addAcls(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addExtendedAttribute(Ljava/lang/String;[B)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-wide p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/32 v0, -0x80000000

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public addExtendedAttributes(Ljava/util/Map;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/32 v2, -0x80000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public asVersion(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 132
    iput p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    return-object p0
.end method

.method public build()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 2

    .line 137
    new-instance v0, Lcom/sshtools/common/sftp/SftpFileAttributes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;Lcom/sshtools/common/sftp/SftpFileAttributes-IA;)V

    return-object v0
.end method

.method calcCharset()Ljava/lang/String;
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->charsetEncoding:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    .line 515
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method fromAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    .line 520
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetflags(Lcom/sshtools/common/sftp/SftpFileAttributes;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    .line 521
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgettype(Lcom/sshtools/common/sftp/SftpFileAttributes;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    .line 522
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetversion(Lcom/sshtools/common/sftp/SftpFileAttributes;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    .line 523
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    .line 524
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetallocationSize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    .line 525
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetaclFlags(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 526
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 527
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetacls(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 528
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetattributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    .line 529
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetattributeBitsValid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    .line 530
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetcreateTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 531
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 532
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetextendedAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 533
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetgid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 534
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetgroup(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 535
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastAccessTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 536
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastAttributesModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 537
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 538
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlinkCount(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    .line 539
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetmimeType(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    .line 540
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetpermissions(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 541
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsupportedAttributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeBits:Ljava/util/Optional;

    .line 542
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsupportedAttributeMask(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    .line 543
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgettextHint(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    .line 544
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetuid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 545
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetusername(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 546
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetuntranslatedName(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    return-object p0
.end method

.method fromPacket(Lcom/sshtools/common/util/ByteArrayReader;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->calcCharset()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 557
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 559
    iput-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    :goto_0
    const/4 v1, 0x0

    .line 564
    iput v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    .line 565
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 567
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v3

    if-lez v3, :cond_1

    .line 568
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v3

    iput v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    :cond_1
    const-wide/16 v5, 0x1

    .line 572
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v5, v6, v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v3

    const/16 v5, 0x8

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v3

    if-lt v3, v5, :cond_2

    .line 573
    new-array v3, v5, [B

    .line 574
    invoke-virtual {p1, v3}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 575
    new-instance v6, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v6, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>([B)V

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    goto :goto_1

    .line 577
    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    :goto_1
    const-wide/16 v6, 0x400

    .line 580
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v6, v7, v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v3

    if-lt v3, v5, :cond_3

    .line 581
    new-array v3, v5, [B

    .line 582
    invoke-virtual {p1, v3}, Lcom/sshtools/common/util/ByteArrayReader;->read([B)I

    .line 583
    new-instance v6, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v6, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>([B)V

    invoke-static {v6}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    goto :goto_2

    .line 585
    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    .line 588
    :goto_2
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-gt v3, v4, :cond_4

    const-wide/16 v6, 0x2

    invoke-virtual {p0, v6, v7, v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v3

    if-lt v3, v5, :cond_4

    .line 590
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 591
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    goto :goto_3

    .line 592
    :cond_4
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-le v3, v4, :cond_5

    const-wide/16 v6, 0x80

    invoke-virtual {p0, v6, v7, v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v3

    if-lez v3, :cond_5

    .line 593
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 594
    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 595
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x0

    .line 601
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 595
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 602
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    new-instance v6, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 608
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 602
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    goto :goto_3

    .line 610
    :cond_5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 611
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 612
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 613
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    :goto_3
    const-wide/16 v6, 0x4

    .line 616
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v6, v7, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    const/4 v3, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_e

    .line 617
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v8

    .line 619
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withBitmaskFlags(J)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 620
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-gt v0, v4, :cond_f

    long-to-int v0, v8

    const v8, 0xf000

    and-int/2addr v0, v8

    if-lez v0, :cond_f

    const v9, 0x8000

    if-ne v0, v9, :cond_6

    .line 624
    iput v7, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_6
    const v9, 0xa000

    if-ne v0, v9, :cond_7

    .line 626
    iput v4, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_7
    const/16 v9, 0x2000

    if-ne v0, v9, :cond_8

    const/4 v0, 0x7

    .line 628
    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_8
    const/16 v9, 0x6000

    if-ne v0, v9, :cond_9

    .line 630
    iput v5, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_9
    const/16 v9, 0x4000

    if-ne v0, v9, :cond_a

    const/4 v0, 0x2

    .line 632
    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_a
    const/16 v9, 0x1000

    if-ne v0, v9, :cond_b

    const/16 v0, 0x9

    .line 634
    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_b
    const v9, 0xc000

    if-ne v0, v9, :cond_c

    .line 636
    iput v6, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    :cond_c
    if-ne v0, v8, :cond_d

    .line 638
    iput v2, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    .line 640
    :cond_d
    iput v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    goto :goto_4

    .line 645
    :cond_e
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 647
    :cond_f
    :goto_4
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    if-nez v0, :cond_10

    .line 648
    iput v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    .line 651
    :cond_10
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 652
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 653
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 654
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 656
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    const-wide/16 v8, 0x8

    const-wide/16 v10, 0x100

    if-gt v0, v4, :cond_11

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v5, :cond_11

    .line 657
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 658
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    goto :goto_5

    .line 659
    :cond_11
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-le v0, v4, :cond_14

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lez v0, :cond_14

    .line 660
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v5, :cond_13

    .line 661
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v8

    .line 662
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v10, v11, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_12

    .line 664
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    .line 663
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    goto :goto_5

    .line 666
    :cond_12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    goto :goto_5

    .line 669
    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 672
    :cond_14
    :goto_5
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-le v0, v4, :cond_16

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lez v0, :cond_16

    const-wide/16 v8, 0x10

    .line 673
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v5, :cond_16

    .line 674
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v8

    .line 675
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v10, v11, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_15

    .line 677
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    .line 676
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    goto :goto_6

    .line 679
    :cond_15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 684
    :cond_16
    :goto_6
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-le v0, v4, :cond_18

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lez v0, :cond_18

    const-wide/16 v8, 0x20

    .line 685
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v5, :cond_18

    .line 686
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v8

    .line 687
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v10, v11, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_17

    .line 689
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    .line 688
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    goto :goto_7

    .line 691
    :cond_17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 696
    :cond_18
    :goto_7
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-lt v0, v6, :cond_1a

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lez v0, :cond_1a

    const-wide/32 v8, 0x8000

    .line 697
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v5, :cond_1a

    .line 698
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v8

    .line 699
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v10, v11, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_19

    .line 701
    invoke-static {v8, v9}, Ljava/time/Instant;->ofEpochSecond(J)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/time/Instant;->plusNanos(J)Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/attribute/FileTime;->from(Ljava/time/Instant;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    .line 700
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    goto :goto_8

    .line 703
    :cond_19
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v8, v9, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 708
    :cond_1a
    :goto_8
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 709
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 710
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-le v0, v4, :cond_1c

    const-wide/16 v8, 0x40

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_1c

    .line 712
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-lt v0, v6, :cond_1b

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_1b

    .line 713
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 716
    :cond_1b
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v8

    long-to-int v0, v8

    if-lez v0, :cond_1c

    .line 718
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v5

    if-lt v5, v0, :cond_1c

    .line 719
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v8

    long-to-int v0, v8

    move v5, v1

    :goto_9
    if-ge v5, v0, :cond_1c

    .line 721
    iget-object v8, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    new-instance v9, Lcom/sshtools/common/sftp/ACL;

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v12

    long-to-int v12, v12

    .line 722
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/sshtools/common/sftp/ACL;-><init>(IIILjava/lang/String;)V

    .line 721
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 727
    :cond_1c
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    const-wide/16 v8, 0x200

    if-lt v0, v3, :cond_1d

    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_1d

    .line 728
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    goto :goto_a

    .line 730
    :cond_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    .line 733
    :goto_a
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    .line 734
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    .line 735
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    .line 736
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    .line 737
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    .line 738
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-lt v0, v6, :cond_22

    .line 740
    invoke-virtual {p0, v8, v9, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_1e

    .line 741
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    :cond_1e
    const-wide/16 v5, 0x800

    .line 744
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v5, v6, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v7, :cond_1f

    .line 745
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    :cond_1f
    const-wide/16 v5, 0x1000

    .line 747
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v5, v6, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_20

    .line 748
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    :cond_20
    const-wide/16 v5, 0x2000

    .line 751
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v5, v6, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_21

    .line 752
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT32()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    :cond_21
    const-wide/16 v5, 0x4000

    .line 755
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    invoke-virtual {p0, v5, v6, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_22

    .line 756
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    .line 760
    :cond_22
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 761
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->version:I

    if-lt v0, v4, :cond_23

    const-wide/32 v3, -0x80000000

    invoke-virtual {p0, v3, v4, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->isFlagSet(JI)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->available()I

    move-result v0

    if-lt v0, v2, :cond_23

    .line 762
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int v0, v2

    :goto_b
    if-ge v1, v0, :cond_23

    .line 764
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    return-object p0
.end method

.method isFlagSet(JI)Z
    .locals 6

    .line 772
    iget-wide v2, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    move-wide v0, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$smisFlagSet(JJILjava/util/Optional;)Z

    move-result p1

    return p1
.end method

.method public removeExtendedAttribute(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/32 v2, -0x80000000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method setAttributeBit(JZ)V
    .locals 4

    .line 776
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v0, 0x0

    .line 782
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 778
    new-instance p3, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    new-instance v2, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 779
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    or-long/2addr p1, v0

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 778
    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    return-void

    .line 781
    :cond_0
    new-instance p3, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    new-instance v2, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder$$ExternalSyntheticLambda2;-><init>()V

    .line 782
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    not-long p1, p1

    and-long/2addr p1, v0

    invoke-direct {p3, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 781
    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    return-void
.end method

.method public withAclFlags(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1

    .line 147
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withAclFlags(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAclFlags(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 157
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withAclFlags(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAclFlags(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 152
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withAcls(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/ACL;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->addAcls(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs withAcls([Lcom/sshtools/common/sftp/ACL;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 161
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withAcls(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAppendOnly(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x100

    .line 170
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withArchive(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x10

    .line 175
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withAttributeBits(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 3

    .line 180
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withAttributeBits(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAttributeBits(Lcom/sshtools/common/util/UnsignedInteger32;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 189
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withAttributeBits(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withAttributeBits(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method public withCaseSensitive(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x8

    .line 193
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withCharsetEncoding(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 207
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCharsetEncoding(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withCharsetEncoding(Ljava/nio/charset/Charset;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 198
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCharsetEncoding(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withCharsetEncoding(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->charsetEncoding:Ljava/util/Optional;

    return-object p0
.end method

.method public withCompressed(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x40

    .line 211
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withCreateTime(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 220
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCreateTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withCreateTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 216
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCreateTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withCreateTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 225
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 226
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 228
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withEncrypted(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x20

    .line 233
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withExtendedAttributes(Ljava/util/Map;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 239
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->addExtendedAttributes(Ljava/util/Map;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withFileAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    .line 243
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    .line 244
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgettype(Lcom/sshtools/common/sftp/SftpFileAttributes;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    .line 245
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetcharsetEncoding(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->charsetEncoding:Ljava/util/Optional;

    .line 246
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsupportedAttributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeBits:Ljava/util/Optional;

    .line 247
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetsupportedAttributeMask(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    .line 248
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetflags(Lcom/sshtools/common/sftp/SftpFileAttributes;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    .line 249
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetallocationSize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->allocationSize:Ljava/util/Optional;

    .line 250
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetuid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 251
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetgid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 252
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetusername(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 253
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetgroup(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 254
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetpermissions(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 255
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastAccessTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 256
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetcreateTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->createTime:Ljava/util/Optional;

    .line 257
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 258
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlastAttributesModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 259
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->acls:Ljava/util/List;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetacls(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetaclFlags(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->aclFlags:Ljava/util/Optional;

    .line 262
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 263
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->extendedAttributes:Ljava/util/Map;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetextendedAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetattributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBits:Ljava/util/Optional;

    .line 265
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetmimeType(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->mimeType:Ljava/util/Optional;

    .line 266
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgettextHint(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->textHint:Ljava/util/Optional;

    .line 267
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetattributeBitsValid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->attributeBitsValid:Ljava/util/Optional;

    .line 268
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetlinkCount(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->linkCount:Ljava/util/Optional;

    .line 269
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->-$$Nest$fgetuntranslatedName(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->untranslatedName:Ljava/util/Optional;

    return-object p0
.end method

.method public withFlags(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 274
    iput-wide p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withGid(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGid(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withGid(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 284
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 285
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withGidOrGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 330
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGidOrGroup(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withGidOrGroup(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 313
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 315
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    return-object p0

    .line 319
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 320
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 322
    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    .line 323
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    return-object p0
.end method

.method public withGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 343
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGroup(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withGroup(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    .line 335
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 336
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withHidden(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x4

    .line 347
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withImmutable(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x200

    .line 352
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withLastAccessTime(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 361
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastAccessTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLastAccessTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 357
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastAccessTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLastAccessTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastAccessTime:Ljava/util/Optional;

    .line 366
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 367
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 369
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withLastModifiedTime(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 378
    invoke-static {p1, p2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 374
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastModifiedTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withLastModifiedTime(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 382
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->lastModifiedTime:Ljava/util/Optional;

    .line 383
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 386
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x21

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 408
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/attribute/PosixFilePermission;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 391
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withPermissions(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/sftp/PosixPermissions;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 395
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->permissions:Ljava/util/Optional;

    .line 396
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 397
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 399
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public varargs withPermissions([Ljava/nio/file/attribute/PosixFilePermission;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 404
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withReadOnly(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x1

    .line 412
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withSize(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1

    .line 417
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSize(Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withSize(Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 430
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSize(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withSize(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->size:Ljava/util/Optional;

    .line 422
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 423
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 425
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withSparse(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x80

    .line 434
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withSubSecondsTimes(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4

    if-eqz p1, :cond_0

    .line 440
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 442
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x101

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withSupportedAttributeBits(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 447
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSupportedAttributeBits(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withSupportedAttributeBits(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 451
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method public withSupportedAttributeMask(J)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 456
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSupportedAttributeMask(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withSupportedAttributeMask(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 460
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->supportedAttributeMask:Ljava/util/Optional;

    return-object p0
.end method

.method public withSync(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x400

    .line 465
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withSystem(Z)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 2

    const-wide/16 v0, 0x2

    .line 470
    invoke-virtual {p0, v0, v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->setAttributeBit(JZ)V

    return-object p0
.end method

.method public withType(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 475
    iput p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->type:I

    return-object p0
.end method

.method public withUid(I)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUid(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withUid(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 484
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 485
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->gid:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 486
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.method public withUidOrUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 309
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUidOrUsername(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withUidOrUsername(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 292
    invoke-static {p1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 294
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    return-object p0

    .line 298
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 299
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 301
    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->uid:Ljava/util/Optional;

    .line 302
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    return-object p0
.end method

.method public withUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 0

    .line 502
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUsername(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object p1

    return-object p1
.end method

.method public withUsername(Ljava/util/Optional;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;"
        }
    .end annotation

    .line 493
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->username:Ljava/util/Optional;

    .line 494
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->group:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0

    .line 495
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->flags:J

    return-object p0
.end method

.class public Lcom/sshtools/common/sftp/SftpFileAttributes;
.super Ljava/lang/Object;
.source "SftpFileAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    }
.end annotation


# static fields
.field public static final SFX_ACL_AUDIT_ALARM_INCLUDED:I = 0x10

.field public static final SFX_ACL_AUDIT_ALARM_INHERITED:I = 0x20

.field public static final SFX_ACL_CONTROL_INCLUDED:I = 0x1

.field public static final SFX_ACL_CONTROL_INHERITED:I = 0x4

.field public static final SFX_ACL_CONTROL_PRESENT:I = 0x2

.field public static final SSH_FILEXFER_ATTR_ACCESSTIME:J = 0x8L

.field public static final SSH_FILEXFER_ATTR_ACL:J = 0x40L

.field public static final SSH_FILEXFER_ATTR_ALLOCATION_SIZE:J = 0x400L

.field public static final SSH_FILEXFER_ATTR_BITS:J = 0x200L

.field public static final SSH_FILEXFER_ATTR_CREATETIME:J = 0x10L

.field public static final SSH_FILEXFER_ATTR_CTIME:J = 0x8000L

.field public static final SSH_FILEXFER_ATTR_EXTENDED:J = -0x80000000L

.field public static final SSH_FILEXFER_ATTR_FLAGS_APPEND_ONLY:I = 0x100

.field public static final SSH_FILEXFER_ATTR_FLAGS_ARCHIVE:I = 0x10

.field public static final SSH_FILEXFER_ATTR_FLAGS_CASE_INSENSITIVE:I = 0x8

.field public static final SSH_FILEXFER_ATTR_FLAGS_COMPRESSED:I = 0x40

.field public static final SSH_FILEXFER_ATTR_FLAGS_ENCRYPTED:I = 0x20

.field public static final SSH_FILEXFER_ATTR_FLAGS_HIDDEN:I = 0x4

.field public static final SSH_FILEXFER_ATTR_FLAGS_IMMUTABLE:I = 0x200

.field public static final SSH_FILEXFER_ATTR_FLAGS_READONLY:I = 0x1

.field public static final SSH_FILEXFER_ATTR_FLAGS_SPARSE:I = 0x80

.field public static final SSH_FILEXFER_ATTR_FLAGS_SYNC:I = 0x400

.field public static final SSH_FILEXFER_ATTR_FLAGS_SYSTEM:I = 0x2

.field public static final SSH_FILEXFER_ATTR_FLAGS_TRANSLATION_ERR:I = 0x800

.field public static final SSH_FILEXFER_ATTR_GUESSED_BINARY:I = 0x0

.field public static final SSH_FILEXFER_ATTR_GUESSED_TEXT:I = 0x1

.field public static final SSH_FILEXFER_ATTR_KNOWN_BINARY:I = 0x2

.field public static final SSH_FILEXFER_ATTR_KNOWN_TEXT:I = 0x0

.field public static final SSH_FILEXFER_ATTR_LINK_COUNT:J = 0x2000L

.field public static final SSH_FILEXFER_ATTR_MIME_TYPE:J = 0x1000L

.field public static final SSH_FILEXFER_ATTR_MODIFYTIME:J = 0x20L

.field public static final SSH_FILEXFER_ATTR_OWNERGROUP:J = 0x80L

.field public static final SSH_FILEXFER_ATTR_PERMISSIONS:J = 0x4L

.field public static final SSH_FILEXFER_ATTR_SIZE:J = 0x1L

.field public static final SSH_FILEXFER_ATTR_SUBSECOND_TIMES:J = 0x100L

.field public static final SSH_FILEXFER_ATTR_TEXT_HINT:J = 0x800L

.field public static final SSH_FILEXFER_ATTR_UIDGID:J = 0x2L

.field public static final SSH_FILEXFER_ATTR_UNTRANSLATED:J = 0x4000L

.field public static final SSH_FILEXFER_TYPE_BLOCK_DEVICE:I = 0x8

.field public static final SSH_FILEXFER_TYPE_CHAR_DEVICE:I = 0x7

.field public static final SSH_FILEXFER_TYPE_DIRECTORY:I = 0x2

.field public static final SSH_FILEXFER_TYPE_FIFO:I = 0x9

.field public static final SSH_FILEXFER_TYPE_REGULAR:I = 0x1

.field public static final SSH_FILEXFER_TYPE_SOCKET:I = 0x6

.field public static final SSH_FILEXFER_TYPE_SPECIAL:I = 0x4

.field public static final SSH_FILEXFER_TYPE_SYMLINK:I = 0x3

.field public static final SSH_FILEXFER_TYPE_UNKNOWN:I = 0x5

.field public static final S_IFBLK:I = 0x6000

.field public static final S_IFCHR:I = 0x2000

.field public static final S_IFDIR:I = 0x4000

.field public static final S_IFIFO:I = 0x1000

.field public static final S_IFLNK:I = 0xa000

.field public static final S_IFMT:I = 0xf000

.field public static final S_IFREG:I = 0x8000

.field public static final S_IFSOCK:I = 0xc000

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_ISGID:I = 0x400

.field public static final S_ISUID:I = 0x800

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field public static final S_MODE_MASK:I = 0xfff

.field public static final VERSION_3_FLAGS:J = -0x7ffffff1L

.field public static final VERSION_4_FLAGS:J = -0x7ffffe03L

.field public static final VERSION_5_FLAGS:J = -0x7ffffc03L

.field public static final VERSION_6_FLAGS:J = -0x7fff0003L


# instance fields
.field private final aclFlags:Ljava/util/Optional;
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

.field private final allocationSize:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeBits:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private final attributeBitsValid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private final charsetEncoding:Ljava/lang/String;

.field private final createTime:Ljava/util/Optional;
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

.field private final flags:J

.field private final gid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final group:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final lastAccessTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private final lastAttributesModifiedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private final lastModifiedTime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation
.end field

.field private final linkCount:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mimeType:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final permissions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/sftp/PosixPermissions;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedAttributeBits:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedAttributeMask:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final textHint:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I

.field private final uid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final untranslatedName:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final username:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method public static synthetic $r8$lambda$-sIwF1RVhWVZkGRnVoBbQSj-4W8(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/nio/file/attribute/FileTime;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->nanosFromFileTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic $r8$lambda$8CXO8Rq49RnMUgn8DcFbbMYTEjc(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetaclFlags(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->aclFlags:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetacls(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->acls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetallocationSize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->allocationSize:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetattributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetattributeBitsValid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBitsValid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcharsetEncoding(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->charsetEncoding:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcreateTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetextendedAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetflags(Lcom/sshtools/common/sftp/SftpFileAttributes;)J
    .locals 2

    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetgid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgroup(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAccessTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAttributesModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAttributesModifiedTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinkCount(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->linkCount:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmimeType(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->mimeType:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissions(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsize(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportedAttributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportedAttributeMask(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextHint(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->textHint:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lcom/sshtools/common/sftp/SftpFileAttributes;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuid(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuntranslatedName(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->untranslatedName:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusername(Lcom/sshtools/common/sftp/SftpFileAttributes;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetversion(Lcom/sshtools/common/sftp/SftpFileAttributes;)I
    .locals 0

    iget p0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->version:I

    return p0
.end method

.method static bridge synthetic -$$Nest$smisFlagSet(JJILjava/util/Optional;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JJILjava/util/Optional;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)V
    .locals 2

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 984
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetsize(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    .line 985
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgettype(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    .line 986
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetversion(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->version:I

    .line 987
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->calcCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->charsetEncoding:Ljava/lang/String;

    .line 988
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetsupportedAttributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    .line 989
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetsupportedAttributeMask(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    .line 990
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetflags(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    .line 991
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetallocationSize(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->allocationSize:Ljava/util/Optional;

    .line 992
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetuid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    .line 993
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetusername(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    .line 994
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetgid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    .line 995
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetgroup(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    .line 996
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetpermissions(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    .line 997
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetlastAccessTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    .line 998
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetcreateTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    .line 999
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetlastModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    .line 1000
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetlastAttributesModifiedTime(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAttributesModifiedTime:Ljava/util/Optional;

    .line 1001
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetacls(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->acls:Ljava/util/List;

    .line 1002
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetaclFlags(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->aclFlags:Ljava/util/Optional;

    .line 1003
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetattributeBits(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    .line 1004
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetmimeType(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->mimeType:Ljava/util/Optional;

    .line 1005
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgettextHint(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->textHint:Ljava/util/Optional;

    .line 1006
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetattributeBitsValid(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBitsValid:Ljava/util/Optional;

    .line 1007
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetlinkCount(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->linkCount:Ljava/util/Optional;

    .line 1008
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetuntranslatedName(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->untranslatedName:Ljava/util/Optional;

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->-$$Nest$fgetextendedAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;Lcom/sshtools/common/sftp/SftpFileAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;)V

    return-void
.end method

.method private isFlagSet(JI)Z
    .locals 6

    .line 1525
    iget-wide v2, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    move-wide v0, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JJILjava/util/Optional;)Z

    move-result p1

    return p1
.end method

.method private static isFlagSet(JJILjava/util/Optional;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x5

    const-wide v1, 0xffffffffL

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt p4, v0, :cond_3

    .line 946
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-eqz p4, :cond_3

    and-long/2addr p0, v1

    and-long/2addr p2, p0

    cmp-long p2, p2, p0

    if-nez p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v4

    :goto_0
    if-eqz p2, :cond_2

    .line 949
    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    and-long/2addr p2, p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_1

    return v3

    :cond_1
    return v4

    :cond_2
    return p2

    :cond_3
    and-long/2addr p0, v1

    and-long/2addr p2, p0

    cmp-long p0, p2, p0

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v4
.end method

.method static synthetic lambda$attributeBitsValid$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 1041
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No valid attribute bits set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$bestGroupOr$18(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1541
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$bestUsernameOr$16(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 1533
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createTime$1()Ljava/nio/file/attribute/FileTime;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1053
    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$extendedAttribute$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1062
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such key {0}"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$lastAccessTime$3()Ljava/nio/file/attribute/FileTime;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1248
    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastAttributesModifiedTime$4()Ljava/nio/file/attribute/FileTime;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1256
    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$lastModifiedTime$5()Ljava/nio/file/attribute/FileTime;
    .locals 2

    const-wide/16 v0, 0x0

    .line 1264
    invoke-static {v0, v1}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$textHint$6()Ljava/lang/IllegalStateException;
    .locals 2

    .line 1320
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No text hint set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$toByteArray$10(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 2

    .line 1375
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toByteArray$11(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 2

    .line 1379
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toByteArray$12(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 2

    .line 1386
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toByteArray$13(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 2

    .line 1393
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$toByteArray$9(Ljava/nio/file/attribute/FileTime;)Ljava/lang/Long;
    .locals 2

    .line 1374
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$untranslatedName$15()Ljava/lang/IllegalStateException;
    .locals 2

    .line 1509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No untranslated name set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private nanosFromFileTime(Ljava/nio/file/attribute/FileTime;)J
    .locals 2

    .line 1529
    invoke-virtual {p1}, Ljava/nio/file/attribute/FileTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public acls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/sftp/ACL;",
            ">;"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->acls:Ljava/util/List;

    return-object v0
.end method

.method public aclsFlag()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    .line 1017
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->aclFlags:Ljava/util/Optional;

    sget-object v1, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public aclsFlagOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->aclFlags:Ljava/util/Optional;

    return-object v0
.end method

.method public allocationSize()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->allocationSize:Ljava/util/Optional;

    sget-object v1, Lcom/sshtools/common/util/UnsignedInteger64;->ZERO:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger64;

    return-object v0
.end method

.method public allocationSizeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation

    .line 1029
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->allocationSize:Ljava/util/Optional;

    return-object v0
.end method

.method public attributeBits()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    sget-object v1, Lcom/sshtools/common/util/UnsignedInteger32;->ZERO:Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public attributeBitsOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    return-object v0
.end method

.method public attributeBitsValid()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 2

    .line 1041
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBitsValid:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public attributeBitsValidOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBitsValid:Ljava/util/Optional;

    return-object v0
.end method

.method public bestGroup()Ljava/lang/String;
    .locals 2

    .line 1545
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->bestGroupOr()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "nogroup"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bestGroupOr()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1541
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda2;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-static {v0, v1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public bestUsername()Ljava/lang/String;
    .locals 2

    .line 1537
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->bestUsernameOr()Ljava/util/Optional;

    move-result-object v0

    const-string v1, "nouser"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bestUsernameOr()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1533
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda20;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-static {v0, v1}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public charsetEncoding()Ljava/lang/String;
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->charsetEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public createTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public createTimeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation

    .line 1057
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    return-object v0
.end method

.method public extendedAttribute(Ljava/lang/String;)[B
    .locals 2

    .line 1061
    invoke-virtual {p0, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributeOr(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public extendedAttributeOr(Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "[B>;"
        }
    .end annotation

    .line 1066
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public extendedAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 1071
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public flags()J
    .locals 2

    .line 1075
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    return-wide v0
.end method

.method public gid()I
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public gidOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    return-object v0
.end method

.method public group()Ljava/lang/String;
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public groupOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    return-object v0
.end method

.method public hasAclFlags()Z
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->aclFlags:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasAllocationSize()Z
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->allocationSize:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasAttributeBits()Z
    .locals 1

    .line 1103
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasCreateTime()Z
    .locals 1

    .line 1107
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasExtendedAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hasGid()Z
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasGroup()Z
    .locals 1

    .line 1119
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasLastAccessTime()Z
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasLastAttributesModifiedTime()Z
    .locals 1

    .line 1127
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAttributesModifiedTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasLastModifiedTime()Z
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasPermissions()Z
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasSubSecondTimes()Z
    .locals 4

    .line 1143
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSupportedAttributeBits()Z
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasSupportedAttributeMask()Z
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasUid()Z
    .locals 1

    .line 1155
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public hasUsername()Z
    .locals 1

    .line 1159
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isAppendOnly()Z
    .locals 2

    const-wide/16 v0, 0x100

    .line 1163
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isArchive()Z
    .locals 2

    const-wide/16 v0, 0x10

    .line 1167
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isAttributeBitSet(J)Z
    .locals 4

    .line 1171
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    .line 1172
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger32;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    and-long/2addr v0, p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBlock()Z
    .locals 2

    .line 1176
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCaseInsensitive()Z
    .locals 2

    const-wide/16 v0, 0x8

    .line 1180
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isCharacter()Z
    .locals 2

    .line 1184
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCompressed()Z
    .locals 2

    const-wide/16 v0, 0x40

    .line 1192
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .line 1196
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEncrypted()Z
    .locals 2

    const-wide/16 v0, 0x20

    .line 1200
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isFifo()Z
    .locals 2

    .line 1204
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFile()Z
    .locals 2

    .line 1208
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHidden()Z
    .locals 2

    const-wide/16 v0, 0x4

    .line 1212
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isImmutable()Z
    .locals 2

    const-wide/16 v0, 0x200

    .line 1216
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isLink()Z
    .locals 2

    .line 1220
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadOnly()Z
    .locals 2

    const-wide/16 v0, 0x1

    .line 1224
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isSocket()Z
    .locals 2

    .line 1228
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSparse()Z
    .locals 2

    const-wide/16 v0, 0x80

    .line 1232
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isSpecial()Z
    .locals 2

    .line 1188
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSubSecondTimes()Z
    .locals 4

    .line 1240
    iget-wide v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSync()Z
    .locals 2

    const-wide/16 v0, 0x400

    .line 1236
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method public isSystem()Z
    .locals 2

    const-wide/16 v0, 0x2

    .line 1244
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isAttributeBitSet(J)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$bestGroupOr$19$com-sshtools-common-sftp-SftpFileAttributes()Ljava/util/Optional;
    .locals 2

    .line 1541
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$bestUsernameOr$17$com-sshtools-common-sftp-SftpFileAttributes()Ljava/util/Optional;
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$toByteArray$14$com-sshtools-common-sftp-SftpFileAttributes(Lcom/sshtools/common/util/UnsignedInteger32;)Ljava/lang/Long;
    .locals 4

    .line 1419
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 1420
    :cond_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 1419
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$toByteArray$7$com-sshtools-common-sftp-SftpFileAttributes()Ljava/lang/String;
    .locals 2

    .line 1365
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method synthetic lambda$toByteArray$8$com-sshtools-common-sftp-SftpFileAttributes()Ljava/lang/String;
    .locals 2

    .line 1366
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1248
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public lastAccessTimeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    return-object v0
.end method

.method public lastAttributesModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAttributesModifiedTime:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public lastAttributesModifiedTimeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation

    .line 1260
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAttributesModifiedTime:Ljava/util/Optional;

    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public lastModifiedTimeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/file/attribute/FileTime;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    return-object v0
.end method

.method public linkCount()I
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->linkCount:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public linkCountOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1276
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->linkCount:Ljava/util/Optional;

    return-object v0
.end method

.method public mimeType()Ljava/lang/String;
    .locals 2

    .line 1280
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->mimeType:Ljava/util/Optional;

    const-string v1, "application/octet-stream"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public mimeTypeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1284
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->mimeType:Ljava/util/Optional;

    return-object v0
.end method

.method public permissions()Lcom/sshtools/common/sftp/PosixPermissions;
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    sget-object v1, Lcom/sshtools/common/sftp/PosixPermissions;->EMPTY:Lcom/sshtools/common/sftp/PosixPermissions;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/sftp/PosixPermissions;

    return-object v0
.end method

.method public permissionsOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/sftp/PosixPermissions;",
            ">;"
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    return-object v0
.end method

.method public size()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 2

    .line 1296
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    sget-object v1, Lcom/sshtools/common/util/UnsignedInteger64;->ZERO:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/util/UnsignedInteger64;

    return-object v0
.end method

.method public sizeOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger64;",
            ">;"
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    return-object v0
.end method

.method public supportedAttributeBits()J
    .locals 3

    .line 1304
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public supportedAttributeBitsOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1308
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeBits:Ljava/util/Optional;

    return-object v0
.end method

.method public supportedAttributeMask()J
    .locals 3

    .line 1312
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public supportedAttributeMaskOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->supportedAttributeMask:Ljava/util/Optional;

    return-object v0
.end method

.method public textHint()B
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->textHint:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public textHintOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->textHint:Ljava/util/Optional;

    return-object v0
.end method

.method public toByteArray(I)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1336
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 1350
    :try_start_0
    iget-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/32 v5, -0x7ffffff1

    and-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    goto :goto_0

    .line 1341
    :cond_0
    iget-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/32 v5, -0x7fff0003

    and-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/32 v5, -0x7ffffc03

    and-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    goto :goto_0

    .line 1347
    :cond_2
    iget-wide v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->flags:J

    const-wide/32 v5, -0x7ffffe03

    and-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    :goto_0
    const/4 v1, 0x3

    if-le p1, v1, :cond_3

    .line 1355
    iget v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    :cond_3
    const-wide/16 v3, 0x1

    .line 1357
    invoke-direct {p0, v3, v4, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1358
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->size:Ljava/util/Optional;

    sget-object v4, Lcom/sshtools/common/util/UnsignedInteger64;->ZERO:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->write([B)V

    :cond_4
    if-gt p1, v1, :cond_5

    const-wide/16 v3, 0x2

    .line 1361
    invoke-direct {p0, v3, v4, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1362
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1363
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->gid:Ljava/util/Optional;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    goto :goto_1

    :cond_5
    if-le p1, v1, :cond_6

    const-wide/16 v3, 0x80

    .line 1364
    invoke-direct {p0, v3, v4, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1365
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    new-instance v4, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda7;

    invoke-direct {v4, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda7;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->charsetEncoding:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->group:Ljava/util/Optional;

    new-instance v4, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda10;

    invoke-direct {v4, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda10;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->charsetEncoding:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    const-wide/16 v3, 0x4

    .line 1369
    invoke-direct {p0, v3, v4, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_7

    .line 1370
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    new-instance v6, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda11;

    invoke-direct {v6}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xfff

    and-long/2addr v6, v8

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->toModeType()I

    move-result v3

    int-to-long v8, v3

    or-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    :cond_7
    const-wide/16 v6, 0x8

    if-gt p1, v1, :cond_8

    .line 1373
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1374
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    .line 1375
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda13;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    goto/16 :goto_2

    :cond_8
    if-le p1, v1, :cond_b

    .line 1378
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    const-wide/16 v6, 0x100

    if-eqz v1, :cond_9

    .line 1379
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 1380
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1381
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime:Ljava/util/Optional;

    new-instance v8, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-virtual {v3, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    :cond_9
    const-wide/16 v8, 0x10

    .line 1385
    invoke-direct {p0, v8, v9, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1386
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 1387
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1388
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime:Ljava/util/Optional;

    new-instance v8, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;

    invoke-direct {v8, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-virtual {v3, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v1, v8, v9}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    :cond_a
    const-wide/16 v8, 0x20

    .line 1392
    invoke-direct {p0, v8, v9, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1393
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    new-instance v3, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 1394
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1395
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger32;

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime:Ljava/util/Optional;

    new-instance v6, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;

    invoke-direct {v6, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda8;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    .line 1396
    invoke-virtual {v3, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    .line 1395
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT32(Lcom/sshtools/common/util/UnsignedInteger32;)V

    :cond_b
    :goto_2
    const-wide/16 v6, 0x40

    .line 1402
    invoke-direct {p0, v6, v7, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1403
    new-instance v1, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v1}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1405
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->acls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1406
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->acls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sshtools/common/sftp/ACL;

    .line 1407
    invoke-virtual {v6}, Lcom/sshtools/common/sftp/ACL;->getType()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1408
    invoke-virtual {v6}, Lcom/sshtools/common/sftp/ACL;->getFlags()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1409
    invoke-virtual {v6}, Lcom/sshtools/common/sftp/ACL;->getMask()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1410
    invoke-virtual {v6}, Lcom/sshtools/common/sftp/ACL;->getWho()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 1412
    :cond_c
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1414
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 1415
    throw p1

    :cond_d
    :goto_4
    if-lt p1, v2, :cond_e

    const-wide/16 v1, 0x200

    .line 1418
    invoke-direct {p0, v1, v2, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1419
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->attributeBits:Ljava/util/Optional;

    new-instance v2, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda9;-><init>(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 1420
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1419
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(J)V

    :cond_e
    const-wide/32 v1, -0x80000000

    .line 1423
    invoke-direct {p0, v1, v2, p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFlagSet(JI)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1424
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeInt(I)V

    .line 1425
    iget-object p1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1426
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 1427
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->extendedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    goto :goto_5

    .line 1431
    :cond_f
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1434
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 1435
    throw p1
.end method

.method public toMaskString()Ljava/lang/String;
    .locals 2

    .line 1439
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, "----"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toModeType()I
    .locals 1

    .line 1443
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x1000

    return v0

    :pswitch_2
    const/16 v0, 0x6000

    return v0

    :pswitch_3
    const/16 v0, 0x2000

    return v0

    :pswitch_4
    const v0, 0xc000

    return v0

    :pswitch_5
    const v0, 0xa000

    return v0

    :pswitch_6
    const/16 v0, 0x4000

    return v0

    :pswitch_7
    const v0, 0x8000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toPermissionsString()Ljava/lang/String;
    .locals 3

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1467
    iget v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const/16 v1, 0x2d

    .line 1489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x70

    .line 1478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x62

    .line 1469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x63

    .line 1472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x73

    .line 1481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x6c

    .line 1484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    .line 1475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1492
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions:Ljava/util/Optional;

    new-instance v2, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, "---------"

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public type()I
    .locals 1

    .line 1497
    iget v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->type:I

    return v0
.end method

.method public uid()I
    .locals 2

    .line 1501
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public uidOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1505
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->uid:Ljava/util/Optional;

    return-object v0
.end method

.method public untranslatedName()Ljava/lang/String;
    .locals 2

    .line 1509
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->untranslatedName:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public untranslatedNameOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1513
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->untranslatedName:Ljava/util/Optional;

    return-object v0
.end method

.method public username()Ljava/lang/String;
    .locals 2

    .line 1517
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public usernameOr()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1521
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpFileAttributes;->username:Ljava/util/Optional;

    return-object v0
.end method

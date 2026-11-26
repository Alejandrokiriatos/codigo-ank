.class public Lcom/sshtools/common/sftp/ACL;
.super Ljava/lang/Object;
.source "ACL.java"


# static fields
.field public static final ACE4_ADD_FILE:I = 0x2

.field public static final ACE4_ADD_SUBDIRECTORY:I = 0x4

.field public static final ACE4_APPEND_DATA:I = 0x4

.field public static final ACE4_DELETE:I = 0x10000

.field public static final ACE4_DELETE_CHILD:I = 0x40

.field public static final ACE4_DIRECTORY_INHERIT_ACE:I = 0x2

.field public static final ACE4_EXECUTE:I = 0x20

.field public static final ACE4_FAILED_ACCESS_ACE_FLAG:I = 0x20

.field public static final ACE4_FILE_INHERIT_ACE:I = 0x1

.field public static final ACE4_IDENTIFIER_GROUP:I = 0x40

.field public static final ACE4_INHERIT_ONLY_ACE:I = 0x8

.field public static final ACE4_LIST_DIRECTORY:I = 0x1

.field public static final ACE4_NO_PROPAGATE_INHERIT_ACE:I = 0x4

.field public static final ACE4_READ_ACL:I = 0x20000

.field public static final ACE4_READ_ATTRIBUTES:I = 0x80

.field public static final ACE4_READ_DATA:I = 0x1

.field public static final ACE4_READ_NAMED_ATTRS:I = 0x8

.field public static final ACE4_SUCCESSFUL_ACCESS_ACE_FLAG:I = 0x10

.field public static final ACE4_SYNCHRONIZE:I = 0x100000

.field public static final ACE4_WRITE_ACL:I = 0x40000

.field public static final ACE4_WRITE_ATTRIBUTES:I = 0x100

.field public static final ACE4_WRITE_DATA:I = 0x2

.field public static final ACE4_WRITE_NAMED_ATTRS:I = 0x10

.field public static final ACE4_WRITE_OWNER:I = 0x80000

.field public static final ACL_ALARM_TYPE:I = 0x3

.field public static final ACL_ALLOWED_TYPE:I = 0x0

.field public static final ACL_AUDIT_TYPE:I = 0x2

.field public static final ACL_DENIED_TYPE:I = 0x1


# instance fields
.field private final flags:I

.field private final mask:I

.field private final type:I

.field private final who:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lcom/sshtools/common/sftp/ACL;->type:I

    .line 71
    iput p2, p0, Lcom/sshtools/common/sftp/ACL;->flags:I

    .line 72
    iput p3, p0, Lcom/sshtools/common/sftp/ACL;->mask:I

    .line 73
    iput-object p4, p0, Lcom/sshtools/common/sftp/ACL;->who:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/sshtools/common/sftp/ACL;->flags:I

    return v0
.end method

.method public getMask()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/sshtools/common/sftp/ACL;->mask:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/sshtools/common/sftp/ACL;->type:I

    return v0
.end method

.method public getWho()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sshtools/common/sftp/ACL;->who:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 94
    iget v0, p0, Lcom/sshtools/common/sftp/ACL;->type:I

    iget v1, p0, Lcom/sshtools/common/sftp/ACL;->flags:I

    iget v2, p0, Lcom/sshtools/common/sftp/ACL;->mask:I

    iget-object v3, p0, Lcom/sshtools/common/sftp/ACL;->who:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ACL [type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", flags="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", who="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public interface abstract Lcom/sshtools/common/sftp/SftpSpecification;
.super Ljava/lang/Object;
.source "SftpSpecification.java"


# static fields
.field public static final SSH_FXF_ACCESS_APPEND_DATA:I = 0x8

.field public static final SSH_FXF_ACCESS_APPEND_DATA_ATOMIC:I = 0x10

.field public static final SSH_FXF_ACCESS_AUDIT_ALARM_INFO:I = 0x1000

.field public static final SSH_FXF_ACCESS_BACKUP:I = 0x2000

.field public static final SSH_FXF_ACCESS_BLOCK_ADVISORY:I = 0x200

.field public static final SSH_FXF_ACCESS_BLOCK_DELETE:I = 0x100

.field public static final SSH_FXF_ACCESS_BLOCK_READ:I = 0x40

.field public static final SSH_FXF_ACCESS_BLOCK_WRITE:I = 0x80

.field public static final SSH_FXF_ACCESS_DISPOSITION:I = 0x7

.field public static final SSH_FXF_ACCESS_TEXT_MODE:I = 0x20

.field public static final SSH_FXF_BACKUP_STREAM:I = 0x4000

.field public static final SSH_FXF_CREATE_NEW:I = 0x0

.field public static final SSH_FXF_CREATE_TRUNCATE:I = 0x1

.field public static final SSH_FXF_DELETE_ON_CLOSE:I = 0x800

.field public static final SSH_FXF_NOFOLLOW:I = 0x400

.field public static final SSH_FXF_OPEN_EXISTING:I = 0x2

.field public static final SSH_FXF_OPEN_OR_CREATE:I = 0x3

.field public static final SSH_FXF_OVERRIDE_OWNER:I = 0x8000

.field public static final SSH_FXF_TRUNCATE_EXISTING:I = 0x4

.field public static final SSH_FXP_ATTRS:I = 0x69

.field public static final SSH_FXP_BLOCK:I = 0x16

.field public static final SSH_FXP_CLOSE:I = 0x4

.field public static final SSH_FXP_DATA:I = 0x67

.field public static final SSH_FXP_EXTENDED:I = 0xc8

.field public static final SSH_FXP_EXTENDED_REPLY:I = 0xc9

.field public static final SSH_FXP_FSETSTAT:I = 0xa

.field public static final SSH_FXP_FSTAT:I = 0x8

.field public static final SSH_FXP_HANDLE:I = 0x66

.field public static final SSH_FXP_INIT:I = 0x1

.field public static final SSH_FXP_LINK:I = 0x15

.field public static final SSH_FXP_LSTAT:I = 0x7

.field public static final SSH_FXP_MKDIR:I = 0xe

.field public static final SSH_FXP_NAME:I = 0x68

.field public static final SSH_FXP_OPEN:I = 0x3

.field public static final SSH_FXP_OPENDIR:I = 0xb

.field public static final SSH_FXP_READ:I = 0x5

.field public static final SSH_FXP_READDIR:I = 0xc

.field public static final SSH_FXP_READLINK:I = 0x13

.field public static final SSH_FXP_REALPATH:I = 0x10

.field public static final SSH_FXP_REMOVE:I = 0xd

.field public static final SSH_FXP_RENAME:I = 0x12

.field public static final SSH_FXP_RMDIR:I = 0xf

.field public static final SSH_FXP_SETSTAT:I = 0x9

.field public static final SSH_FXP_STAT:I = 0x11

.field public static final SSH_FXP_STATUS:I = 0x65

.field public static final SSH_FXP_SYMLINK:I = 0x14

.field public static final SSH_FXP_UNBLOCK:I = 0x17

.field public static final SSH_FXP_VERSION:I = 0x2

.field public static final SSH_FXP_WRITE:I = 0x6

.field public static final SSH_FX_BYTE_RANGE_LOCK_CONFLICT:I = 0x19

.field public static final SSH_FX_BYTE_RANGE_LOCK_REFUSED:I = 0x1a

.field public static final SSH_FX_CANNOT_DELETE:I = 0x16

.field public static final SSH_FX_DELETE_PENDING:I = 0x1b

.field public static final SSH_FX_DIR_NOT_EMPTY:I = 0x12

.field public static final SSH_FX_FILE_ALREADY_EXISTS:I = 0xb

.field public static final SSH_FX_FILE_CORRUPT:I = 0x1c

.field public static final SSH_FX_FILE_IS_A_DIRECTORY:I = 0x18

.field public static final SSH_FX_GROUP_INVALID:I = 0x1e

.field public static final SSH_FX_INVALID_FILENAME:I = 0x14

.field public static final SSH_FX_INVALID_HANDLE:I = 0x9

.field public static final SSH_FX_INVALID_PARAMETER:I = 0x17

.field public static final SSH_FX_LINK_LOOP:I = 0x15

.field public static final SSH_FX_LOCK_CONFLICT:I = 0x11

.field public static final SSH_FX_NOT_A_DIRECTORY:I = 0x13

.field public static final SSH_FX_NO_MATCHING_BYTE_RANGE_LOCK:I = 0x1f

.field public static final SSH_FX_NO_MEDIA:I = 0xd

.field public static final SSH_FX_NO_SPACE_ON_FILESYSTEM:I = 0xe

.field public static final SSH_FX_NO_SUCH_PATH:I = 0xa

.field public static final SSH_FX_OWNER_INVALID:I = 0x1d

.field public static final SSH_FX_QUOTA_EXCEEDED:I = 0xf

.field public static final SSH_FX_UNKNOWN_PRINCIPAL:I = 0x10

.field public static final SSH_FX_WRITE_PROTECT:I = 0xc

.field public static final STATUS_FX_EOF:I = 0x1

.field public static final STATUS_FX_FAILURE:I = 0x4

.field public static final STATUS_FX_NO_SUCH_FILE:I = 0x2

.field public static final STATUS_FX_OK:I = 0x0

.field public static final STATUS_FX_OP_UNSUPPORTED:I = 0x8

.field public static final STATUS_FX_PERMISSION_DENIED:I = 0x3


# virtual methods
.method public abstract getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;
.end method

.method public abstract sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sendStatusMessage(IILjava/lang/String;)V
.end method

.class public Lcom/sshtools/common/sftp/extensions/StatVFSExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "StatVFSExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "statvfs@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "statvfs@openssh.com"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    return-void
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 4

    .line 45
    :try_start_0
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getVolume(Ljava/lang/String;)Lcom/sshtools/common/files/FileVolume;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/Packet;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc9

    .line 48
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 49
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 50
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->blockSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 51
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->underlyingBlockSize()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 52
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->blocks()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 53
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->freeBlocks()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 54
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->userFreeBlocks()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 55
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->totalInodes()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 56
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->freeInodes()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 57
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->userFreeInodes()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 58
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->id()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 59
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->flags()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 60
    new-instance v1, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {p1}, Lcom/sshtools/common/files/FileVolume;->maxFilenameLength()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->writeUINT64(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 61
    invoke-virtual {p3, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    .line 65
    const-string p1, "The copy-file operation completed."

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 63
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    .line 64
    throw p1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 71
    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x4

    .line 69
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const/4 v0, 0x2

    .line 67
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportsExtendedMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

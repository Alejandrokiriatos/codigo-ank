.class public final Lcom/sshtools/common/files/direct/NioFile;
.super Ljava/lang/Object;
.source "NioFile.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFile;


# static fields
.field public static final SSH_FXE_STATVFS_ST_NOSUID:I = 0x2

.field public static final SSH_FXE_STATVFS_ST_RDONLY:I = 0x1


# instance fields
.field private final fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

.field private home:Ljava/nio/file/Path;

.field private path:Ljava/nio/file/Path;

.field private sandbox:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 105
    invoke-interface {p3, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sshtools/common/files/direct/NioFile;-><init>(Ljava/nio/file/Path;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V

    return-void
.end method

.method constructor <init>(Ljava/nio/file/Path;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    .line 84
    invoke-interface {p3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->home:Ljava/nio/file/Path;

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 87
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 88
    invoke-static {p1, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, p3}, Ljava/nio/file/Path;->startsWith(Ljava/nio/file/Path;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance p2, Lcom/sshtools/common/permissions/PermissionDeniedException;

    new-array p4, v0, [Ljava/nio/file/LinkOption;

    .line 90
    invoke-interface {p3, p4}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "You cannot access paths outside of the sandbox path {0}. The path {1} was requested."

    invoke-static {p3, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 94
    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/sshtools/common/files/direct/NioFile;->home:Ljava/nio/file/Path;

    .line 95
    iput-object p2, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    .line 97
    iput-boolean p4, p0, Lcom/sshtools/common/files/direct/NioFile;->sandbox:Z

    .line 98
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array p2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    :cond_3
    return-void
.end method

.method private createChannel(Z)Ljava/nio/channels/SeekableByteChannel;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 622
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    sget-object v0, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v0, v2, v1

    invoke-static {p1, v2}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    return-object p1

    .line 624
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 627
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private getFileType(Ljava/nio/file/attribute/BasicFileAttributes;)I
    .locals 1

    .line 755
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 757
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isOther()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x4

    return p1

    .line 759
    :cond_1
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 761
    :cond_2
    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->isRegularFile()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x5

    return p1
.end method

.method private translateException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 768
    instance-of v0, p1, Ljava/nio/file/NoSuchFileException;

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Ljava/io/FileNotFoundException;

    check-cast p1, Ljava/nio/file/NoSuchFileException;

    invoke-virtual {p1}, Ljava/nio/file/NoSuchFileException;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public copyFrom(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 237
    :try_start_0
    instance-of v0, p1, Lcom/sshtools/common/files/direct/NioFile;

    if-eqz v0, :cond_0

    .line 238
    check-cast p1, Lcom/sshtools/common/files/direct/NioFile;

    iget-object p1, p1, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    .line 240
    :cond_0
    invoke-super {p0, p1}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 243
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public createFolder()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v2, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public createNewFile()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 487
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v2, v0, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method public delete(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v0, v0, [Ljava/nio/file/FileVisitOption;

    invoke-static {p1, v0}, Lcom/sshtools/common/util/IOUtils;->silentRecursiveDelete(Ljava/nio/file/Path;[Ljava/nio/file/FileVisitOption;)Z

    move-result p1

    return p1

    .line 267
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {p1}, Ljava/nio/file/Files;->delete(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method protected doGetAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    .line 405
    const-class v1, Ljava/nio/file/attribute/BasicFileAttributes;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 406
    invoke-direct {p0, v1}, Lcom/sshtools/common/files/direct/NioFile;->getFileType(Ljava/nio/file/attribute/BasicFileAttributes;)I

    move-result v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->ofType(ILjava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 410
    :try_start_1
    new-instance v4, Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Lcom/sshtools/common/util/UnsignedInteger64;-><init>(J)V

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withSize(Lcom/sshtools/common/util/UnsignedInteger64;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 413
    :try_start_2
    const-class v4, Ljava/nio/file/attribute/PosixFileAttributes;

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    sget-object v6, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v6, v2, v5

    invoke-static {v0, v4, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v2

    check-cast v2, Ljava/nio/file/attribute/PosixFileAttributes;

    .line 415
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->group()Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/attribute/GroupPrincipal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withGroup(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 416
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->owner()Ljava/nio/file/attribute/UserPrincipal;

    move-result-object v4

    invoke-interface {v4}, Ljava/nio/file/attribute/UserPrincipal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 417
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastAccessTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 418
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 419
    invoke-interface {v2}, Ljava/nio/file/attribute/PosixFileAttributes;->permissions()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Ljava/util/Collection;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 422
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    .line 427
    :catch_0
    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastAccessTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 428
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withLastModifiedTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;

    .line 429
    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withCreateTime(Ljava/nio/file/attribute/FileTime;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 432
    :try_start_4
    const-class v1, Ljava/nio/file/attribute/DosFileAttributes;

    new-array v2, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, v2}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/DosFileAttributes;

    .line 434
    invoke-static {}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->create()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withAllRead()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    .line 436
    invoke-interface {v0}, Ljava/nio/file/attribute/DosFileAttributes;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withAllWrite()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 440
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".exe"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ".com"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".cmd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 441
    :cond_1
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->withAllExecute()Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;

    .line 443
    :cond_2
    invoke-virtual {v1}, Lcom/sshtools/common/sftp/PosixPermissions$PosixPermissionsBuilder;->build()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->withPermissions(Lcom/sshtools/common/sftp/PosixPermissions;)Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 450
    :catch_1
    :try_start_5
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes$SftpFileAttributesBuilder;->build()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    .line 452
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 661
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 663
    :cond_2
    check-cast p1, Lcom/sshtools/common/files/direct/NioFile;

    .line 664
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    iget-object p1, p1, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public existsNoFollowLinks()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile;->doGetAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public getAttributesNoFollowLinks()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile;->existsNoFollowLinks()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/common/files/direct/NioFile;->doGetAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 562
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0

    .line 176
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    .line 178
    new-instance v4, Lcom/sshtools/common/files/direct/NioFile;

    iget-object v5, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    iget-object v6, p0, Lcom/sshtools/common/files/direct/NioFile;->home:Ljava/nio/file/Path;

    iget-boolean v7, p0, Lcom/sshtools/common/files/direct/NioFile;->sandbox:Z

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/sshtools/common/files/direct/NioFile;-><init>(Ljava/nio/file/Path;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 175
    :try_start_1
    invoke-interface {v0}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "Lcom/sshtools/common/files/direct/NioFile;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 164
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 209
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public getOutputStream(Z)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 634
    :try_start_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 636
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public getParentFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/sshtools/common/files/direct/NioFile;

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    iget-object v3, p0, Lcom/sshtools/common/files/direct/NioFile;->home:Ljava/nio/file/Path;

    iget-boolean v4, p0, Lcom/sshtools/common/files/direct/NioFile;->sandbox:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sshtools/common/files/direct/NioFile;-><init>(Ljava/nio/file/Path;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V

    return-object v0
.end method

.method public getVolume()Lcom/sshtools/common/files/FileVolume;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/FileSystem;->provider()Ljava/nio/file/spi/FileSystemProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/nio/file/spi/FileSystemProvider;->getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/sshtools/common/files/direct/NioFile$3;

    invoke-direct {v1, p0, v0}, Lcom/sshtools/common/files/direct/NioFile$3;-><init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/nio/file/FileStore;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirectory()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->isRegularFile(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    .line 231
    invoke-static {v0}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isWritable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v2, v1, [Ljava/nio/file/LinkOption;

    .line 481
    invoke-static {v0, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->isWritable(Ljava/nio/file/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method synthetic lambda$setAttributes$0$com-sshtools-common-files-direct-NioFile(Ljava/lang/String;)V
    .locals 2

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/nio/file/Files;->setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$setAttributes$1$com-sshtools-common-files-direct-NioFile(Ljava/lang/Integer;)V
    .locals 2

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v1

    .line 523
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;

    move-result-object p1

    .line 522
    invoke-static {v0, p1}, Ljava/nio/file/Files;->setOwner(Ljava/nio/file/Path;Ljava/nio/file/attribute/UserPrincipal;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$setAttributes$2$com-sshtools-common-files-direct-NioFile(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1

    .line 520
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->uidOr()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda6;-><init>(Lcom/sshtools/common/files/direct/NioFile;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$setAttributes$3$com-sshtools-common-files-direct-NioFile(Ljava/lang/String;)V
    .locals 3

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const-string v1, "posix:group"

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, p1, v2}, Ljava/nio/file/Files;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$setAttributes$4$com-sshtools-common-files-direct-NioFile(Ljava/lang/Integer;)V
    .locals 3

    .line 535
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const-string v1, "posix:group"

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/file/FileSystem;->getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/nio/file/attribute/UserPrincipalLookupService;->lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1, p1, v2}, Ljava/nio/file/Files;->setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method synthetic lambda$setAttributes$5$com-sshtools-common-files-direct-NioFile(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1

    .line 533
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->uidOr()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/common/files/direct/NioFile;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public lastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->getLastModifiedTime(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 465
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 472
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 474
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public linkFrom(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/direct/NioFile;

    move-result-object v0

    iget-object v0, v0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    .line 117
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    .line 122
    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 125
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public moveTo(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 251
    :try_start_0
    instance-of v0, p1, Lcom/sshtools/common/files/direct/NioFile;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    check-cast p1, Lcom/sshtools/common/files/direct/NioFile;

    iget-object p1, p1, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/CopyOption;

    invoke-static {v0, p1, v1}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    .line 254
    :cond_0
    invoke-super {p0, p1}, Lcom/sshtools/common/files/AbstractFile;->moveTo(Lcom/sshtools/common/files/AbstractFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 257
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public open(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;[B)Lcom/sshtools/common/sftp/OpenFile;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            "Ljava/util/Optional<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;[B)",
            "Lcom/sshtools/common/sftp/OpenFile;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Lcom/sshtools/common/util/UnsignedInteger32;->longValue()J

    move-result-wide v0

    .line 294
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 296
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-nez v3, :cond_7

    const-wide/16 v3, 0x2

    and-long/2addr v3, v0

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 301
    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    const-wide/16 v3, 0x1

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 304
    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const-wide/16 v3, 0x4

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 307
    sget-object v3, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v3, 0x10

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 310
    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    const-wide/16 v3, 0x20

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 313
    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0x8

    and-long/2addr v3, v0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 316
    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_0
    const-wide/16 v3, 0x40

    and-long/2addr v0, v3

    cmp-long v0, v0, v5

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_6
    move v7, v1

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/nio/channels/FileChannel;

    .line 322
    new-instance v3, Lcom/sshtools/common/files/direct/NioFile$1;

    move-object v4, p0

    move-object v9, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v9}, Lcom/sshtools/common/files/direct/NioFile$1;-><init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/util/Optional;Ljava/nio/channels/FileChannel;Z[BLcom/sshtools/common/util/UnsignedInteger32;)V

    return-object v3

    .line 297
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 573
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->createChannel(Z)Ljava/nio/channels/SeekableByteChannel;

    move-result-object p1

    .line 574
    new-instance v0, Lcom/sshtools/common/files/direct/NioFile$2;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/files/direct/NioFile$2;-><init>(Lcom/sshtools/common/files/direct/NioFile;Ljava/nio/channels/SeekableByteChannel;)V

    return-object v0
.end method

.method public readSymbolicLink()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->readSymbolicLink(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 642
    new-instance v0, Lcom/sshtools/common/files/direct/NioFile;

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {v1, p1}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    iget-object v1, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    iget-object v2, p0, Lcom/sshtools/common/files/direct/NioFile;->home:Ljava/nio/file/Path;

    iget-boolean v3, p0, Lcom/sshtools/common/files/direct/NioFile;->sandbox:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sshtools/common/files/direct/NioFile;-><init>(Ljava/nio/file/Path;Lcom/sshtools/common/files/direct/NioFileFactory;Ljava/nio/file/Path;Z)V

    return-object v0
.end method

.method public setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 503
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const-class v1, Ljava/nio/file/attribute/BasicFileAttributeView;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Ljava/nio/file/Files;->getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/BasicFileAttributeView;

    .line 505
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTimeOr()Ljava/util/Optional;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/attribute/FileTime;

    .line 506
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTimeOr()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/attribute/FileTime;

    .line 507
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTimeOr()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/attribute/FileTime;

    .line 504
    invoke-interface {v0, v1, v4, v6}, Ljava/nio/file/attribute/BasicFileAttributeView;->setTimes(Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;Ljava/nio/file/attribute/FileTime;)V

    .line 509
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    iget-object v4, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v4}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v1, v2, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    :try_start_1
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 512
    :try_start_2
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_0

    .line 510
    :try_start_3
    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1

    .line 515
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->usernameOr()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda2;-><init>(Lcom/sshtools/common/files/direct/NioFile;)V

    new-instance v2, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda3;-><init>(Lcom/sshtools/common/files/direct/NioFile;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-static {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 528
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->groupOr()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda4;-><init>(Lcom/sshtools/common/files/direct/NioFile;)V

    new-instance v2, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/sshtools/common/files/direct/NioFile$$ExternalSyntheticLambda5;-><init>(Lcom/sshtools/common/files/direct/NioFile;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    invoke-static {v0, v1, v2}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    .line 540
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpFileAttributes;->permissions()Lcom/sshtools/common/sftp/PosixPermissions;

    move-result-object p1

    .line 541
    sget-object v0, Lcom/sshtools/common/sftp/PosixPermissions;->EMPTY:Lcom/sshtools/common/sftp/PosixPermissions;

    invoke-virtual {p1, v0}, Lcom/sshtools/common/sftp/PosixPermissions;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    if-nez v0, :cond_2

    .line 544
    :try_start_5
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v1, v5, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object v3
    :try_end_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    if-eqz v3, :cond_2

    .line 548
    :try_start_6
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/PosixPermissions;->asPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/PosixPermissions;->asPermissions()Ljava/util/Set;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_2
    return-void

    :catch_1
    move-exception p1

    .line 553
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public supportsRandomAccess()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public symlinkFrom(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->fileFactory:Lcom/sshtools/common/files/direct/NioFileFactory;

    invoke-virtual {v0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/direct/NioFile;

    move-result-object v0

    iget-object v0, v0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    .line 133
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v0, v1}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p1

    .line 138
    iget-object v2, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-interface {p1, v0}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p1

    new-array v0, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, p1, v0}, Ljava/nio/file/Files;->createSymbolicLink(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 141
    invoke-direct {p0, p1}, Lcom/sshtools/common/files/direct/NioFile;->translateException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public truncate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 497
    iget-object v0, p0, Lcom/sshtools/common/files/direct/NioFile;->path:Ljava/nio/file/Path;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    return-void
.end method

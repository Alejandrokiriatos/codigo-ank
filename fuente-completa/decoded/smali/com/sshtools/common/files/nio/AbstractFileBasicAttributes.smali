.class public Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;
.super Ljava/lang/Object;
.source "AbstractFileBasicAttributes.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# instance fields
.field private final e:Lcom/sshtools/common/files/AbstractFile;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method


# virtual methods
.method public creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOther()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRegularFile()Z
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;->e:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

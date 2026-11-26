.class public Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;
.super Ljava/nio/file/spi/FileSystemProvider;
.source "AbstractFileNIOProvider.java"


# static fields
.field static existingFilesystems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/nio/file/FileSystem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->existingFilesystems:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/nio/file/spi/FileSystemProvider;-><init>()V

    return-void
.end method

.method static final toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    instance-of v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    if-eqz v0, :cond_0

    .line 95
    check-cast p0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    return-object p0

    .line 94
    :cond_0
    new-instance p0, Ljava/nio/file/ProviderMismatchException;

    invoke-direct {p0}, Ljava/nio/file/ProviderMismatchException;-><init>()V

    throw p0
.end method


# virtual methods
.method public varargs checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 228
    :try_start_0
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p2, v2

    .line 232
    sget-object v4, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider$1;->$SwitchMap$java$nio$file$AccessMode:[I

    invoke-virtual {v3}, Ljava/nio/file/AccessMode;->ordinal()I

    move-result v5

    aget v4, v4, v5
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "No %s access to %s"

    const/4 v6, 0x1

    if-eq v4, v6, :cond_2

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    :try_start_1
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 243
    :cond_1
    new-instance p2, Ljava/nio/file/AccessDeniedException;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    :cond_2
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_3
    new-instance p2, Ljava/nio/file/AccessDeniedException;

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/AccessDeniedException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return-void

    .line 229
    :cond_5
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
    :try_end_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 251
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    :try_start_0
    invoke-static {p2}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 181
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 160
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public delete(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 171
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs getFileAttributeView(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/nio/file/attribute/FileAttributeView;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TV;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TV;"
        }
    .end annotation

    .line 258
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->get(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/lang/Class;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p1

    return-object p1
.end method

.method public getFileStore(Ljava/nio/file/Path;)Ljava/nio/file/FileStore;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileSystem(Ljava/net/URI;)Ljava/nio/file/FileSystem;
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getPath(Ljava/net/URI;)Ljava/nio/file/Path;
    .locals 2

    .line 105
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileURI;->parse(Ljava/net/URI;)Lcom/sshtools/common/files/nio/AbstractFileURI;

    move-result-object p1

    .line 106
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->existingFilesystems:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileURI;->getConnectionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileSystem;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileURI;->getPath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    return-object p1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "abfs"

    return-object v0
.end method

.method public isHidden(Ljava/nio/file/Path;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isHidden()Z

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 210
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p2}, Lcom/sshtools/common/files/AbstractFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 201
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-static {p2}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFile;->moveTo(Lcom/sshtools/common/files/AbstractFile;)V
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 192
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public varargs newByteChannel(Ljava/nio/file/Path;Ljava/util/Set;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Set<",
            "+",
            "Ljava/nio/file/OpenOption;",
            ">;[",
            "Ljava/nio/file/attribute/FileAttribute<",
            "*>;)",
            "Ljava/nio/channels/SeekableByteChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    new-instance p2, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;

    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/sshtools/common/files/nio/AbstractFileSeekableByteChannel;-><init>(Lcom/sshtools/common/files/AbstractFile;)V

    return-object p2
.end method

.method public newDirectoryStream(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/nio/file/DirectoryStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/nio/file/DirectoryStream<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;

    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;-><init>(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/nio/file/DirectoryStream$Filter;)V

    return-object v0
.end method

.method public newFileSystem(Ljava/net/URI;Ljava/util/Map;)Ljava/nio/file/FileSystem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/nio/file/FileSystem;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 77
    const-string v0, "connection"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/common/ssh/SshConnection;

    .line 78
    invoke-static {p2}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    .line 82
    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->existingFilesystems:Ljava/util/Map;

    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getUUID()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-direct {v2, p2, p1, p0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/net/URI;Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object p1, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->existingFilesystems:Ljava/util/Map;

    invoke-interface {p2}, Lcom/sshtools/common/ssh/SshConnection;->getUUID()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/FileSystem;

    return-object p1

    .line 83
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Incorrect connection id in URI authority"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing connection object in file system environment"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Missing connection id in URI authority"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 112
    sget-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 114
    new-array p2, p2, [Ljava/nio/file/AccessMode;

    const/4 v0, 0x0

    sget-object v1, Ljava/nio/file/AccessMode;->READ:Ljava/nio/file/AccessMode;

    aput-object v1, p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 116
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s is not supported by this method."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 125
    sget-object v0, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    .line 129
    :try_start_0
    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "%s already exists, and the option %s was specified."

    sget-object v1, Ljava/nio/file/StandardOpenOption;->CREATE_NEW:Ljava/nio/file/StandardOpenOption;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->createNewFile()Z

    const/4 v1, 0x1

    .line 135
    new-array v1, v1, [Ljava/nio/file/AccessMode;

    sget-object v2, Ljava/nio/file/AccessMode;->WRITE:Ljava/nio/file/AccessMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->checkAccess(Ljava/nio/file/Path;[Ljava/nio/file/AccessMode;)V

    .line 137
    sget-object p1, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%s is not supported by this method."

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/nio/file/attribute/BasicFileAttributes;",
            ">(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/nio/file/LinkOption;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 265
    const-class p3, Ljava/nio/file/attribute/BasicFileAttributes;

    if-eq p2, p3, :cond_1

    const-class p3, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 266
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    move-result-object p1

    return-object p1
.end method

.method public varargs readAttributes(Ljava/nio/file/Path;Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/lang/String;",
            "[",
            "Ljava/nio/file/LinkOption;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/sshtools/common/files/nio/AbstractFilePath;->readAttributes(Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public varargs setAttribute(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

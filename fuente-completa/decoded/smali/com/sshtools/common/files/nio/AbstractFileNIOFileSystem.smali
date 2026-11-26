.class public Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;
.super Ljava/nio/file/FileSystem;
.source "AbstractFileNIOFileSystem.java"


# static fields
.field static supportedViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field con:Lcom/sshtools/common/ssh/SshConnection;

.field provider:Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;

.field uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "basic"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->supportedViews:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/net/URI;Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/nio/file/FileSystem;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 59
    iput-object p2, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->uri:Ljava/net/URI;

    .line 60
    iput-object p3, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->provider:Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;

    return-void
.end method


# virtual methods
.method public assertOpen()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getConnection()Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-object v0
.end method

.method public getFileStores()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/FileStore;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$1;

    new-instance v2, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$1;

    invoke-direct {v2, p0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$1;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public varargs getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 2

    .line 179
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 181
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 183
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    array-length p1, p2

    if-lez p1, :cond_1

    .line 186
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    :cond_1
    new-instance p1, Lcom/sshtools/common/files/nio/AbstractFilePath;

    invoke-direct {p1, p0, v1, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object p1
.end method

.method public getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRootDirectories()Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sshtools/common/files/nio/AbstractFilePath;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getRootPath()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getRootPath()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3

    .line 213
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object v0
.end method

.method public getSeparator()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "/"

    return-object v0
.end method

.method public getUserPrincipalLookupService()Ljava/nio/file/attribute/UserPrincipalLookupService;
    .locals 1

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public iterator(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)",
            "Ljava/util/Iterator<",
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
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;->toAbstractFilePath(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object p2

    .line 152
    invoke-interface {p2}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p2

    .line 153
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem$2;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Ljava/nio/file/Path;)V
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newWatchService()Ljava/nio/file/WatchService;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public provider()Ljava/nio/file/spi/FileSystemProvider;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->provider:Lcom/sshtools/common/files/nio/AbstractFileNIOProvider;

    return-object v0
.end method

.method public supportedFileAttributeViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->supportedViews:Ljava/util/Set;

    return-object v0
.end method

.class public Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;
.super Ljava/lang/Object;
.source "AbstractFileDirectoryStream.java"

# interfaces
.implements Ljava/nio/file/DirectoryStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/nio/file/DirectoryStream<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final filter:Ljava/nio/file/DirectoryStream$Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final fs:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

.field private volatile iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field private volatile open:Z

.field private final path:Ljava/nio/file/Path;


# direct methods
.method static bridge synthetic -$$Nest$fgetiterator(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->iterator:Ljava/util/Iterator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetopen(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->open:Z

    return p0
.end method

.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/nio/file/DirectoryStream$Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/nio/AbstractFilePath;",
            "Ljava/nio/file/DirectoryStream$Filter<",
            "-",
            "Ljava/nio/file/Path;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->open:Z

    .line 41
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->fs:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    .line 42
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->path:Ljava/nio/file/Path;

    .line 43
    iput-object p2, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    const/4 p2, 0x0

    .line 44
    new-array p2, p2, [Ljava/nio/file/LinkOption;

    invoke-static {p1, p2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p2, Ljava/nio/file/NotDirectoryException;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/nio/file/NotDirectoryException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 50
    :try_start_0
    iput-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->open:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->open:Z

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->iterator:Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->fs:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->path:Ljava/nio/file/Path;

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->filter:Ljava/nio/file/DirectoryStream$Filter;

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->iterator(Ljava/nio/file/Path;Ljava/nio/file/DirectoryStream$Filter;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;->iterator:Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;

    invoke-direct {v0, p0}, Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream$1;-><init>(Lcom/sshtools/common/files/nio/AbstractFileDirectoryStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 56
    :cond_1
    new-instance v0, Ljava/nio/file/ClosedDirectoryStreamException;

    invoke-direct {v0}, Ljava/nio/file/ClosedDirectoryStreamException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

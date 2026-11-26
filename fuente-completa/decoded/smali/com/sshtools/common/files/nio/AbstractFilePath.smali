.class public Lcom/sshtools/common/files/nio/AbstractFilePath;
.super Ljava/lang/Object;
.source "AbstractFilePath.java"

# interfaces
.implements Ljava/nio/file/Path;


# static fields
.field private static final CURRENT_DIR:Ljava/lang/String; = "."

.field private static final PARENT_DIR:Ljava/lang/String; = ".."

.field public static final SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private final absolute:Z

.field private final con:Lcom/sshtools/common/ssh/SshConnection;

.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 62
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iput-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    .line 63
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    .line 64
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    .line 65
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-void
.end method

.method static cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3

    .line 77
    instance-of v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    if-eqz v0, :cond_0

    .line 78
    check-cast p0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    .line 79
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    return-object p0

    .line 82
    :cond_0
    new-instance v0, Ljava/nio/file/ProviderMismatchException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Used a path from different provider: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/nio/file/ProviderMismatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static castAndAssertAbsolute(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3

    .line 69
    invoke-static {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Path must be absolute but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private copyWithAbsolute(Z)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3

    .line 383
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object v0
.end method

.method private copyWithElements(Ljava/util/List;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sshtools/common/files/nio/AbstractFilePath;"
        }
    .end annotation

    .line 379
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iget-boolean v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    invoke-direct {v0, v1, p1, v2}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object v0
.end method

.method private copyWithElementsAndAbsolute(Ljava/util/List;Z)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/sshtools/common/files/nio/AbstractFilePath;"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-direct {v0, v1, p1, p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object v0
.end method

.method private countCommonPrefixElements(Lcom/sshtools/common/files/nio/AbstractFilePath;Lcom/sshtools/common/files/nio/AbstractFilePath;)I
    .locals 4

    .line 260
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 262
    iget-object v2, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p2, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private resolveAllSymlinksInPath()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/nio/file/Path;)I
    .locals 3

    .line 339
    check-cast p1, Lcom/sshtools/common/files/nio/AbstractFilePath;

    .line 340
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 341
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v0

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 184
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->endsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public endsWith(Ljava/nio/file/Path;)Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 170
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    move-result-object v0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 173
    :cond_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    .line 174
    iget-object v0, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 363
    instance-of v0, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 364
    check-cast p1, Lcom/sshtools/common/files/nio/AbstractFilePath;

    .line 365
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iget-object v2, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->compareTo(Ljava/nio/file/Path;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getAbstractFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getContext()Lcom/sshtools/common/ssh/Context;

    move-result-object v0

    const-class v1, Lcom/sshtools/common/policy/FileSystemPolicy;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/Context;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/FileSystemPolicy;

    .line 393
    invoke-virtual {v0}, Lcom/sshtools/common/policy/FileSystemPolicy;->getFileFactory()Lcom/sshtools/common/policy/FileFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 394
    invoke-interface {v0, v1}, Lcom/sshtools/common/policy/FileFactory;->getFileFactory(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0
    :try_end_0
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 396
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttributes()Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;

    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getAbstractFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sshtools/common/files/nio/AbstractFileBasicAttributes;-><init>(Lcom/sshtools/common/files/AbstractFile;)V

    return-object v0
.end method

.method public getFileName()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 106
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getName(I)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileName()Ljava/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileName()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    return-object v0
.end method

.method public bridge synthetic getFileSystem()Ljava/nio/file/FileSystem;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    move-result-object v0

    return-object v0
.end method

.method public getName(I)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    add-int/lit8 v0, p1, 0x1

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->subpath(II)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getName(I)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getName(I)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public getNameCount()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 131
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 117
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 119
    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    const/4 v3, 0x0

    sub-int/2addr v0, v1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->copyWithElements(Ljava/util/List;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getRoot()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getParent()Ljava/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getParent()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 100
    iget-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getRootPath()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getRoot()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 356
    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 357
    iget-boolean v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isAbsolute()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 94
    iget-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 321
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath$1;

    invoke-direct {v0, p0}, Lcom/sshtools/common/files/nio/AbstractFilePath$1;-><init>(Lcom/sshtools/common/files/nio/AbstractFilePath;)V

    return-object v0
.end method

.method public normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 190
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "."

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 195
    :cond_1
    const-string v4, ".."

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_3
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->copyWithElements(Ljava/util/List;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic normalize()Ljava/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method varargs readAttributes(Ljava/lang/String;[Ljava/nio/file/LinkOption;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/16 p2, 0x3a

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 410
    const-string p2, "basic"

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    .line 412
    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 415
    :goto_0
    invoke-static {p0, p2}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->get(Lcom/sshtools/common/files/nio/AbstractFilePath;Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFileAttributeView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 419
    invoke-virtual {p2, p1}, Lcom/sshtools/common/files/nio/AbstractFileAttributeView;->readAttributes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 417
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "view not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;)Ljava/nio/file/WatchKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;)",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    iget-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 315
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Method not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs register(Ljava/nio/file/WatchService;[Ljava/nio/file/WatchEvent$Kind;[Ljava/nio/file/WatchEvent$Modifier;)Ljava/nio/file/WatchKey;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/WatchService;",
            "[",
            "Ljava/nio/file/WatchEvent$Kind<",
            "*>;[",
            "Ljava/nio/file/WatchEvent$Modifier;",
            ")",
            "Ljava/nio/file/WatchKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    iget-object p1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 309
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Method not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public relativize(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 245
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    .line 246
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    .line 247
    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 248
    invoke-direct {p0, v0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->countCommonPrefixElements(Lcom/sshtools/common/files/nio/AbstractFilePath;Lcom/sshtools/common/files/nio/AbstractFilePath;)I

    move-result v0

    .line 249
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result v1

    sub-int/2addr v1, v0

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    const-string v3, ".."

    invoke-static {v1, v3}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object v1, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getNameCount()I

    move-result p1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 253
    invoke-direct {p0, v2, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->copyWithElementsAndAbsolute(Ljava/util/List;Z)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1

    .line 255
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t relativize an absolute path relative to a relative path."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->relativize(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 221
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolve(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 207
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 211
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 213
    iget-object p1, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->copyWithElements(Ljava/util/List;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolve(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolve(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 239
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolveSibling(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public resolveSibling(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 227
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getParent()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    .line 228
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolve(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public bridge synthetic resolveSibling(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolveSibling(Ljava/lang/String;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic resolveSibling(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolveSibling(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 164
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->startsWith(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public startsWith(Ljava/nio/file/Path;)Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 149
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->getFileSystem()Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    move-result-object v0

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileSystem()Ljava/nio/file/FileSystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    invoke-static {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->cast(Ljava/nio/file/Path;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 154
    iget-object v0, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v0, v2, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    iget-object v2, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public subpath(II)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 143
    new-instance v0, Lcom/sshtools/common/files/nio/AbstractFilePath;

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, v1, p1, p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;-><init>(Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;Ljava/util/List;Z)V

    return-object v0
.end method

.method public bridge synthetic subpath(II)Ljava/nio/file/Path;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/files/nio/AbstractFilePath;->subpath(II)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public toAbsolutePath()Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 278
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    .line 281
    invoke-direct {p0, v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->copyWithAbsolute(Z)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toAbsolutePath()Ljava/nio/file/Path;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->toAbsolutePath()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    return-object v0
.end method

.method public toFile()Ljava/io/File;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public varargs toRealPath([Ljava/nio/file/LinkOption;)Lcom/sshtools/common/files/nio/AbstractFilePath;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 288
    invoke-virtual {p0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->normalize()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->toAbsolutePath()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object v0

    .line 289
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 290
    invoke-direct {v0}, Lcom/sshtools/common/files/nio/AbstractFilePath;->resolveAllSymlinksInPath()Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public bridge synthetic toRealPath([Ljava/nio/file/LinkOption;)Ljava/nio/file/Path;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/sshtools/common/files/nio/AbstractFilePath;->toRealPath([Ljava/nio/file/LinkOption;)Lcom/sshtools/common/files/nio/AbstractFilePath;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 374
    iget-boolean v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->absolute:Z

    const-string v1, "/"

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 375
    :goto_0
    iget-object v2, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUri()Ljava/net/URI;
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->assertOpen()V

    .line 272
    iget-object v0, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->fileSystem:Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;

    invoke-virtual {v0}, Lcom/sshtools/common/files/nio/AbstractFileNIOFileSystem;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/files/nio/AbstractFilePath;->elements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sshtools/common/files/nio/AbstractFileURI;->create(Lcom/sshtools/common/ssh/SshConnection;[Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

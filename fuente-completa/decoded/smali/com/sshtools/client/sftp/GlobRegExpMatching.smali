.class public Lcom/sshtools/client/sftp/GlobRegExpMatching;
.super Ljava/lang/Object;
.source "GlobRegExpMatching.java"

# interfaces
.implements Lcom/sshtools/client/sftp/RegularExpressionMatching;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchFileNamesWithPattern([Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 61
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glob:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p2

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 65
    invoke-interface {v4}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 66
    invoke-interface {p2, v5}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-interface {v4}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-array p1, v2, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public matchFilesWithPattern([Lcom/sshtools/client/sftp/SftpFile;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 45
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glob:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p2

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 49
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpFile;->getFilename()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 50
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 53
    :cond_1
    new-array p1, v2, [Lcom/sshtools/client/sftp/SftpFile;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sshtools/client/sftp/SftpFile;

    return-object p1
.end method

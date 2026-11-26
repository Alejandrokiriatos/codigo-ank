.class public Lcom/sshtools/common/sftp/GlobSftpFileFilter;
.super Ljava/lang/Object;
.source "GlobSftpFileFilter.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpFileFilter;


# instance fields
.field matcher:Ljava/nio/file/PathMatcher;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "glob:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/file/FileSystem;->getPathMatcher(Ljava/lang/String;)Ljava/nio/file/PathMatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/sftp/GlobSftpFileFilter;->matcher:Ljava/nio/file/PathMatcher;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/sshtools/common/sftp/GlobSftpFileFilter;->matcher:Ljava/nio/file/PathMatcher;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/nio/file/PathMatcher;->matches(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

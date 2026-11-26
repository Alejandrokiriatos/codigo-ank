.class Lcom/sshtools/client/sftp/SftpClient$1;
.super Ljava/lang/Object;
.source "SftpClient.java"

# interfaces
.implements Ljava/nio/file/attribute/BasicFileAttributes;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/sftp/SftpClient;->fileToBasicAttributes(Lcom/sshtools/client/sftp/SftpFile;)Ljava/nio/file/attribute/BasicFileAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/sftp/SftpClient;

.field final synthetic val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpClient;Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3974
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpClient$1;->this$0:Lcom/sshtools/client/sftp/SftpClient;

    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public creationTime()Ljava/nio/file/attribute/FileTime;
    .locals 3

    .line 3977
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->createTimeOr()Ljava/util/Optional;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/nio/file/attribute/FileTime;->fromMillis(J)Ljava/nio/file/attribute/FileTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/attribute/FileTime;

    return-object v0
.end method

.method public fileKey()Ljava/lang/Object;
    .locals 1

    .line 3982
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    .line 3987
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isOther()Z
    .locals 1

    .line 3992
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRegularFile()Z
    .locals 1

    .line 3997
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v0

    return v0
.end method

.method public isSymbolicLink()Z
    .locals 1

    .line 4002
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isLink()Z

    move-result v0

    return v0
.end method

.method public lastAccessTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 4007
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastAccessTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public lastModifiedTime()Ljava/nio/file/attribute/FileTime;
    .locals 1

    .line 4012
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .line 4017
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClient$1;->val$attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

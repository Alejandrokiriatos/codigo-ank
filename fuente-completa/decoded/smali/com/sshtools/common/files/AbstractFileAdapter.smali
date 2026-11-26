.class public abstract Lcom/sshtools/common/files/AbstractFileAdapter;
.super Ljava/lang/Object;
.source "AbstractFileAdapter.java"

# interfaces
.implements Lcom/sshtools/common/files/AbstractFile;


# instance fields
.field protected file:Lcom/sshtools/common/files/AbstractFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V

    return-void
.end method

.method public createFolder()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    move-result v0

    return v0
.end method

.method public createNewFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->createNewFile()Z

    move-result v0

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

    .line 150
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    move-result p1

    return p1
.end method

.method public exists()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

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

    .line 90
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getCanonicalPath()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
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

    .line 82
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "+",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;"
        }
    .end annotation
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream(Z)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream(Z)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getParentFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getParentFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v0

    return-object v0
.end method

.method protected init(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method

.method public isDirectory()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v0

    return v0
.end method

.method public isFile()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

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

    .line 127
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isReadable()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->isWritable()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public linkFrom(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->linkFrom(Ljava/lang/String;)V

    return-void
.end method

.method public moveTo(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->moveTo(Lcom/sshtools/common/files/AbstractFile;)V

    return-void
.end method

.method public openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;

    move-result-object p1

    return-object p1
.end method

.method public readSymbolicLink()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->readSymbolicLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->refresh()V

    :cond_0
    return-void
.end method

.method public resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1
.end method

.method public setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    return-void
.end method

.method public startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;

    move-result-object p1

    return-object p1
.end method

.method public supportsMultipartTransfers()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->supportsMultipartTransfers()Z

    move-result v0

    return v0
.end method

.method public supportsRandomAccess()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->supportsRandomAccess()Z

    move-result v0

    return v0
.end method

.method public symlinkFrom(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->symlinkFrom(Ljava/lang/String;)V

    return-void
.end method

.method public truncate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sshtools/common/files/AbstractFileAdapter;->file:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->truncate()V

    return-void
.end method

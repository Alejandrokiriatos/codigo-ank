.class public interface abstract Lcom/sshtools/common/files/AbstractFile;
.super Ljava/lang/Object;
.source "AbstractFile.java"


# virtual methods
.method public copyFrom(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 136
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    .line 138
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/files/AbstractFile;

    .line 139
    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V

    goto :goto_0

    .line 141
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 143
    :try_start_0
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 144
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->transferTo(Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 145
    :try_start_2
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz p1, :cond_2

    .line 146
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    .line 143
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_4

    .line 142
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0

    .line 148
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot copy object that is not directory or a regular file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract createFolder()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createNewFile()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public existsNoFollowLinks()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 49
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v0

    return v0
.end method

.method public abstract getAbsolutePath()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
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

    .line 77
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCanonicalPath()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getChildren()Ljava/util/List;
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

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getOutputStream(Z)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract getParentFile()Lcom/sshtools/common/files/AbstractFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public getVolume()Lcom/sshtools/common/files/FileVolume;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "File storage information is not available on this file system."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isDirectory()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract isFile()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract isHidden()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract isReadable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract isWritable()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract lastModified()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract length()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public linkFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 119
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public moveTo(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 155
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    .line 157
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/files/AbstractFile;

    .line 158
    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sshtools/common/files/AbstractFile;->copyFrom(Lcom/sshtools/common/files/AbstractFile;)V

    .line 159
    invoke-interface {v2, v1}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 163
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->transferTo(Ljava/io/OutputStream;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 165
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_2
    invoke-interface {p0, v1}, Lcom/sshtools/common/files/AbstractFile;->delete(Z)Z

    return-void

    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    .line 163
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_4

    .line 162
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1

    .line 168
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot move object that is not directory or a regular file"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public open(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;[B)Lcom/sshtools/common/sftp/OpenFile;
    .locals 0
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

    .line 99
    invoke-interface {p0}, Lcom/sshtools/common/files/AbstractFile;->supportsRandomAccess()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 100
    new-instance p2, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;

    invoke-direct {p2, p0, p1, p3}, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;-><init>(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/util/UnsignedInteger32;[B)V

    return-object p2

    .line 102
    :cond_0
    new-instance p2, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;

    invoke-direct {p2, p0, p1, p3}, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;-><init>(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/util/UnsignedInteger32;[B)V

    return-object p2
.end method

.method public abstract openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public readSymbolicLink()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract refresh()V
.end method

.method public abstract resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract setAttributes(Lcom/sshtools/common/sftp/SftpFileAttributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public supportsMultipartTransfers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract supportsRandomAccess()Z
.end method

.method public symlinkFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 115
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public symlinkTo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 180
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Symbolic linking is not available on this file system."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract truncate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

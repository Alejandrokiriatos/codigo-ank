.class public Lcom/sshtools/client/sftp/DirectoryOperation;
.super Ljava/lang/Object;
.source "DirectoryOperation.java"


# instance fields
.field deletedFiles:Ljava/util/Vector;

.field failedTransfers:Ljava/util/Hashtable;

.field newFiles:Ljava/util/Vector;

.field recursedDirectories:Ljava/util/Vector;

.field unchangedFiles:Ljava/util/Vector;

.field updatedFiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    .line 53
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    .line 56
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->recursedDirectories:Ljava/util/Vector;

    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method addAll(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 1

    .line 203
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method addDeletedFile(Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addDeletedFile(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addDirectoryOperation(Lcom/sshtools/client/sftp/DirectoryOperation;Lcom/sshtools/common/files/AbstractFile;)V
    .locals 4

    .line 188
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getUpdatedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 189
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getNewFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 190
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getUnchangedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 191
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getDeletedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 194
    iget-object v0, p1, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->recursedDirectories:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addDirectoryOperation(Lcom/sshtools/client/sftp/DirectoryOperation;Ljava/lang/String;)V
    .locals 4

    .line 225
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getUpdatedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 226
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getNewFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 227
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getUnchangedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 228
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/DirectoryOperation;->getDeletedFiles()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/sftp/DirectoryOperation;->addAll(Ljava/util/Vector;Ljava/util/Vector;)V

    .line 231
    iget-object v0, p1, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    iget-object v3, p1, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->recursedDirectories:Ljava/util/Vector;

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addFailedTransfer(Lcom/sshtools/client/sftp/SftpFile;Lcom/sshtools/common/sftp/SftpStatusException;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addFailedTransfer(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/sftp/SftpStatusException;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addNewFile(Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addNewFile(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addUnchangedFile(Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addUnchangedFile(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addUpdatedFile(Lcom/sshtools/client/sftp/SftpFile;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method addUpdatedFile(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public containsFile(Lcom/sshtools/client/sftp/SftpFile;)Z
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    .line 175
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->recursedDirectories:Ljava/util/Vector;

    .line 176
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public containsFile(Lcom/sshtools/common/files/AbstractFile;)Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    .line 162
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->recursedDirectories:Ljava/util/Vector;

    .line 163
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    .line 164
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getDeletedFiles()Ljava/util/Vector;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->deletedFiles:Ljava/util/Vector;

    return-object v0
.end method

.method public getFailedTransfers()Ljava/util/Hashtable;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->failedTransfers:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getFileCount()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getNewFiles()Ljava/util/Vector;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    return-object v0
.end method

.method public getTransferSize()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->newFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 254
    instance-of v4, v3, Lcom/sshtools/common/files/AbstractFile;

    if-eqz v4, :cond_1

    .line 255
    check-cast v3, Lcom/sshtools/common/files/AbstractFile;

    .line 256
    invoke-interface {v3}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 257
    invoke-interface {v3}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v3

    :goto_1
    add-long/2addr v1, v3

    goto :goto_0

    .line 259
    :cond_1
    instance-of v4, v3, Lcom/sshtools/client/sftp/SftpFile;

    if-eqz v4, :cond_0

    .line 260
    check-cast v3, Lcom/sshtools/client/sftp/SftpFile;

    .line 261
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 267
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 269
    instance-of v4, v3, Lcom/sshtools/common/files/AbstractFile;

    if-eqz v4, :cond_4

    .line 270
    check-cast v3, Lcom/sshtools/common/files/AbstractFile;

    .line 271
    invoke-interface {v3}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    invoke-interface {v3}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v3

    :goto_3
    add-long/2addr v1, v3

    goto :goto_2

    .line 274
    :cond_4
    instance-of v4, v3, Lcom/sshtools/client/sftp/SftpFile;

    if-eqz v4, :cond_3

    .line 275
    check-cast v3, Lcom/sshtools/client/sftp/SftpFile;

    .line 276
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 277
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->attributes()Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_5
    return-wide v1
.end method

.method public getUnchangedFiles()Ljava/util/Vector;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->unchangedFiles:Ljava/util/Vector;

    return-object v0
.end method

.method public getUpdatedFiles()Ljava/util/Vector;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sshtools/client/sftp/DirectoryOperation;->updatedFiles:Ljava/util/Vector;

    return-object v0
.end method

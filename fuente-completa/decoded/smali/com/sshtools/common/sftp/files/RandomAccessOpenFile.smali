.class public Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;
.super Ljava/lang/Object;
.source "RandomAccessOpenFile.java"

# interfaces
.implements Lcom/sshtools/common/sftp/OpenFile;


# instance fields
.field closed:Z

.field f:Lcom/sshtools/common/files/AbstractFile;

.field flags:Lcom/sshtools/common/util/UnsignedInteger32;

.field handle:[B

.field raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

.field textMode:Z


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/util/UnsignedInteger32;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->textMode:Z

    .line 47
    iput-object p1, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    .line 48
    iput-object p2, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 49
    iput-object p3, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->handle:[B

    .line 50
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p3

    and-int/lit8 p3, p3, 0x2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    invoke-interface {p1, p3}, Lcom/sshtools/common/files/AbstractFile;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    .line 51
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->textMode:Z

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->isTextMode()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 53
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is being opened in TEXT mode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iput-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->closed:Z

    return-void

    :catchall_0
    move-exception v1

    .line 65
    iput-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    .line 66
    throw v1
.end method

.method public getFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->closed:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->getFilePointer()J

    move-result-wide v0

    return-wide v0

    .line 101
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed [getFilePointer]."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFlags()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getHandle()[B
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->handle:[B

    return-object v0
.end method

.method public isTextMode()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->textMode:Z

    return v0
.end method

.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 108
    const-string v0, "ABSTRACT_FILE"

    iget-object v1, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 109
    const-string v0, "ABSTRACT_FILE_RAF"

    iget-object v1, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    return-void
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 71
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->closed:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->read([BII)I

    move-result p1

    return p1
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->closed:Z

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0, p1, p2}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->seek(J)V

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File has been closed [getOutputStream]."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 78
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->closed:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/RandomAccessOpenFile;->raf:Lcom/sshtools/common/files/AbstractFileRandomAccess;

    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->write([BII)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File has been closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

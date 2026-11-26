.class public Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;
.super Ljava/lang/Object;
.source "PseduoRandomOpenFile.java"

# interfaces
.implements Lcom/sshtools/common/sftp/OpenFile;


# instance fields
.field closed:Z

.field f:Lcom/sshtools/common/files/AbstractFile;

.field filePointer:J

.field flags:Lcom/sshtools/common/util/UnsignedInteger32;

.field handle:[B

.field in:Ljava/io/InputStream;

.field out:Ljava/io/OutputStream;

.field textMode:Z


# direct methods
.method public constructor <init>(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/common/util/UnsignedInteger32;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 42
    iput-boolean p3, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->textMode:Z

    .line 49
    iput-object p1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    .line 50
    iput-object p2, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 51
    invoke-virtual {p2}, Lcom/sshtools/common/util/UnsignedInteger32;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0x40

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->textMode:Z

    .line 52
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->isTextMode()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

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

    new-array p2, p3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed [getInputStream]."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 121
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    if-nez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    return-object v0

    .line 122
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed [getOutputStream]."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iput-object v1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    .line 72
    throw v0

    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 76
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    iput-object v1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    goto :goto_1

    :catchall_1
    move-exception v0

    iput-object v1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    .line 79
    throw v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    return-void
.end method

.method public getFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    if-nez v0, :cond_0

    .line 158
    iget-wide v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    return-wide v0

    .line 156
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File has been closed [getFilePointer]."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFlags()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getHandle()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->handle:[B

    return-object v0
.end method

.method public isTextMode()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->textMode:Z

    return v0
.end method

.method public processEvent(Lcom/sshtools/common/events/Event;)V
    .locals 2

    .line 163
    const-string v0, "ABSTRACT_FILE"

    iget-object v1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->f:Lcom/sshtools/common/files/AbstractFile;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 165
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 166
    const-string v1, "ABSTRACT_FILE_IN"

    invoke-virtual {p1, v1, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 169
    const-string v1, "ABSTRACT_FILE_OUT"

    invoke-virtual {p1, v1, v0}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    :cond_1
    return-void
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 85
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 88
    :cond_0
    iget-wide v2, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    add-int v3, p2, v2

    sub-int v6, p3, v2

    .line 93
    invoke-virtual {v0, p1, v3, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ne v3, v1, :cond_2

    if-nez v2, :cond_3

    .line 96
    iput-wide v4, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    return v1

    .line 102
    :cond_2
    iget-wide v6, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    int-to-long v8, v3

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v2
.end method

.method public seek(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-boolean p1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    if-nez p1, :cond_0

    const-wide/16 p1, -0x1

    .line 142
    iput-wide p1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    return-void

    .line 140
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File has been closed [getOutputStream]."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->closed:Z

    if-nez v0, :cond_1

    .line 113
    iget-wide v0, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 117
    iget-wide p1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sshtools/common/sftp/files/PseduoRandomOpenFile;->filePointer:J

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File is EOF"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File has been closed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lcom/sshtools/client/sftp/SftpFileOutputStream;
.super Ljava/io/OutputStream;
.source "SftpFileOutputStream.java"


# instance fields
.field private error:Z

.field private final handle:Lcom/sshtools/client/sftp/SftpHandle;

.field private final outstandingRequests:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sshtools/common/util/UnsignedInteger32;",
            ">;"
        }
    .end annotation
.end field

.field private position:J

.field private final sftp:Lcom/sshtools/client/sftp/SftpChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpHandle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->error:Z

    .line 55
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    .line 56
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpHandle;->getSFTPChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    return-void
.end method

.method private processNextResponse(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/common/util/UnsignedInteger32;

    .line 118
    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->sftp:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v3, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/sshtools/client/sftp/SftpChannel;->getOKRequestStatus(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {p1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_1

    return v0

    :cond_1
    return v2

    :catch_0
    move-exception p1

    .line 127
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->error:Z

    .line 128
    throw p1

    :catch_1
    move-exception p1

    .line 124
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->error:Z

    .line 125
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->error:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sshtools/client/sftp/SftpFileOutputStream;->processNextResponse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 141
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1
.end method

.method public write(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    const/4 v0, 0x1

    .line 96
    :try_start_0
    new-array v4, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v4, v0

    .line 99
    iget-object p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    iget-wide v2, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x64

    .line 101
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpFileOutputStream;->processNextResponse(I)Z

    .line 104
    iget-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 109
    :goto_0
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :goto_1
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v0, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v4, p2

    :goto_0
    if-lez p3, :cond_0

    const p2, 0x8000

    .line 68
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 71
    iget-object p2, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->outstandingRequests:Ljava/util/Vector;

    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->handle:Lcom/sshtools/client/sftp/SftpHandle;

    iget-wide v1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J

    move-object v3, p1

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpHandle;->postWriteRequest(J[BII)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x64

    .line 74
    invoke-direct {p0, p1}, Lcom/sshtools/client/sftp/SftpFileOutputStream;->processNextResponse(I)Z

    add-int/2addr v4, v5

    sub-int/2addr p3, v5

    .line 79
    iget-wide p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J

    int-to-long v0, v5

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sshtools/client/sftp/SftpFileOutputStream;->position:J
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 85
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 83
    new-instance p2, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p2

    :cond_0
    return-void
.end method

.class public Lcom/sshtools/client/sftp/StatVfs;
.super Ljava/lang/Object;
.source "StatVfs.java"


# static fields
.field public static final SSH_FXE_STATVFS_ST_NOSUID:I = 0x2

.field public static final SSH_FXE_STATVFS_ST_RDONLY:I = 0x1


# instance fields
.field f_bavail:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_bfree:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_blocks:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_bsize:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_favail:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_ffree:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_files:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_flag:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_frsize:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_fsid:Lcom/sshtools/common/util/UnsignedInteger64;

.field f_namemax:Lcom/sshtools/common/util/UnsignedInteger64;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bsize:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 49
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_frsize:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 50
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_blocks:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 51
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bfree:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 52
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bavail:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 53
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_files:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 54
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_ffree:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 55
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_favail:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 56
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_fsid:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 57
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_flag:Lcom/sshtools/common/util/UnsignedInteger64;

    .line 58
    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpMessage;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/sftp/StatVfs;->f_namemax:Lcom/sshtools/common/util/UnsignedInteger64;

    return-void
.end method


# virtual methods
.method public getAvail()J
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFreeBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailBlocks()J
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bavail:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailForNonRoot()J
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getAvailBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getAvailINodes()J
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_favail:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBlockSize()J
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bsize:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBlocks()J
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_blocks:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCapacity()I
    .locals 4

    .line 122
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getBlocks()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFreeBlocks()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getBlocks()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getFileSystemID()J
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_fsid:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFragmentSize()J
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_frsize:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeBlocks()J
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_bfree:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeINodes()J
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_ffree:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getINodes()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_files:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaximumFilenameLength()J
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_namemax:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMountFlag()J
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/sshtools/client/sftp/StatVfs;->f_flag:Lcom/sshtools/common/util/UnsignedInteger64;

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSize()J
    .locals 4

    .line 106
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getUsed()J
    .locals 6

    .line 110
    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getBlocks()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sshtools/client/sftp/StatVfs;->getFreeBlocks()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

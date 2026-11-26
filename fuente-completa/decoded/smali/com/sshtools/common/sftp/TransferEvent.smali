.class public Lcom/sshtools/common/sftp/TransferEvent;
.super Ljava/lang/Object;
.source "TransferEvent.java"


# instance fields
.field bytesRead:J

.field bytesWritten:J

.field public error:Z

.field public ex:Ljava/lang/Throwable;

.field exists:Z

.field flags:Lcom/sshtools/common/util/UnsignedInteger32;

.field public forceClose:Z

.field handle:[B

.field hasReachedEOF:Z

.field public isDir:Z

.field key:Ljava/lang/String;

.field nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

.field path:Ljava/lang/String;

.field started:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    .line 34
    iput-wide v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->exists:Z

    .line 36
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->hasReachedEOF:Z

    .line 38
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 40
    iput-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    return-void
.end method


# virtual methods
.method public getBytesRead()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    return-wide v0
.end method

.method public getBytesWritten()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    return-wide v0
.end method

.method public getEx()Ljava/lang/Throwable;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getFlags()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getHandle()[B
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNfs()Lcom/sshtools/common/sftp/AbstractFileSystem;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getStarted()Ljava/util/Date;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    return-object v0
.end method

.method public isDir()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->isDir:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    return v0
.end method

.method public isExists()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->exists:Z

    return v0
.end method

.method public isForceClose()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->forceClose:Z

    return v0
.end method

.method public isHasReachedEOF()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sshtools/common/sftp/TransferEvent;->hasReachedEOF:Z

    return v0
.end method

.method public setBytesRead(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesRead:J

    return-void
.end method

.method public setBytesWritten(J)V
    .locals 0

    .line 73
    iput-wide p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    return-void
.end method

.method public setDir(Z)V
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->isDir:Z

    return-void
.end method

.method public setError(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->error:Z

    return-void
.end method

.method public setEx(Ljava/lang/Throwable;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->ex:Ljava/lang/Throwable;

    return-void
.end method

.method public setExists(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->exists:Z

    return-void
.end method

.method public setFlags(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->flags:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setForceClose(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->forceClose:Z

    return-void
.end method

.method public setHandle([B)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B

    return-void
.end method

.method public setHasReachedEOF(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->hasReachedEOF:Z

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->key:Ljava/lang/String;

    return-void
.end method

.method public setNfs(Lcom/sshtools/common/sftp/AbstractFileSystem;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    return-void
.end method

.method public setStarted(Ljava/util/Date;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    return-void
.end method

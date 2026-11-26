.class public Lcom/sshtools/common/policy/FileSystemPolicy;
.super Lcom/sshtools/common/permissions/Permissions;
.source "FileSystemPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;
    }
.end annotation


# instance fields
.field allowZeroLengthFileUpload:Z

.field closeFileBeforeFailedTransferEvents:Z

.field connectionUploadQuota:J

.field disabledExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fileFactory:Lcom/sshtools/common/policy/FileFactory;

.field maxConcurrentTransfers:I

.field maximumSftpRequests:I

.field mkdirParentMustExist:Z

.field scpReadWriteEvents:Z

.field sftpCharsetEncoding:Ljava/lang/String;

.field sftpExtensionFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/sftp/SftpExtensionFactory;",
            ">;"
        }
    .end annotation
.end field

.field sftpLongnameDateFormat:Ljava/lang/String;

.field sftpLongnameDateFormatWithTime:Ljava/lang/String;

.field private sftpMaxPacketSize:I

.field private sftpMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field private sftpMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

.field sftpReadWriteEvents:Z

.field sftpVersion:I

.field sftpVersion4Enabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/sshtools/common/permissions/Permissions;-><init>()V

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->connectionUploadQuota:J

    .line 47
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpCharsetEncoding:Ljava/lang/String;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->allowZeroLengthFileUpload:Z

    .line 49
    iput-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpVersion4Enabled:Z

    const/4 v1, 0x4

    .line 50
    iput v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpVersion:I

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpReadWriteEvents:Z

    .line 52
    iput-boolean v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->scpReadWriteEvents:Z

    const/16 v2, 0x32

    .line 53
    iput v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maxConcurrentTransfers:I

    const/16 v2, 0xa

    .line 54
    iput v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maximumSftpRequests:I

    .line 55
    const-string v2, "MMM dd  yyyy"

    iput-object v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpLongnameDateFormat:Ljava/lang/String;

    .line 56
    const-string v2, "MMM dd HH:mm"

    iput-object v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpLongnameDateFormatWithTime:Ljava/lang/String;

    .line 57
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpExtensionFactories:Ljava/util/List;

    .line 58
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->disabledExtensions:Ljava/util/Set;

    .line 59
    iput-boolean v1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->closeFileBeforeFailedTransferEvents:Z

    .line 60
    iput-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->mkdirParentMustExist:Z

    const/high16 v0, 0x10000

    .line 62
    iput v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxPacketSize:I

    .line 63
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-string v1, "16MB"

    invoke-static {v1}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    .line 64
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/32 v1, 0x20000

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    iput-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method


# virtual methods
.method public disableSFTPExtension(Ljava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->disabledExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableSFTPExtension(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->disabledExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getConnectionUploadQuota()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->connectionUploadQuota:J

    return-wide v0
.end method

.method public getFileFactory()Lcom/sshtools/common/policy/FileFactory;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->fileFactory:Lcom/sshtools/common/policy/FileFactory;

    return-object v0
.end method

.method public getMaxConcurrentTransfers()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maxConcurrentTransfers:I

    return v0
.end method

.method public getMaximumNumberOfAsyncSFTPRequests()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maximumSftpRequests:I

    return v0
.end method

.method public getSFTPCharsetEncoding()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpCharsetEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSFTPExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->disabledExtensions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpExtensionFactories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/SftpExtensionFactory;

    .line 200
    invoke-interface {v2}, Lcom/sshtools/common/sftp/SftpExtensionFactory;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-interface {v2, p1}, Lcom/sshtools/common/sftp/SftpExtensionFactory;->getExtension(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpExtension;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public getSFTPExtensionFactories()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/sftp/SftpExtensionFactory;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpExtensionFactories:Ljava/util/List;

    return-object v0
.end method

.method public getSFTPLongnameDateFormat()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpLongnameDateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSFTPLongnameDateFormatWithTime()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpLongnameDateFormatWithTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSFTPVersion()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpVersion:I

    return v0
.end method

.method public getSftpMaxPacketSize()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxPacketSize:I

    return v0
.end method

.method public getSftpMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public getSftpMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-object v0
.end method

.method public hasUploadQuota()Z
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->connectionUploadQuota:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isAllowZeroLengthFileUpload()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->allowZeroLengthFileUpload:Z

    return v0
.end method

.method public isMkdirParentMustExist()Z
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->mkdirParentMustExist:Z

    return v0
.end method

.method public isSCPReadWriteEvents()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->scpReadWriteEvents:Z

    return v0
.end method

.method public isSFTPCloseFileBeforeFailedTransferEvents()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->closeFileBeforeFailedTransferEvents:Z

    return v0
.end method

.method public isSFTPReadWriteEvents()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpReadWriteEvents:Z

    return v0
.end method

.method public setAllowZeroLengthFileUpload(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->allowZeroLengthFileUpload:Z

    return-void
.end method

.method public setConnectionUploadQuota(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->connectionUploadQuota:J

    return-void
.end method

.method public setFileFactory(Lcom/sshtools/common/policy/FileFactory;)V
    .locals 1

    .line 106
    new-instance v0, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/common/policy/FileSystemPolicy$CachingFileFactory;-><init>(Lcom/sshtools/common/policy/FileSystemPolicy;Lcom/sshtools/common/policy/FileFactory;)V

    iput-object v0, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->fileFactory:Lcom/sshtools/common/policy/FileFactory;

    return-void
.end method

.method public setMaxConcurrentTransfers(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maxConcurrentTransfers:I

    return-void
.end method

.method public setMaximumNumberofAsyncSFTPRequests(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->maximumSftpRequests:I

    return-void
.end method

.method public setMkdirParentMustExist(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->mkdirParentMustExist:Z

    return-void
.end method

.method public setSCPReadWriteEvents(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->scpReadWriteEvents:Z

    return-void
.end method

.method public setSFTPCharsetEncoding(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpCharsetEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSFTPCloseFileBeforeFailedTransferEvents(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->closeFileBeforeFailedTransferEvents:Z

    return-void
.end method

.method public setSFTPReadWriteEvents(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpReadWriteEvents:Z

    return-void
.end method

.method public setSftpMaxPacketSize(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxPacketSize:I

    return-void
.end method

.method public setSftpMaxWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMaxWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setSftpMinWindowSize(Lcom/sshtools/common/util/UnsignedInteger32;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpMinWindowSize:Lcom/sshtools/common/util/UnsignedInteger32;

    return-void
.end method

.method public setSupportedSFTPVersion(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 148
    iput p1, p0, Lcom/sshtools/common/policy/FileSystemPolicy;->sftpVersion:I

    return-void

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SFTP version must be between 1 and 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

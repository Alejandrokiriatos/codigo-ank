.class public Lcom/sshtools/common/sftp/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"


# instance fields
.field length:Lcom/sshtools/common/util/UnsignedInteger64;

.field partIdentifier:Ljava/lang/String;

.field startPosition:Lcom/sshtools/common/util/UnsignedInteger64;

.field targetFile:Lcom/sshtools/common/files/AbstractFile;

.field transaction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLength()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sshtools/common/sftp/Multipart;->length:Lcom/sshtools/common/util/UnsignedInteger64;

    return-object v0
.end method

.method public getPartIdentifier()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/sftp/Multipart;->partIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()Lcom/sshtools/common/util/UnsignedInteger64;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/sshtools/common/sftp/Multipart;->startPosition:Lcom/sshtools/common/util/UnsignedInteger64;

    return-object v0
.end method

.method public getTargetFile()Lcom/sshtools/common/files/AbstractFile;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/sshtools/common/sftp/Multipart;->targetFile:Lcom/sshtools/common/files/AbstractFile;

    return-object v0
.end method

.method public getTransactionUUID()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sshtools/common/sftp/Multipart;->transaction:Ljava/lang/String;

    return-object v0
.end method

.method public setLength(Lcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sshtools/common/sftp/Multipart;->length:Lcom/sshtools/common/util/UnsignedInteger64;

    return-void
.end method

.method public setPartIdentifier(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sshtools/common/sftp/Multipart;->partIdentifier:Ljava/lang/String;

    return-void
.end method

.method public setStartPosition(Lcom/sshtools/common/util/UnsignedInteger64;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/sshtools/common/sftp/Multipart;->startPosition:Lcom/sshtools/common/util/UnsignedInteger64;

    return-void
.end method

.method public setTargetFile(Lcom/sshtools/common/files/AbstractFile;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/sshtools/common/sftp/Multipart;->targetFile:Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sshtools/common/sftp/Multipart;->transaction:Ljava/lang/String;

    return-void
.end method

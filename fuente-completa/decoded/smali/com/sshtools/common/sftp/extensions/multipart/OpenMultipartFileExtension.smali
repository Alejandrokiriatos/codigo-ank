.class public Lcom/sshtools/common/sftp/extensions/multipart/OpenMultipartFileExtension;
.super Ljava/lang/Object;
.source "OpenMultipartFileExtension.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpExtension;


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "open-part-file@sshtools.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()[B
    .locals 1

    const/4 v0, 0x0

    .line 112
    new-array v0, v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, "open-part-file@sshtools.com"

    return-object v0
.end method

.method public isDeclaredInVersion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    .line 102
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 7

    .line 52
    :try_start_0
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/sftp/MultipartTransferRegistry;->getTransfer(Ljava/lang/String;)Lcom/sshtools/common/sftp/MultipartTransfer;

    move-result-object v2

    .line 58
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v4

    .line 61
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v5

    .line 63
    new-instance v6, Lcom/sshtools/common/sftp/Multipart;

    invoke-direct {v6}, Lcom/sshtools/common/sftp/Multipart;-><init>()V

    .line 64
    invoke-virtual {v6, v4}, Lcom/sshtools/common/sftp/Multipart;->setStartPosition(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 65
    invoke-virtual {v6, v5}, Lcom/sshtools/common/sftp/Multipart;->setLength(Lcom/sshtools/common/util/UnsignedInteger64;)V

    .line 66
    invoke-virtual {v6, v3}, Lcom/sshtools/common/sftp/Multipart;->setPartIdentifier(Ljava/lang/String;)V

    .line 67
    invoke-interface {v2}, Lcom/sshtools/common/sftp/MultipartTransfer;->getFile()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sshtools/common/sftp/Multipart;->setTargetFile(Lcom/sshtools/common/files/AbstractFile;)V

    .line 69
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openPart(Ljava/lang/String;Lcom/sshtools/common/sftp/Multipart;)[B

    move-result-object v1

    .line 71
    new-instance v4, Lcom/sshtools/common/sftp/TransferEvent;

    invoke-direct {v4}, Lcom/sshtools/common/sftp/TransferEvent;-><init>()V

    .line 72
    invoke-interface {v2}, Lcom/sshtools/common/sftp/MultipartTransfer;->getPath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sshtools/common/sftp/TransferEvent;->setPath(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v0}, Lcom/sshtools/common/sftp/TransferEvent;->setNfs(Lcom/sshtools/common/sftp/AbstractFileSystem;)V

    .line 74
    invoke-virtual {v4, v1}, Lcom/sshtools/common/sftp/TransferEvent;->setHandle([B)V

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v4, v3}, Lcom/sshtools/common/sftp/TransferEvent;->setForceClose(Z)V

    .line 76
    invoke-interface {v2}, Lcom/sshtools/common/sftp/MultipartTransfer;->getExists()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sshtools/common/sftp/TransferEvent;->setExists(Z)V

    .line 77
    new-instance v2, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v5, 0x2

    invoke-direct {v2, v5, v6}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-virtual {v4, v2}, Lcom/sshtools/common/sftp/TransferEvent;->setFlags(Lcom/sshtools/common/util/UnsignedInteger32;)V

    .line 78
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sshtools/common/sftp/TransferEvent;->setKey(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->addTransferEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/TransferEvent;)V

    .line 81
    invoke-virtual {p3, p2, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendHandleMessage(I[B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 89
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 88
    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 92
    throw p2
.end method

.method public supportsExtendedMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

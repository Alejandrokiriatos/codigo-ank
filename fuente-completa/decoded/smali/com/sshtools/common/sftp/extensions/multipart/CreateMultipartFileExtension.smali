.class public Lcom/sshtools/common/sftp/extensions/multipart/CreateMultipartFileExtension;
.super Ljava/lang/Object;
.source "CreateMultipartFileExtension.java"

# interfaces
.implements Lcom/sshtools/common/sftp/SftpExtension;


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "create-multipart-file@sshtools.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultData()[B
    .locals 1

    const/4 v0, 0x0

    .line 104
    new-array v0, v0, [B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "create-multipart-file@sshtools.com"

    return-object v0
.end method

.method public isDeclaredInVersion()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    .line 94
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 4

    .line 48
    :try_start_0
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    .line 50
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getCharsetEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileFactory()Lcom/sshtools/common/files/AbstractFileFactory;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->supportsMultipartTransfers()Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    const-string v0, "Path does not support multipart extensions"

    const/16 v1, 0x8

    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 83
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    .line 58
    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->startMultipartUpload(Lcom/sshtools/common/files/AbstractFile;)Lcom/sshtools/common/sftp/MultipartTransfer;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v1}, Lcom/sshtools/common/ssh/Packet;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0xc9

    .line 63
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 64
    invoke-virtual {v1, p2}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 65
    invoke-interface {v0}, Lcom/sshtools/common/sftp/MultipartTransfer;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 66
    invoke-interface {v0}, Lcom/sshtools/common/sftp/MultipartTransfer;->getMinimumPartSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/Packet;->writeInt(J)V

    const/4 v0, 0x0

    .line 67
    invoke-virtual {v1, v0}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 69
    invoke-virtual {p3, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :try_start_3
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/Packet;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 72
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/common/ssh/Packet;->close()V

    .line 73
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 81
    :try_start_5
    invoke-virtual {v0}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 80
    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p3, p2, v1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 83
    :goto_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 84
    throw p2
.end method

.method public supportsExtendedMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

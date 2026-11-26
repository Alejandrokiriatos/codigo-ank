.class public Lcom/sshtools/common/sftp/extensions/CopyDataSftpExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "CopyDataSftpExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "copy-data"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    const-string v0, "copy-data"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public processExtendedMessage(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 0

    return-void
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;ILcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 6

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    .line 48
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v3

    .line 50
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v4

    .line 51
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readUINT64()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v5

    .line 53
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    .line 55
    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->copyData([BLcom/sshtools/common/util/UnsignedInteger64;Lcom/sshtools/common/util/UnsignedInteger64;[BLcom/sshtools/common/util/UnsignedInteger64;)V

    .line 57
    const-string p1, "The copy-data operation completed."

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    const/4 v0, 0x2

    .line 64
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    const/4 v0, 0x3

    .line 62
    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    move-object p1, v0

    const/4 v0, 0x4

    .line 60
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public supportsExtendedMessage(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.class public Lcom/sshtools/common/sftp/extensions/CopyFileSftpExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "CopyFileSftpExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "copy-file"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    const-string v0, "copy-file"

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
    .locals 3

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readBoolean()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v0, v1, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    const-string p1, "The copy-file operation completed."

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    .line 60
    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x4

    .line 58
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const/16 v0, 0xb

    .line 56
    invoke-virtual {p1}, Ljava/nio/file/FileAlreadyExistsException;->getMessage()Ljava/lang/String;

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

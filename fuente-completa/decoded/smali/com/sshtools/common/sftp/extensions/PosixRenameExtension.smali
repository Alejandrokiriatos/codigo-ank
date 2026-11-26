.class public Lcom/sshtools/common/sftp/extensions/PosixRenameExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "PosixRenameExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "posix-rename@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    const-string v0, "posix-rename@openssh.com"

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
    .locals 2

    .line 45
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 51
    invoke-virtual {v1, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->removeFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :catch_0
    :try_start_2
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string p1, "Rename completed."

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x3

    .line 61
    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const/4 v0, 0x4

    .line 59
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

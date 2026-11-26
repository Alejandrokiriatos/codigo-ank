.class public Lcom/sshtools/common/sftp/extensions/HardLinkExtension;
.super Lcom/sshtools/common/sftp/extensions/AbstractSftpExtension;
.source "HardLinkExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "hardlink@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    const-string v0, "hardlink@openssh.com"

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

    .line 43
    :try_start_0
    invoke-virtual {p3}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/common/sftp/AbstractFileSystem;->createLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string p1, "The hard link operation completed."

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/16 v0, 0x8

    .line 51
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/UnsupportedFileOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v0, 0x3

    .line 49
    invoke-virtual {p1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, v0, p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const/4 v0, 0x4

    .line 47
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

.class public Lcom/sshtools/common/sftp/extensions/FilenameHashingExtension;
.super Lcom/sshtools/common/sftp/extensions/FileHashingExtension;
.source "FilenameHashingExtension.java"


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "check-file-name"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const-string v0, "check-file-name"

    invoke-direct {p0, v0}, Lcom/sshtools/common/sftp/extensions/FileHashingExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getFileHandle(Lcom/sshtools/common/util/ByteArrayReader;Lcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p2}, Lcom/sshtools/common/sftp/SftpSubsystem;->getFileSystem()Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object p2

    .line 45
    new-instance v0, Lcom/sshtools/common/util/UnsignedInteger32;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/util/UnsignedInteger32;-><init>(J)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openFile(Ljava/lang/String;Lcom/sshtools/common/util/UnsignedInteger32;Ljava/util/Optional;Lcom/sshtools/common/sftp/SftpFileAttributes;)[B

    move-result-object p1

    return-object p1
.end method

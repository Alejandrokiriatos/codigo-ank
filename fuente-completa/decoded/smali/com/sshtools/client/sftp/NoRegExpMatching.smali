.class public Lcom/sshtools/client/sftp/NoRegExpMatching;
.super Ljava/lang/Object;
.source "NoRegExpMatching.java"

# interfaces
.implements Lcom/sshtools/client/sftp/RegularExpressionMatching;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchFileNamesWithPattern([Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 p2, 0x1

    .line 50
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 51
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 52
    aget-object v1, p1, v0

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public matchFilesWithPattern([Lcom/sshtools/client/sftp/SftpFile;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-object p1
.end method

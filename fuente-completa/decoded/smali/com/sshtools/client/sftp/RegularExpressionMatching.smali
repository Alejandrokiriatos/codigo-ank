.class public interface abstract Lcom/sshtools/client/sftp/RegularExpressionMatching;
.super Ljava/lang/Object;
.source "RegularExpressionMatching.java"


# virtual methods
.method public abstract matchFileNamesWithPattern([Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation
.end method

.method public abstract matchFilesWithPattern([Lcom/sshtools/client/sftp/SftpFile;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

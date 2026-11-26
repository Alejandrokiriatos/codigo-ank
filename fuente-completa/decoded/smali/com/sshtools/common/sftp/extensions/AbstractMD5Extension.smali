.class public abstract Lcom/sshtools/common/sftp/extensions/AbstractMD5Extension;
.super Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;
.source "AbstractMD5Extension.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/sshtools/common/sftp/extensions/AbstractDigestExtension;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doMD5Hash(Ljava/lang/String;JJ[BLcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;
        }
    .end annotation

    .line 44
    const-string v1, "md5"

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/common/sftp/extensions/AbstractMD5Extension;->doHash(Ljava/lang/String;Ljava/lang/String;JJLcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object p1

    return-object p1
.end method

.method protected doMD5Hash([BJJ[BLcom/sshtools/common/sftp/SftpSubsystem;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/EOFException;,
            Lcom/sshtools/common/sftp/InvalidHandleException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 50
    const-string v1, "md5"

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/common/sftp/extensions/AbstractMD5Extension;->doHash(Ljava/lang/String;[BJJLcom/sshtools/common/sftp/SftpSubsystem;)[B

    move-result-object p1

    return-object p1
.end method

.method protected sendReply(I[BLcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/sshtools/common/ssh/Packet;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/Packet;-><init>()V

    const/16 v1, 0xc9

    .line 58
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/Packet;->write(I)V

    .line 59
    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeInt(I)V

    .line 60
    const-string p1, "md5-hash"

    invoke-virtual {v0, p1}, Lcom/sshtools/common/ssh/Packet;->writeString(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p2}, Lcom/sshtools/common/ssh/Packet;->writeBinaryString([B)V

    .line 63
    invoke-virtual {p3, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendMessage(Lcom/sshtools/common/ssh/Packet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/Packet;->close()V

    .line 67
    throw p1
.end method

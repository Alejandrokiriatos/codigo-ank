.class Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FStatOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1846
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1847
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 6

    .line 1857
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 1859
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 1864
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int v2, v2

    .line 1865
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v4

    .line 1866
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes([B)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    .line 1865
    invoke-virtual {v3, v2, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendAttributesMessage(ILcom/sshtools/common/sftp/SftpFileAttributes;)V
    :try_end_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1875
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1873
    :try_start_1
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 1870
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1871
    invoke-virtual {v1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    .line 1870
    invoke-virtual {v3, v2, v4, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 1868
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FStatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1875
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1876
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1852
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->GET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

.class Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnsupportedOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1504
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1505
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 7

    const-string v0, "Unexpected message id "

    .line 1515
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1516
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->msg:[B

    aget-byte v1, v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported SFTP message received [id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1521
    :cond_0
    new-instance v1, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->msg:[B

    invoke-direct {v1, v3}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v3, 0x1

    .line 1525
    :try_start_0
    invoke-virtual {v1, v3, v4}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    :try_start_1
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1531
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->msg:[B

    aget-byte v5, v5, v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v4, v3, v5, v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1534
    :try_start_2
    const-string v3, "Failed to read message id"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1535
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$UnsupportedOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-string v2, "I/O error during read operation"

    invoke-interface {v0, v2}, Lcom/sshtools/common/ssh/SshConnection;->disconnect(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1538
    :goto_0
    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1539
    throw v0
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1510
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->UNSUPPORTED:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

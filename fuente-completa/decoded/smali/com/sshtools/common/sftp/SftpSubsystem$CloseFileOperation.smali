.class Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1544
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1545
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 8

    .line 1555
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 1557
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1562
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int v2, v4

    .line 1564
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v4
    :try_end_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    :try_start_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->closeFile([B)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1569
    :try_start_2
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent([BLjava/lang/Exception;)V

    .line 1570
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v5, "The operation completed"

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v6, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1573
    :try_start_3
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v6

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v6, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1582
    :goto_0
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .line 1579
    :goto_1
    :try_start_4
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent([BLjava/lang/Exception;)V

    .line 1580
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1582
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    .line 1576
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireCloseFileEvent([BLjava/lang/Exception;)V

    .line 1577
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1582
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1583
    :goto_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_1
    move-exception v1

    move-object v3, v4

    .line 1582
    :goto_4
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$CloseFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->freeHandle([B)V

    .line 1583
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1584
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1550
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CLOSE_HANDLE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

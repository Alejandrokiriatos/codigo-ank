.class Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadDirectoryOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1994
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1995
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 9

    .line 2005
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 2007
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    const/4 v1, 0x4

    const/4 v2, -0x1

    .line 2012
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v2

    long-to-int v2, v2

    .line 2013
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readBinaryString()[B

    move-result-object v3

    .line 2015
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFolderHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->handleToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/sftp/TransferEvent;

    .line 2016
    iget-wide v5, v4, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J

    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readDirectory([B)[Lcom/sshtools/common/sftp/SftpFile;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v7, v2, v3, v8, v8}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendFilenameMessage(I[Lcom/sshtools/common/sftp/SftpFile;ZZ)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/sshtools/common/sftp/TransferEvent;->bytesWritten:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sshtools/common/sftp/InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2029
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2027
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v1}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v3, v2, v4, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 2025
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 2023
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v3

    .line 2021
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/InvalidHandleException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception v1

    .line 2019
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2029
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2030
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 2000
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->READ_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

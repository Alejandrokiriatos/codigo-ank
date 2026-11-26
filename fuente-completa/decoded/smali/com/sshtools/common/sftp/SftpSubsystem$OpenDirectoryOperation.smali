.class Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenDirectoryOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 2037
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 9

    .line 2048
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 2050
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 2052
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 2058
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int v2, v4

    .line 2059
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2061
    :try_start_1
    new-instance v5, Lcom/sshtools/common/sftp/TransferEvent;

    invoke-direct {v5}, Lcom/sshtools/common/sftp/TransferEvent;-><init>()V

    .line 2062
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    iput-object v6, v5, Lcom/sshtools/common/sftp/TransferEvent;->nfs:Lcom/sshtools/common/sftp/AbstractFileSystem;

    const/4 v6, 0x1

    .line 2063
    iput-boolean v6, v5, Lcom/sshtools/common/sftp/TransferEvent;->isDir:Z

    .line 2064
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    iput-object v6, v5, Lcom/sshtools/common/sftp/TransferEvent;->started:Ljava/util/Date;

    .line 2065
    iput-object v4, v5, Lcom/sshtools/common/sftp/TransferEvent;->path:Ljava/lang/String;

    .line 2067
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->openDirectory(Ljava/lang/String;)[B

    move-result-object v6

    .line 2068
    iput-object v6, v5, Lcom/sshtools/common/sftp/TransferEvent;->handle:[B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2070
    :try_start_2
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v4, v1, v6, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenDirectoryEvent(Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 2071
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetopenFolderHandles(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/Map;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v7, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2072
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v2, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendHandleMessage(I[B)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 2074
    :try_start_3
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v7

    invoke-virtual {v5}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v2, v7, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2088
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_2

    :catch_3
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v5

    move-object v4, v3

    .line 2084
    :goto_1
    :try_start_4
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v1, v3, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenDirectoryEvent(Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 2085
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2086
    invoke-virtual {v5}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 2085
    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v5

    move-object v4, v3

    .line 2081
    :goto_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v1, v3, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenDirectoryEvent(Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 2082
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception v5

    move-object v4, v3

    .line 2078
    :goto_3
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v1, v3, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireOpenDirectoryEvent(Ljava/lang/String;Ljava/util/Date;[BLjava/lang/Exception;)V

    .line 2079
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$OpenDirectoryOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2088
    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2089
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 2043
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->OPEN_DIRECTORY:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

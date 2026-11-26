.class Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RenameFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 807
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 808
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 10

    .line 818
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 820
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 821
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 827
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 828
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    :try_start_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    :try_start_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 831
    invoke-virtual {v8, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 830
    invoke-virtual {v6, v7, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->renameFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    :try_start_3
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRenameFileEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 835
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v6, "The file was renamed"

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    .line 837
    :try_start_4
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v7

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v7, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_0

    :catch_5
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_1

    :catch_6
    move-exception v5

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    .line 846
    :goto_0
    :try_start_5
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRenameFileEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 847
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 848
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 847
    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_3

    :catch_8
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    .line 843
    :goto_1
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRenameFileEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 844
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_3

    :catch_9
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v5

    .line 840
    :goto_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRenameFileEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 841
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RenameFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 850
    :goto_3
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 851
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 813
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RENAME_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

.class Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoveFileOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 879
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 8

    .line 889
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 891
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 893
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 897
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v3

    long-to-int v3, v3

    .line 899
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/sshtools/common/sftp/FileIsDirectoryException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    :try_start_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sshtools/common/sftp/AbstractFileSystem;->removeFile(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sshtools/common/sftp/FileIsDirectoryException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 903
    :try_start_2
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 904
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v5, "The file was removed"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/sshtools/common/sftp/FileIsDirectoryException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    .line 906
    :try_start_3
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v6

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v6, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/FileIsDirectoryException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

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
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 918
    :goto_0
    :try_start_4
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 919
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 920
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 919
    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 915
    :goto_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 916
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_7
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 912
    :goto_2
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 913
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_8
    move-exception v4

    move-object v7, v4

    move-object v4, v2

    move-object v2, v7

    .line 909
    :goto_3
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireRemoveFileEvent(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 910
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RemoveFileOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Lcom/sshtools/common/sftp/FileIsDirectoryException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x18

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 922
    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 923
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 884
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->REMOVE_FILE:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

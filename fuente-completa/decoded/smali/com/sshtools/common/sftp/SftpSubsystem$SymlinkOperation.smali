.class Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SymlinkOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 10

    .line 671
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 673
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 677
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 682
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v4

    long-to-int v2, v4

    .line 683
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    :try_start_1
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    :try_start_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 686
    invoke-virtual {v8, v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 685
    invoke-virtual {v6, v7, v8}, Lcom/sshtools/common/sftp/AbstractFileSystem;->createSymbolicLink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 689
    :try_start_3
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 690
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const-string v6, "The symbolic link was created"

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v7, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusEventException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    .line 693
    :try_start_4
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getStatus()I

    move-result v7

    invoke-virtual {v3}, Lcom/sshtools/common/sftp/SftpStatusEventException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v7, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v3

    goto :goto_1

    :catch_3
    move-exception v3

    goto/16 :goto_2

    :catch_4
    move-exception v3

    goto/16 :goto_3

    :catch_5
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_0

    :catch_6
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_1

    :catch_7
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_2

    :catch_8
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_9
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 706
    :goto_0
    :try_start_5
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 707
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 708
    invoke-virtual {v3}, Lcom/sshtools/common/sftp/UnsupportedFileOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    .line 707
    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_a
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 703
    :goto_1
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 704
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_b
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 699
    :goto_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 700
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 701
    invoke-virtual {v3}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    .line 700
    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_c
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 696
    :goto_3
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v4, v5, v1, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireSymlinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 697
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$SymlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v4, v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 710
    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 711
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 666
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->CREATE_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

.class Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReadlinkOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 7

    .line 629
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 631
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    const/4 v1, -0x1

    .line 635
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x1

    .line 636
    new-array v3, v2, [Lcom/sshtools/common/sftp/SftpFile;

    .line 637
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v6

    .line 638
    invoke-virtual {v0, v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 637
    invoke-virtual {v5, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->readSymbolicLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFile;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 639
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v4, v1, v3, v5, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendFilenameMessage(I[Lcom/sshtools/common/sftp/SftpFile;ZZ)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/sftp/UnsupportedFileOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 650
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 647
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 648
    invoke-virtual {v2}, Lcom/sshtools/common/sftp/UnsupportedFileOperationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x8

    .line 647
    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v2

    .line 644
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 645
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 644
    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v2

    .line 642
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$ReadlinkOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 653
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 624
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->FOLLOW_SYMLINK:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

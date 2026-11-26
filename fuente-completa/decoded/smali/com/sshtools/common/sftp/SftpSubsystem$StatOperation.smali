.class Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 1883
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1884
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 9

    .line 1894
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 1896
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 1897
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 1901
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v5

    long-to-int v3, v5

    .line 1902
    iget-object v5, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v5}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    :try_start_1
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->fileExists(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1905
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v6

    .line 1906
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v3, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendAttributesMessage(ILcom/sshtools/common/sftp/SftpFileAttributes;)V

    .line 1907
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v5, v6, v1, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    goto :goto_0

    .line 1909
    :cond_0
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v7, Ljava/io/FileNotFoundException;

    invoke-direct {v7}, Ljava/io/FileNotFoundException;-><init>()V

    invoke-virtual {v6, v5, v4, v1, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 1910
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not a valid file path"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v3, v2, v7}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1924
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v5, v4

    .line 1921
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 1922
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v5, v4

    .line 1917
    :goto_2
    iget-object v6, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6, v5, v4, v1, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 1918
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 1919
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 1918
    invoke-virtual {v1, v3, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_4

    :catch_5
    move-exception v6

    move-object v5, v4

    .line 1914
    :goto_3
    iget-object v7, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v7, v5, v4, v1, v6}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireStatEvent(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/util/Date;Ljava/lang/Exception;)V

    .line 1915
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$StatOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1924
    :goto_4
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_5
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 1925
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 1889
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->GET_ATTRIBUTES:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

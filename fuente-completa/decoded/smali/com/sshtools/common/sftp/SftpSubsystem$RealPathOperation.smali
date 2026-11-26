.class Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RealPathOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 2140
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2141
    invoke-direct {p0, p1, p2}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 7

    .line 2151
    new-instance v0, Lcom/sshtools/common/util/ByteArrayReader;

    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->msg:[B

    invoke-direct {v0, v1}, Lcom/sshtools/common/util/ByteArrayReader;-><init>([B)V

    const-wide/16 v1, 0x1

    .line 2156
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/util/ByteArrayReader;->skip(J)J

    .line 2157
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->readInt()J

    move-result-wide v1

    long-to-int v1, v1

    .line 2158
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetCHARSET_ENCODING(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sshtools/common/util/ByteArrayReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2161
    :try_start_1
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->checkDefaultPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2163
    new-instance v3, Lcom/sshtools/common/sftp/SftpFile;

    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetnfs(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/sftp/AbstractFileSystem;

    move-result-object v4

    .line 2164
    invoke-virtual {v4, v2}, Lcom/sshtools/common/sftp/AbstractFileSystem;->getFileAttributes(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/sshtools/common/sftp/SftpFile;-><init>(Ljava/lang/String;Lcom/sshtools/common/sftp/SftpFileAttributes;)V

    .line 2166
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v4, 0x1

    new-array v5, v4, [Lcom/sshtools/common/sftp/SftpFile;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v1, v5, v4, v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendFilenameMessage(I[Lcom/sshtools/common/sftp/SftpFile;ZZ)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2172
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2173
    invoke-virtual {v2}, Lcom/sshtools/common/permissions/PermissionDeniedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    .line 2172
    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 2169
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2170
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    .line 2169
    invoke-virtual {v3, v1, v4, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->sendStatusMessage(IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 2177
    :catch_2
    :try_start_3
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$RealPathOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$700(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v1

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SessionChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2179
    :goto_0
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    return-void

    :goto_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayReader;->close()V

    .line 2180
    throw v1
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 2146
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->RESOLVE_PATH:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

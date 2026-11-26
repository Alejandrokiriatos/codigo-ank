.class Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;
.super Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitOperation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;)V
    .locals 1

    .line 199
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1, v0}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;-><init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V

    return-void
.end method


# virtual methods
.method public doOperation()V
    .locals 5

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v1, Lcom/sshtools/common/sftp/AbstractFileSystem;

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    const-string v3, "sftp"

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/sftp/AbstractFileSystem;-><init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fputnfs(Lcom/sshtools/common/sftp/SftpSubsystem;Lcom/sshtools/common/sftp/AbstractFileSystem;)V

    .line 211
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    new-instance v1, Lcom/sshtools/common/events/Event;

    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    const v3, -0xffffb0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sshtools/common/events/Event;-><init>(Ljava/lang/Object;IZ)V

    const-string v2, "CONNECTION"

    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/events/Event;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/sshtools/common/events/Event;

    move-result-object v1

    .line 211
    invoke-virtual {v0, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->fireEvent(Lcom/sshtools/common/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 220
    :try_start_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "An SFTP initialization error occurred"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$InitOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$000(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannel;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
    .locals 1

    .line 231
    sget-object v0, Lcom/sshtools/common/sftp/SftpSubsystemOperation;->INIT:Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    return-object v0
.end method

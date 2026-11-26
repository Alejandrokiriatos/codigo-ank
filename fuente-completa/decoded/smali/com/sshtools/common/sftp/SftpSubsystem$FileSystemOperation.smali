.class abstract Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "SftpSubsystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/sftp/SftpSubsystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FileSystemOperation"
.end annotation


# instance fields
.field protected msg:[B

.field final synthetic this$0:Lcom/sshtools/common/sftp/SftpSubsystem;


# direct methods
.method constructor <init>(Lcom/sshtools/common/sftp/SftpSubsystem;[B)V
    .locals 0

    .line 2431
    iput-object p1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    .line 2432
    invoke-static {p1}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$800(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannel;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 2433
    iput-object p2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->msg:[B

    return-void
.end method


# virtual methods
.method public abstract doOperation()V
.end method

.method protected doTask()V
    .locals 6

    .line 2442
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2443
    iget-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v0}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/sftp/SftpOperationWrapper;

    .line 2445
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$900(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sshtools/common/sftp/SftpOperationWrapper;->onBeginOperation(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/sftp/SftpSubsystemOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2451
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->doOperation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2453
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2454
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catchall_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/sftp/SftpOperationWrapper;

    .line 2456
    :try_start_2
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v3}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$1000(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/sshtools/common/sftp/SftpOperationWrapper;->onEndOperation(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/sftp/SftpSubsystemOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 2461
    :cond_1
    iget-object v1, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->msg:[B

    if-eqz v1, :cond_2

    .line 2462
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v2, v1}, Lcom/sshtools/common/sftp/SftpSubsystem;->onFreeMessage([B)V

    .line 2464
    :cond_2
    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->msg:[B

    return-void

    :catchall_2
    move-exception v1

    .line 2453
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2454
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->-$$Nest$fgetwrappers(Lcom/sshtools/common/sftp/SftpSubsystem;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/sftp/SftpOperationWrapper;

    .line 2456
    :try_start_3
    iget-object v4, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-static {v4}, Lcom/sshtools/common/sftp/SftpSubsystem;->access$1000(Lcom/sshtools/common/sftp/SftpSubsystem;)Lcom/sshtools/common/ssh/SessionChannel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/sshtools/common/sftp/SftpOperationWrapper;->onEndOperation(Lcom/sshtools/common/ssh/SessionChannel;Lcom/sshtools/common/sftp/SftpSubsystemOperation;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_2

    .line 2461
    :cond_3
    iget-object v2, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->msg:[B

    if-eqz v2, :cond_4

    .line 2462
    iget-object v3, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->this$0:Lcom/sshtools/common/sftp/SftpSubsystem;

    invoke-virtual {v3, v2}, Lcom/sshtools/common/sftp/SftpSubsystem;->onFreeMessage([B)V

    .line 2464
    :cond_4
    iput-object v0, p0, Lcom/sshtools/common/sftp/SftpSubsystem$FileSystemOperation;->msg:[B

    .line 2465
    throw v1
.end method

.method public abstract getOp()Lcom/sshtools/common/sftp/SftpSubsystemOperation;
.end method

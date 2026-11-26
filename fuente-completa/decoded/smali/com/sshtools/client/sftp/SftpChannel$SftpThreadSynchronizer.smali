.class Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;
.super Ljava/lang/Object;
.source "SftpChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/sftp/SftpChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SftpThreadSynchronizer"
.end annotation


# instance fields
.field isBlocking:Z

.field final synthetic this$0:Lcom/sshtools/client/sftp/SftpChannel;


# direct methods
.method constructor <init>(Lcom/sshtools/client/sftp/SftpChannel;)V
    .locals 0

    .line 2292
    iput-object p1, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->this$0:Lcom/sshtools/client/sftp/SftpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2294
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->isBlocking:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized releaseBlock()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 2316
    :try_start_0
    iput-boolean v0, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->isBlocking:Z

    .line 2317
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2318
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public requestBlock(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/tasks/MessageHolder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2299
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->this$0:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v0, v0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->this$0:Lcom/sshtools/client/sftp/SftpChannel;

    iget-object v0, v0, Lcom/sshtools/client/sftp/SftpChannel;->responses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/Message;

    iput-object p1, p2, Lcom/sshtools/client/tasks/MessageHolder;->msg:Lcom/sshtools/client/tasks/Message;

    const/4 p1, 0x0

    return p1

    .line 2304
    :cond_0
    monitor-enter p0

    .line 2305
    :try_start_0
    iget-boolean p1, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->isBlocking:Z

    xor-int/lit8 p2, p1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 2307
    iput-boolean p1, p0, Lcom/sshtools/client/sftp/SftpChannel$SftpThreadSynchronizer;->isBlocking:Z

    goto :goto_0

    .line 2309
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 2311
    :goto_0
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    .line 2312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

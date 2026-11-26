.class Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;
.super Ljava/lang/Object;
.source "ExecutorOperationSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/ExecutorOperationSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OperationTask"
.end annotation


# instance fields
.field operationFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field running:Z

.field subsystemOperations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/ExecutorOperationSupport;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->running:Z

    const/4 p1, 0x0

    .line 78
    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->operationFuture:Ljava/util/concurrent/Future;

    .line 79
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    return-void
.end method

.method private executeAllTasks()V
    .locals 4

    .line 127
    :cond_0
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    :try_start_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    monitor-exit p0

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 131
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_2

    .line 134
    :try_start_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 136
    :try_start_3
    const-string v1, "{}: Caught exception in operation remainingTasks={}"

    iget-object v2, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v2, v2, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "{}: Unexpected null task in operation queue"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 131
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    .line 144
    const-string v1, "{}: Caught exception in operation remainingTasks={}"

    iget-object v2, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v2, v2, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addTask(Ljava/lang/Runnable;)V
    .locals 1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 110
    iget-boolean p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->running:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->running:Z

    .line 113
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    const-string p1, "{}: Starting new subsystem task"

    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    invoke-virtual {p1}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/ssh/ExecutorServiceProvider;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->operationFuture:Ljava/util/concurrent/Future;

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized cleanupOperations()V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-boolean v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->shutdown:Z

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->shutdown:Z

    .line 156
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "{}: Submitting clean up operation to executor service"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->getContext()Lcom/sshtools/common/ssh/ExecutorServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/ExecutorServiceProvider;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;-><init>(Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_1
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

.method public run()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "{}: Operation task is starting"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->executeAllTasks()V

    .line 91
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "{}: No more tasks, will wait for a few more seconds before completing task"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_1
    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->subsystemOperations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    xor-int/lit8 v2, v0, 0x1

    iput-boolean v2, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->running:Z

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    const-string v0, "{}: Operation task has ended"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

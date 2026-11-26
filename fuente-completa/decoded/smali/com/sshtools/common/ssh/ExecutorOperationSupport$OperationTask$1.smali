.class Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;
.super Ljava/lang/Object;
.source "ExecutorOperationSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->cleanupOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    iget-object v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->operationFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    .line 166
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    iget-object v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{}: Cleaning up operations"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    const-string v0, "{}: Waiting for operations to complete"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    iget-object v0, v0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->operationFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "{}: All operations have completed"

    iget-object v1, p0, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask$1;->this$1:Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport$OperationTask;->this$0:Lcom/sshtools/common/ssh/ExecutorOperationSupport;

    iget-object v1, v1, Lcom/sshtools/common/ssh/ExecutorOperationSupport;->queueName:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

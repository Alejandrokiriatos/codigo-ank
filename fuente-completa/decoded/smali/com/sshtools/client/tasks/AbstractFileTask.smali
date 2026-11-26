.class public abstract Lcom/sshtools/client/tasks/AbstractFileTask;
.super Lcom/sshtools/client/tasks/AbstractConnectionTask;
.source "AbstractFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;
    }
.end annotation


# instance fields
.field protected final progress:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractConnectionTask;-><init>(Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;)V

    .line 79
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;->-$$Nest$fgetprogress(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractFileTask;->progress:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method protected doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractFileTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v2, p1}, Lcom/sshtools/common/ssh/SshConnection;->addTask(Lcom/sshtools/common/ssh/ConnectionAwareTask;)Lcom/sshtools/common/ssh/ConnectionAwareTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->waitForever()Lcom/sshtools/common/ssh/RequestFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object v2

    iput-object v2, p0, Lcom/sshtools/client/tasks/AbstractFileTask;->lastError:Ljava/lang/Throwable;

    .line 72
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractFileTask;->done(Z)V

    return-void

    :catchall_0
    move-exception v2

    .line 71
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->getLastError()Ljava/lang/Throwable;

    move-result-object v3

    iput-object v3, p0, Lcom/sshtools/client/tasks/AbstractFileTask;->lastError:Ljava/lang/Throwable;

    .line 72
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isDone()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractFileTask;->done(Z)V

    .line 73
    throw v2
.end method

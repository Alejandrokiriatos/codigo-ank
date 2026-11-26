.class Lcom/sshtools/client/tasks/Task$1;
.super Lcom/sshtools/client/tasks/Task;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/tasks/Task;->ofRunnable(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)Lcom/sshtools/client/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;


# direct methods
.method constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V
    .locals 0

    .line 36
    iput-object p2, p0, Lcom/sshtools/client/tasks/Task$1;->val$runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/Task;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/sshtools/client/tasks/Task$1;->val$runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;

    invoke-interface {v0, p0}, Lcom/sshtools/client/tasks/Task$TaskRunnable;->run(Ljava/lang/Object;)V

    return-void
.end method

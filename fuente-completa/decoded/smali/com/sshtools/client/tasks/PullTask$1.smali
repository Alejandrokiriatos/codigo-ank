.class Lcom/sshtools/client/tasks/PullTask$1;
.super Ljava/lang/Object;
.source "PullTask.java"

# interfaces
.implements Lcom/sshtools/client/tasks/FileTransferProgress;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sshtools/client/tasks/PullTask;->receivePart(Ljava/lang/String;JILjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;Ljava/nio/file/Path;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/tasks/PullTask;

.field final synthetic val$pointer:J

.field final synthetic val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/PullTask;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 347
    iput-object p1, p0, Lcom/sshtools/client/tasks/PullTask$1;->this$0:Lcom/sshtools/client/tasks/PullTask;

    iput-object p2, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    iput-wide p3, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$pointer:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed()V
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public progressed(J)V
    .locals 3

    .line 361
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    iget-wide v1, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$pointer:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->progressed(J)V

    return-void
.end method

.method public started(JLjava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask$1;->val$progress:Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0, p1, p2, p3}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    return-void
.end method

.class public final synthetic Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/sshtools/client/tasks/Task$TaskRunnable;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/tasks/AbstractOptimisedTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/tasks/AbstractOptimisedTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/AbstractOptimisedTask;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/AbstractOptimisedTask;

    check-cast p1, Lcom/sshtools/client/sftp/SftpClientTask;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->lambda$doTask$0$com-sshtools-client-tasks-AbstractOptimisedTask(Lcom/sshtools/client/sftp/SftpClientTask;)V

    return-void
.end method

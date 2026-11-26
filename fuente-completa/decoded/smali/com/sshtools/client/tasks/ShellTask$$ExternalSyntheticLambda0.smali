.class public final synthetic Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/tasks/ShellTask;

.field public final synthetic f$1:Lcom/sshtools/client/SessionChannelNG;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/tasks/ShellTask;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/tasks/ShellTask;

    iput-object p2, p0, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;->f$1:Lcom/sshtools/client/SessionChannelNG;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/tasks/ShellTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/ShellTask$$ExternalSyntheticLambda0;->f$1:Lcom/sshtools/client/SessionChannelNG;

    check-cast p1, Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/client/tasks/ShellTask;->lambda$onOpenSession$0$com-sshtools-client-tasks-ShellTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/ShellTask$ShellTaskEvent;)V

    return-void
.end method

.class public final synthetic Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/tasks/CommandTask;

.field public final synthetic f$1:Lcom/sshtools/client/SessionChannelNG;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/tasks/CommandTask;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/client/tasks/CommandTask;

    iput-object p2, p0, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;->f$1:Lcom/sshtools/client/SessionChannelNG;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;->f$0:Lcom/sshtools/client/tasks/CommandTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/CommandTask$$ExternalSyntheticLambda6;->f$1:Lcom/sshtools/client/SessionChannelNG;

    check-cast p1, Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;

    invoke-virtual {v0, v1, p1}, Lcom/sshtools/client/tasks/CommandTask;->lambda$onCloseSession$1$com-sshtools-client-tasks-CommandTask(Lcom/sshtools/client/SessionChannelNG;Lcom/sshtools/client/tasks/CommandTask$CommandTaskEvent;)V

    return-void
.end method

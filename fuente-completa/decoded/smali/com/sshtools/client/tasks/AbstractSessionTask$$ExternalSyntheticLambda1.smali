.class public final synthetic Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/tasks/AbstractSessionTask;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/AbstractSessionTask;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda1;->f$0:Lcom/sshtools/client/tasks/AbstractSessionTask;

    check-cast p1, Ljava/util/function/Function;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;->lambda$new$0$com-sshtools-client-tasks-AbstractSessionTask(Ljava/util/function/Function;)Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object p1

    return-object p1
.end method

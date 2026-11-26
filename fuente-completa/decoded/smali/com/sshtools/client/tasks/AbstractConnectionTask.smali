.class public abstract Lcom/sshtools/client/tasks/AbstractConnectionTask;
.super Lcom/sshtools/client/tasks/Task;
.source "AbstractConnectionTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;
    }
.end annotation


# instance fields
.field protected final clientSupplier:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/function/Function<",
            "Ljava/lang/Integer;",
            "Lcom/sshtools/client/SshClient;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder<",
            "**>;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p1, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->connection:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/AbstractConnectionTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/sshtools/client/tasks/AbstractConnectionTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/SshConnection;

    invoke-direct {p0, v0}, Lcom/sshtools/client/tasks/Task;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 85
    iget-object p1, p1, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->clientSupplier:Ljava/util/Optional;

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask;->clientSupplier:Ljava/util/Optional;

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No connection or client supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;)Lcom/sshtools/common/ssh/SshConnection;
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->clientSupplier:Ljava/util/Optional;

    new-instance v0, Lcom/sshtools/client/tasks/AbstractConnectionTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/AbstractConnectionTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/Function;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sshtools/client/SshClient;

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p0

    return-object p0
.end method

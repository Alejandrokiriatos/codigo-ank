.class public final synthetic Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/SshClient;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/SshClient;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/SshClient;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/SshClient;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;->lambda$withClient$0(Lcom/sshtools/client/SshClient;Ljava/lang/Integer;)Lcom/sshtools/client/SshClient;

    move-result-object p1

    return-object p1
.end method

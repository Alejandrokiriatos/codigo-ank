.class public final synthetic Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sshtools/client/AbstractSessionChannel;


# direct methods
.method public synthetic constructor <init>(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/AbstractSessionChannel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda0;->f$0:Lcom/sshtools/client/AbstractSessionChannel;

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;->lambda$close$2(Lcom/sshtools/client/AbstractSessionChannel;Ljava/util/function/Consumer;)V

    return-void
.end method

.class public abstract Lcom/sshtools/client/tasks/AbstractShellTask;
.super Lcom/sshtools/client/tasks/AbstractSessionTask;
.source "AbstractShellTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/client/AbstractSessionChannel;",
        ">",
        "Lcom/sshtools/client/tasks/AbstractSessionTask<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
            "*TT;*>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractSessionTask;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)V

    return-void
.end method


# virtual methods
.method protected beforeStartShell(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected final setupSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/AbstractShellTask;->beforeStartShell(Lcom/sshtools/client/AbstractSessionChannel;)V

    .line 39
    invoke-virtual {p1}, Lcom/sshtools/client/AbstractSessionChannel;->startShell()Lcom/sshtools/common/ssh/RequestFuture;

    return-void
.end method

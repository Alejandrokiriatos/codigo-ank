.class public abstract Lcom/sshtools/client/tasks/Task;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/Task$TaskRunnable;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/sshtools/client/SshClient;)V
    .locals 0

    .line 51
    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

.method public static ofRunnable(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)Lcom/sshtools/client/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Lcom/sshtools/client/tasks/Task$TaskRunnable<",
            "TT;>;)",
            "Lcom/sshtools/client/tasks/Task;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/sshtools/client/tasks/Task$1;

    invoke-direct {v0, p0, p1}, Lcom/sshtools/client/tasks/Task$1;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    return-object v0
.end method

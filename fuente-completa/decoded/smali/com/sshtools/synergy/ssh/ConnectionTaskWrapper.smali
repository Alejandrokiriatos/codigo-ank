.class public Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;
.super Lcom/sshtools/common/ssh/ConnectionAwareTask;
.source "ConnectionTaskWrapper.java"


# instance fields
.field r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Ljava/lang/Runnable;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 33
    iput-object p2, p0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;->r:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected doTask()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/ConnectionTaskWrapper;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

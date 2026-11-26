.class public abstract Lcom/sshtools/common/ssh/ConnectionAwareTask;
.super Lcom/sshtools/common/ssh/AbstractRequestFuture;
.source "ConnectionAwareTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected final con:Lcom/sshtools/common/ssh/SshConnection;

.field protected lastError:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/sshtools/common/ssh/AbstractRequestFuture;-><init>()V

    .line 35
    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 38
    iput-object p1, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method protected abstract doTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public getLastError()Ljava/lang/Throwable;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->lastError:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final run()V
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnectionManager;->setupConnection(Lcom/sshtools/common/ssh/SshConnection;)V

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->doTask()V

    .line 50
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->getLastError()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->done(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnectionManager;->clearConnection()V

    return-void

    :catchall_0
    move-exception v1

    .line 52
    :try_start_1
    iput-object v1, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->lastError:Ljava/lang/Throwable;

    .line 53
    const-string v2, "Connection task failed with an error"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v0}, Lcom/sshtools/common/ssh/ConnectionAwareTask;->done(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    iget-object v0, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnectionManager;->clearConnection()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/sshtools/common/ssh/ConnectionAwareTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getConnectionManager()Lcom/sshtools/common/ssh/SshConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnectionManager;->clearConnection()V

    .line 57
    throw v0
.end method

.class public abstract Lcom/sshtools/client/tasks/AbstractSessionTask;
.super Lcom/sshtools/client/tasks/AbstractConnectionTask;
.source "AbstractSessionTask.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sshtools/client/AbstractSessionChannel;",
        ">",
        "Lcom/sshtools/client/tasks/AbstractConnectionTask;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private final future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

.field private final onClose:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/util/function/Consumer<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final session:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end field

.field private timeout:J


# direct methods
.method public constructor <init>(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder<",
            "*TT;*>;)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractConnectionTask;-><init>(Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;)V

    const-wide/16 v0, 0x2710

    .line 92
    iput-wide v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->timeout:J

    .line 99
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->-$$Nest$fgetsession(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/AbstractSessionTask;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->session:Ljava/util/Optional;

    .line 100
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->-$$Nest$fgetfuture(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    .line 101
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;->-$$Nest$fgetonClose(Lcom/sshtools/client/tasks/AbstractSessionTask$AbstractSessionTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->onClose:Ljava/util/Optional;

    return-void
.end method

.method static synthetic lambda$close$2(Lcom/sshtools/client/AbstractSessionChannel;Ljava/util/function/Consumer;)V
    .locals 0

    .line 156
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$new$1()Lcom/sshtools/common/ssh/ChannelRequestFuture;
    .locals 1

    .line 100
    new-instance v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    return-object v0
.end method


# virtual methods
.method public changeTerminalDimensions(IIII)V
    .locals 1

    .line 170
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/AbstractSessionChannel;->changeTerminalDimensions(IIII)V

    return-void
.end method

.method public final close()V
    .locals 3

    .line 148
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ending session task"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/sshtools/client/AbstractSessionChannel;->close()V

    .line 155
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->onCloseSession(Lcom/sshtools/client/AbstractSessionChannel;)V

    .line 156
    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->onClose:Ljava/util/Optional;

    new-instance v2, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/sshtools/client/tasks/AbstractSessionTask$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/AbstractSessionChannel;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 158
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->lastError:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->done(Z)V

    .line 160
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->lastError:Ljava/lang/Throwable;

    invoke-static {v0}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Session task is done success={}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected abstract createSession(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/AbstractSessionChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")TT;"
        }
    .end annotation
.end method

.method public disconnect()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SshConnection;->disconnect()V

    return-void
.end method

.method public doTask()V
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v1, v0}, Lcom/sshtools/common/ssh/SshConnection;->openChannel(Lcom/sshtools/common/ssh/Channel;)V

    .line 121
    invoke-virtual {v0}, Lcom/sshtools/client/AbstractSessionChannel;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v1

    iget-wide v2, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->timeout:J

    invoke-virtual {v1, v2, v3}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->setupSession(Lcom/sshtools/client/AbstractSessionChannel;)V

    .line 129
    :try_start_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const-string v1, "Starting session task"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->onOpenSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 134
    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->lastError:Ljava/lang/Throwable;

    return-void

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open session channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChannelFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    return-object v0
.end method

.method public getSession()Lcom/sshtools/client/AbstractSessionChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->session:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/AbstractSessionChannel;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractSessionTask;->getSession()Lcom/sshtools/client/AbstractSessionChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/AbstractSessionChannel;->isClosed()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-sshtools-client-tasks-AbstractSessionTask(Ljava/util/function/Function;)Lcom/sshtools/client/AbstractSessionChannel;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractSessionTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/AbstractSessionChannel;

    return-object p1
.end method

.method protected abstract onCloseSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onOpenSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation
.end method

.method protected abstract setupSession(Lcom/sshtools/client/AbstractSessionChannel;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

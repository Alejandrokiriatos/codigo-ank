.class public abstract Lcom/sshtools/client/tasks/AsyncSessionTask;
.super Ljava/lang/Object;
.source "AsyncSessionTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field channelName:Ljava/lang/String;

.field con:Lcom/sshtools/synergy/ssh/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

.field session:Lcom/sshtools/client/SessionChannelNG;

.field timeout:J


# direct methods
.method public constructor <init>(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)V"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/sshtools/common/ssh/ChannelRequestFuture;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/ChannelRequestFuture;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sshtools/client/tasks/AsyncSessionTask;-><init>(Lcom/sshtools/synergy/ssh/Connection;Lcom/sshtools/common/ssh/ChannelRequestFuture;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/ssh/Connection;Lcom/sshtools/common/ssh/ChannelRequestFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Lcom/sshtools/common/ssh/ChannelRequestFuture;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 43
    iput-wide v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->timeout:J

    .line 46
    const-string v0, "session"

    iput-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->channelName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 50
    iput-object p2, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->close()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->disconnect()V

    return-void
.end method

.method protected getBufferSize()I
    .locals 1

    const v0, 0xffff

    return v0
.end method

.method public getChannelFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected isAllocatePseudoTerminal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onCloseSession(Lcom/sshtools/common/ssh/SessionChannel;)V
.end method

.method protected abstract onOpenSession(Lcom/sshtools/common/ssh/SessionChannel;)V
.end method

.method public run()V
    .locals 8

    .line 72
    new-instance v0, Lcom/sshtools/client/SessionChannelNG;

    iget-object v1, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->channelName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 74
    invoke-virtual {v2}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/SshClientContext;

    const-class v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v2, v3}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v2}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxPacketSize()I

    move-result v2

    iget-object v3, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 75
    invoke-virtual {v3}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v3

    check-cast v3, Lcom/sshtools/client/SshClientContext;

    const-class v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v3, v4}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v3}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    iget-object v4, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 76
    invoke-virtual {v4}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v4

    check-cast v4, Lcom/sshtools/client/SshClientContext;

    const-class v5, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v4, v5}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v4}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMaxWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    iget-object v5, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    .line 77
    invoke-virtual {v5}, Lcom/sshtools/synergy/ssh/Connection;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v5

    check-cast v5, Lcom/sshtools/client/SshClientContext;

    const-class v6, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v5, v6}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sshtools/common/shell/ShellPolicy;

    invoke-virtual {v5}, Lcom/sshtools/common/shell/ShellPolicy;->getSessionMinWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v5

    iget-object v6, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->future:Lcom/sshtools/common/ssh/ChannelRequestFuture;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sshtools/client/SessionChannelNG;-><init>(Ljava/lang/String;ILcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/common/ssh/ChannelRequestFuture;Z)V

    iput-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    .line 80
    new-instance v1, Lcom/sshtools/client/tasks/AsyncSessionTask$1;

    invoke-direct {v1, p0}, Lcom/sshtools/client/tasks/AsyncSessionTask$1;-><init>(Lcom/sshtools/client/tasks/AsyncSessionTask;)V

    invoke-virtual {v0, v1}, Lcom/sshtools/client/SessionChannelNG;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V

    .line 88
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->con:Lcom/sshtools/synergy/ssh/Connection;

    invoke-virtual {v0}, Lcom/sshtools/synergy/ssh/Connection;->getConnectionProtocol()Lcom/sshtools/synergy/ssh/ConnectionProtocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0, v1}, Lcom/sshtools/synergy/ssh/ConnectionProtocol;->openChannel(Lcom/sshtools/synergy/ssh/ChannelNG;)V

    .line 89
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {v0}, Lcom/sshtools/client/SessionChannelNG;->getOpenFuture()Lcom/sshtools/common/ssh/ChannelRequestFuture;

    move-result-object v0

    iget-wide v1, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->timeout:J

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/common/ssh/ChannelRequestFuture;->waitFor(J)Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/RequestFuture;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AsyncSessionTask;->setupSession(Lcom/sshtools/common/ssh/SessionChannel;)V

    .line 95
    iget-object v0, p0, Lcom/sshtools/client/tasks/AsyncSessionTask;->session:Lcom/sshtools/client/SessionChannelNG;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AsyncSessionTask;->onOpenSession(Lcom/sshtools/common/ssh/SessionChannel;)V

    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not open session channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract setupSession(Lcom/sshtools/common/ssh/SessionChannel;)V
.end method

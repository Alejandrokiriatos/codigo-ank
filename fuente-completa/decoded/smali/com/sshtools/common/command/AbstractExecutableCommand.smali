.class public abstract Lcom/sshtools/common/command/AbstractExecutableCommand;
.super Ljava/lang/Object;
.source "AbstractExecutableCommand.java"

# interfaces
.implements Lcom/sshtools/common/command/ExecutableCommand;


# instance fields
.field protected session:Lcom/sshtools/common/ssh/SessionChannelServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocatePseudoTerminal(Ljava/lang/String;IIII[B)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract createProcess([Ljava/lang/String;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getExitCode()I
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/sshtools/common/ssh/SessionChannel;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    return-object v0
.end method

.method public getStderrOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getErrorStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/sshtools/common/ssh/SessionChannelServer;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    .line 57
    invoke-interface {p1}, Lcom/sshtools/common/ssh/SessionChannelServer;->haltIncomingData()V

    return-void
.end method

.method public abstract kill()V
.end method

.method public abstract onStart()V
.end method

.method public start()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sshtools/common/command/AbstractExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/SessionChannelServer;->getConnection()Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v0

    new-instance v1, Lcom/sshtools/common/command/AbstractExecutableCommand$1;

    invoke-direct {v1, p0}, Lcom/sshtools/common/command/AbstractExecutableCommand$1;-><init>(Lcom/sshtools/common/command/AbstractExecutableCommand;)V

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/SshConnection;->executeTask(Ljava/lang/Runnable;)V

    return-void
.end method

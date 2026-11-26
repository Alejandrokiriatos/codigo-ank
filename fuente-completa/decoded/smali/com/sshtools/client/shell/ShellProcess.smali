.class public Lcom/sshtools/client/shell/ShellProcess;
.super Ljava/lang/Object;
.source "ShellProcess.java"


# instance fields
.field private final bin:Ljava/io/BufferedInputStream;

.field private final in:Lcom/sshtools/client/shell/ShellInputStream;

.field private final out:Ljava/io/OutputStream;

.field private final shell:Lcom/sshtools/client/shell/ExpectShell;


# direct methods
.method constructor <init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ShellInputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellProcess;->shell:Lcom/sshtools/client/shell/ExpectShell;

    .line 41
    iput-object p2, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    .line 42
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    .line 43
    iput-object p3, p0, Lcom/sshtools/client/shell/ShellProcess;->out:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public clearOutput()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->clearOutput()V

    return-void
.end method

.method public drain()Lcom/sshtools/client/shell/ShellProcess;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "3.1.0"
    .end annotation

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getCommandOutput()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->getCommandOutput()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitCode()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->getExitCode()I

    move-result v0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshIOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getShell()Lcom/sshtools/client/shell/ExpectShell;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->shell:Lcom/sshtools/client/shell/ExpectShell;

    return-object v0
.end method

.method public hasSucceeded()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->hasSucceeded()Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->isActive()Z

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->mark(I)V

    return-void
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    return-void
.end method

.method public waitFor()Lcom/sshtools/client/shell/ShellProcess;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->in:Lcom/sshtools/client/shell/ShellInputStream;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellInputStream;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->bin:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcess;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0
.end method

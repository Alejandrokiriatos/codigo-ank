.class public Lcom/sshtools/client/shell/ShellProcessController;
.super Lcom/sshtools/client/shell/ShellController;
.source "ShellProcessController.java"


# instance fields
.field process:Lcom/sshtools/client/shell/ShellProcess;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/shell/ShellProcess;)V
    .locals 1

    .line 32
    new-instance v0, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/sshtools/client/shell/ShellProcessController;-><init>(Lcom/sshtools/client/shell/ShellProcess;Lcom/sshtools/client/shell/ShellMatcher;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/client/shell/ShellProcess;Lcom/sshtools/client/shell/ShellMatcher;)V
    .locals 2

    .line 36
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getShell()Lcom/sshtools/client/shell/ExpectShell;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellProcess;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/sshtools/client/shell/ShellController;-><init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ShellMatcher;Ljava/io/InputStream;)V

    .line 37
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellProcessController;->process:Lcom/sshtools/client/shell/ShellProcess;

    return-void
.end method


# virtual methods
.method public getProcess()Lcom/sshtools/client/shell/ShellProcess;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcessController;->process:Lcom/sshtools/client/shell/ShellProcess;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellProcessController;->process:Lcom/sshtools/client/shell/ShellProcess;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ShellProcess;->isActive()Z

    move-result v0

    return v0
.end method

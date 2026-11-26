.class public Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;
.super Ljava/lang/Object;
.source "ShellStartupPasswordTrigger.java"

# interfaces
.implements Lcom/sshtools/client/shell/ShellStartupTrigger;


# instance fields
.field matcher:Lcom/sshtools/client/shell/ShellMatcher;

.field password:Ljava/lang/String;

.field passwordPromptExpression:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/shell/ShellMatcher;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->passwordPromptExpression:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->password:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->matcher:Lcom/sshtools/client/shell/ShellMatcher;

    return-void
.end method


# virtual methods
.method public canStartShell(Ljava/lang/String;Lcom/sshtools/client/shell/ShellWriter;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger$1;->$SwitchMap$com$sshtools$client$shell$ShellMatcher$Continue:[I

    iget-object v1, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->matcher:Lcom/sshtools/client/shell/ShellMatcher;

    iget-object v2, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->passwordPromptExpression:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/sshtools/client/shell/ShellMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellMatcher$Continue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/sshtools/client/shell/ShellStartupPasswordTrigger;->password:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sshtools/client/shell/ShellWriter;->typeAndReturn(Ljava/lang/String;)V

    return v0

    .line 47
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected password prompt but content does not match"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.class public Lcom/sshtools/common/command/NativeExecutableCommand;
.super Lcom/sshtools/common/command/AbstractExecutableCommand;
.source "NativeExecutableCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;
    }
.end annotation


# instance fields
.field commandLine:[Ljava/lang/String;

.field env:[Ljava/lang/String;

.field exitValue:I

.field process:Ljava/lang/Process;

.field thread:Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/sshtools/common/command/AbstractExecutableCommand;-><init>()V

    const/high16 v0, -0x80000000

    .line 54
    iput v0, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->exitValue:I

    return-void
.end method


# virtual methods
.method public createProcess([Ljava/lang/String;Ljava/util/Map;)Z
    .locals 5
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

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    aget-object v0, p1, v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Creating native process: {}"

    invoke-static {v2, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_1
    iput-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->commandLine:[Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p2, :cond_2

    .line 82
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->env:[Ljava/lang/String;

    .line 89
    invoke-virtual {v0, p2}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 92
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p2

    iget-object v0, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->env:[Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    .line 93
    new-instance p1, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;

    invoke-direct {p1, p0}, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;-><init>(Lcom/sshtools/common/command/NativeExecutableCommand;)V

    iput-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->thread:Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;

    .line 95
    iget-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->session:Lcom/sshtools/common/ssh/SessionChannelServer;

    new-instance p2, Lcom/sshtools/common/command/NativeExecutableCommand$1;

    invoke-direct {p2, p0}, Lcom/sshtools/common/command/NativeExecutableCommand$1;-><init>(Lcom/sshtools/common/command/NativeExecutableCommand;)V

    invoke-interface {p1, p2}, Lcom/sshtools/common/ssh/SessionChannelServer;->addEventListener(Lcom/sshtools/common/ssh/ChannelEventListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public getExitCode()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->exitValue:I

    return v0
.end method

.method public kill()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sshtools/common/command/NativeExecutableCommand;->thread:Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;

    invoke-virtual {v0}, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->start()V

    return-void
.end method

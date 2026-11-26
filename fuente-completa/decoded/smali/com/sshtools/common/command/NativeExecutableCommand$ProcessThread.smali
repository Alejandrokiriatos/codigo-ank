.class Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;
.super Ljava/lang/Thread;
.source "NativeExecutableCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/command/NativeExecutableCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessThread"
.end annotation


# instance fields
.field stderr:Lcom/sshtools/common/util/IOStreamConnector;

.field stdout:Lcom/sshtools/common/util/IOStreamConnector;

.field final synthetic this$0:Lcom/sshtools/common/command/NativeExecutableCommand;


# direct methods
.method constructor <init>(Lcom/sshtools/common/command/NativeExecutableCommand;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 127
    :try_start_0
    const-string v1, "Starting reading I/O"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    new-instance v1, Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v2, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object v2, v2, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    invoke-virtual {v3}, Lcom/sshtools/common/command/NativeExecutableCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/IOStreamConnector;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->stdout:Lcom/sshtools/common/util/IOStreamConnector;

    .line 129
    new-instance v1, Lcom/sshtools/common/util/IOStreamConnector;

    iget-object v2, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object v2, v2, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    invoke-virtual {v3}, Lcom/sshtools/common/command/NativeExecutableCommand;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/util/IOStreamConnector;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->stderr:Lcom/sshtools/common/util/IOStreamConnector;

    .line 131
    iget-object v1, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget-object v2, v1, Lcom/sshtools/common/command/NativeExecutableCommand;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    iput v2, v1, Lcom/sshtools/common/command/NativeExecutableCommand;->exitValue:I

    .line 132
    const-string v1, "Command exited with {}"

    iget-object v2, p0, Lcom/sshtools/common/command/NativeExecutableCommand$ProcessThread;->this$0:Lcom/sshtools/common/command/NativeExecutableCommand;

    iget v2, v2, Lcom/sshtools/common/command/NativeExecutableCommand;->exitValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 134
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    const-string v2, "Native process transfer thread failed"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

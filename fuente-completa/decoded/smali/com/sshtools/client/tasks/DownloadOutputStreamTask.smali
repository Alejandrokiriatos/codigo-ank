.class public Lcom/sshtools/client/tasks/DownloadOutputStreamTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "DownloadOutputStreamTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;
    }
.end annotation


# instance fields
.field final output:Ljava/io/OutputStream;

.field final path:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;)V
    .locals 2

    .line 141
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 142
    invoke-static {p1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->-$$Nest$fgetoutputStream(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    iput-object v0, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->output:Ljava/io/OutputStream;

    .line 143
    invoke-static {p1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->-$$Nest$fgetremote(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->path:Ljava/nio/file/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;Lcom/sshtools/client/tasks/DownloadOutputStreamTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;-><init>(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/synergy/ssh/Connection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->create()Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;

    invoke-virtual {p1, p2}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;->withOutputStream(Ljava/io/OutputStream;)Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;-><init>(Lcom/sshtools/client/tasks/DownloadOutputStreamTask$DownloadOutputStreamTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OutputStream must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1()Ljava/lang/IllegalStateException;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Path must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected doTask()V
    .locals 3

    .line 162
    :try_start_0
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask$$ExternalSyntheticLambda2;-><init>(Lcom/sshtools/client/tasks/DownloadOutputStreamTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    iget-object v0, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->output:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->output:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/sshtools/common/util/IOUtils;->closeStream(Ljava/io/OutputStream;)Z

    .line 165
    throw v0
.end method

.method synthetic lambda$doTask$2$com-sshtools-client-tasks-DownloadOutputStreamTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->output:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/sshtools/client/tasks/DownloadOutputStreamTask;->progress:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method

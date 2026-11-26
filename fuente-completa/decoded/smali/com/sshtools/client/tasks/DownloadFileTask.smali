.class public Lcom/sshtools/client/tasks/DownloadFileTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "DownloadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;
    }
.end annotation


# instance fields
.field final local:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field

.field final remote:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)V
    .locals 2

    .line 159
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 160
    invoke-static {p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->-$$Nest$fgetremote(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/DownloadFileTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/DownloadFileTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->remote:Ljava/nio/file/Path;

    .line 161
    invoke-static {p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->-$$Nest$fgetlocal(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->local:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;Lcom/sshtools/client/tasks/DownloadFileTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/DownloadFileTask;-><init>(Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote path must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 166
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/DownloadFileTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/DownloadFileTask$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/tasks/DownloadFileTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/DownloadFileTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method public getDownloadedFile()Ljava/io/File;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->local:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$doTask$1$com-sshtools-client-tasks-DownloadFileTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->remote:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->local:Ljava/util/Optional;

    invoke-virtual {p1}, Lcom/sshtools/client/sftp/SftpClientTask;->lpwd()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/tasks/DownloadFileTask;->progress:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p1, v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method

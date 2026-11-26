.class public Lcom/sshtools/client/tasks/UploadFileTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "UploadFileTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;
    }
.end annotation


# instance fields
.field final local:Ljava/nio/file/Path;

.field final remote:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 142
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->-$$Nest$fgetpath(Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileTask;->remote:Ljava/util/Optional;

    .line 143
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->-$$Nest$fgetlocal(Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/client/tasks/UploadFileTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/UploadFileTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileTask;->local:Ljava/nio/file/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;Lcom/sshtools/client/tasks/UploadFileTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/UploadFileTask;-><init>(Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Local file must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 148
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadFileTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/UploadFileTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/UploadFileTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/UploadFileTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/UploadFileTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method synthetic lambda$doTask$1$com-sshtools-client-tasks-UploadFileTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadFileTask;->remote:Ljava/util/Optional;

    invoke-static {v0}, Lcom/sshtools/client/shell/ExpectShell$$ExternalSyntheticBackport0;->m(Ljava/util/Optional;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadFileTask;->local:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/client/tasks/UploadFileTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p1, v0, v1}, Lcom/sshtools/client/sftp/SftpClientTask;->put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadFileTask;->local:Ljava/nio/file/Path;

    invoke-interface {v0}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sshtools/client/tasks/UploadFileTask;->remote:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/file/Path;

    invoke-static {v2}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/tasks/UploadFileTask;->progress:Ljava/util/Optional;

    invoke-virtual {v3, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {p1, v0, v2, v1}, Lcom/sshtools/client/sftp/SftpClientTask;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

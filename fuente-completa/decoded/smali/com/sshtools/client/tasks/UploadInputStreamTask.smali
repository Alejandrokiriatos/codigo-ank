.class public Lcom/sshtools/client/tasks/UploadInputStreamTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "UploadInputStreamTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;
    }
.end annotation


# instance fields
.field final input:Ljava/io/InputStream;

.field final length:J

.field final path:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)V
    .locals 2

    .line 149
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 150
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->-$$Nest$fgetremote(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->path:Ljava/nio/file/Path;

    .line 151
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->-$$Nest$fgetinput(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->input:Ljava/io/InputStream;

    .line 152
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;->-$$Nest$fgetlength(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->length:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;Lcom/sshtools/client/tasks/UploadInputStreamTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/UploadInputStreamTask;-><init>(Lcom/sshtools/client/tasks/UploadInputStreamTask$UploadInputStreamTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote remote must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1()Ljava/lang/IllegalStateException;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "InputStream must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected doTask()V
    .locals 3

    .line 157
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/UploadInputStreamTask$$ExternalSyntheticLambda2;-><init>(Lcom/sshtools/client/tasks/UploadInputStreamTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/UploadInputStreamTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method synthetic lambda$doTask$2$com-sshtools-client-tasks-UploadInputStreamTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->input:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->path:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->progress:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sshtools/client/tasks/FileTransferProgress;

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/sshtools/client/tasks/UploadInputStreamTask;->length:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClientTask;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

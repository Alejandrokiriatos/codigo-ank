.class public Lcom/sshtools/client/tasks/UploadFileContentTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "UploadFileContentTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;
    }
.end annotation


# instance fields
.field final content:Ljava/lang/String;

.field final encoding:Ljava/nio/charset/Charset;

.field final remote:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)V
    .locals 2

    .line 159
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 160
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->-$$Nest$fgetremote(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->remote:Ljava/nio/file/Path;

    .line 161
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->-$$Nest$fgetcontent(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->content:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;->-$$Nest$fgetencoding(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    iput-object p1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->encoding:Ljava/nio/charset/Charset;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;Lcom/sshtools/client/tasks/UploadFileContentTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/UploadFileContentTask;-><init>(Lcom/sshtools/client/tasks/UploadFileContentTask$UploadFileContentTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote remote must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$new$1()Ljava/lang/IllegalStateException;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 167
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/UploadFileContentTask$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/tasks/UploadFileContentTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/UploadFileContentTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method synthetic lambda$doTask$2$com-sshtools-client-tasks-UploadFileContentTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->encoding:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 169
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->remote:Ljava/nio/file/Path;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/sshtools/client/tasks/UploadFileContentTask;->progress:Ljava/util/Optional;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/sshtools/client/tasks/FileTransferProgress;

    array-length v0, v0

    int-to-long v7, v0

    const-wide/16 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/client/sftp/SftpClientTask;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

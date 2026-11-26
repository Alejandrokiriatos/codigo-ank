.class public Lcom/sshtools/client/tasks/StatTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "StatTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;
    }
.end annotation


# instance fields
.field private attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

.field private final remote:Ljava/nio/file/Path;


# direct methods
.method private constructor <init>(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;)V
    .locals 1

    .line 114
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/sshtools/client/tasks/StatTask;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 115
    invoke-static {p1}, Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;->-$$Nest$fgetremote(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sshtools/client/tasks/StatTask$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sshtools/client/tasks/StatTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/file/Path;

    iput-object p1, p0, Lcom/sshtools/client/tasks/StatTask;->remote:Ljava/nio/file/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;Lcom/sshtools/client/tasks/StatTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/StatTask;-><init>(Lcom/sshtools/client/tasks/StatTask$StatTaskBuilder;)V

    return-void
.end method

.method static synthetic lambda$new$0()Ljava/lang/IllegalStateException;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote path must be supplied."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 3

    .line 120
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/StatTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/StatTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/StatTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/StatTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/StatTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method public getAttributes()Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sshtools/client/tasks/StatTask;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-object v0
.end method

.method synthetic lambda$doTask$1$com-sshtools-client-tasks-StatTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sshtools/client/tasks/StatTask;->remote:Ljava/nio/file/Path;

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/client/sftp/SftpClientTask;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/StatTask;->attrs:Lcom/sshtools/common/sftp/SftpFileAttributes;

    return-void
.end method

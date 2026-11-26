.class public abstract Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.super Lcom/sshtools/client/tasks/AbstractFileTask;
.source "AbstractOptimisedTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;,
        Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;,
        Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TARGET:",
        "Ljava/lang/Object;",
        "LOCALFILE:Ljava/lang/Object;",
        ">",
        "Lcom/sshtools/client/tasks/AbstractFileTask;"
    }
.end annotation


# instance fields
.field protected final blocksize:I

.field protected final buffersize:I

.field protected final chunkProgress:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "T",
            "LOCALFILE;",
            "Lcom/sshtools/client/tasks/FileTransferProgress;",
            ">;"
        }
    .end annotation
.end field

.field protected final chunks:I

.field protected final clients:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/sshtools/client/SshClient;",
            ">;"
        }
    .end annotation
.end field

.field protected final digest:Lcom/sshtools/client/sftp/RemoteHash;

.field protected final ignoreIntegrity:Z

.field protected final outstandingRequests:I

.field protected final primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

.field protected final progressMessages:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;",
            ">;"
        }
    .end annotation
.end field

.field protected final verboseOutput:Z

.field protected final verifyIntegrity:Z


# direct methods
.method protected constructor <init>(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder<",
            "**T",
            "LOCALFILE;",
            ">;)V"
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractFileTask;-><init>(Lcom/sshtools/client/tasks/AbstractFileTask$AbstractFileTaskBuilder;)V

    .line 315
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->clients:Ljava/util/LinkedList;

    .line 320
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetchunks(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->chunks:I

    .line 321
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetverifyIntegrity(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verifyIntegrity:Z

    .line 322
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetdigest(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Lcom/sshtools/client/sftp/RemoteHash;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->digest:Lcom/sshtools/client/sftp/RemoteHash;

    .line 323
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetignoreIntegrity(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->ignoreIntegrity:Z

    .line 324
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetchunkProgress(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->chunkProgress:Ljava/util/function/Function;

    .line 325
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetprogressMessages(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->progressMessages:Ljava/util/Optional;

    .line 326
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetblocksize(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->blocksize:I

    .line 327
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetbuffersize(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->buffersize:I

    .line 328
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetoutstandingRequests(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)I

    move-result v0

    iput v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->outstandingRequests:I

    .line 329
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetverboseOutput(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verboseOutput:Z

    .line 332
    :try_start_0
    invoke-static {p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;->-$$Nest$fgetprimarySftpClient(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/sftp/SftpClient;

    iput-object p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 336
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to create SFTP client."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p1

    .line 334
    new-instance v0, Ljava/io/UncheckedIOException;

    invoke-direct {v0, p1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method static synthetic lambda$checkErrors$2(Ljava/lang/Throwable;)Z
    .locals 0

    .line 382
    instance-of p0, p0, Lcom/sshtools/client/sftp/TransferCancelledException;

    return p0
.end method

.method static synthetic lambda$checkErrors$3(Ljava/lang/Throwable;Ljava/lang/Throwable;)Z
    .locals 1

    .line 383
    instance-of v0, p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    if-eqz v0, :cond_0

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$displayMessage$1(Ljava/lang/String;[Ljava/lang/Object;Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;)V
    .locals 0

    .line 352
    invoke-interface {p2, p0, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$ProgressMessages;->message(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final checkErrors(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 378
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    .line 383
    new-instance v1, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 385
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 386
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 387
    instance-of v0, p1, Ljava/io/UncheckedIOException;

    if-nez v0, :cond_5

    .line 390
    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 392
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_3

    .line 394
    instance-of v0, p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    if-nez v0, :cond_2

    .line 397
    new-instance v0, Ljava/io/IOException;

    .line 398
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 397
    const-string v2, "Transfer could not be completed. {0}"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 395
    :cond_2
    check-cast p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    throw p1

    .line 393
    :cond_3
    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    .line 391
    :cond_4
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 388
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 401
    :cond_6
    new-instance v0, Lcom/sshtools/common/ssh/MultiIOException;

    const-string v1, "Transfer could not be completed due to at least 2 errors."

    invoke-direct {v0, v1, p1}, Lcom/sshtools/common/ssh/MultiIOException;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    throw v0
.end method

.method protected final configureConnections()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 363
    iget v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->chunks:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 364
    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 363
    const-string v1, "Creating {0} connections to {1}@{2}:{3,number,#}"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 366
    :goto_0
    iget v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->chunks:I

    if-ge v0, v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->clients:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->clientSupplier:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Function;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/SshClient;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    .line 371
    invoke-interface {v1}, Lcom/sshtools/common/ssh/SshConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIPAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 370
    const-string v1, "Created {0} connections to {1}@{2}:{3,number,#}"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract configureTargetFolder()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTARGET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation
.end method

.method protected final varargs displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->progressMessages:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final doTask()V
    .locals 3

    .line 342
    new-instance v0, Lcom/sshtools/client/sftp/SftpClientTask;

    iget-object v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    new-instance v2, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/AbstractOptimisedTask;)V

    invoke-direct {v0, v1, v2}, Lcom/sshtools/client/sftp/SftpClientTask;-><init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->doTaskUntilDone(Lcom/sshtools/client/tasks/Task;)V

    return-void
.end method

.method synthetic lambda$doTask$0$com-sshtools-client-tasks-AbstractOptimisedTask(Lcom/sshtools/client/sftp/SftpClientTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->configureConnections()V

    .line 344
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->configureTargetFolder()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->transferFiles(Ljava/lang/Object;)V

    return-void
.end method

.method protected final printChunkMessages(J)V
    .locals 4

    const/4 v0, 0x0

    .line 406
    :goto_0
    iget v1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->chunks:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v0

    mul-long/2addr v2, p1

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 409
    const-string v2, "Starting chunk {0} at position {1} with length of {2} bytes"

    invoke-virtual {p0, v2, v0}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract transferFiles(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation
.end method

.method protected final varargs verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verboseOutput:Z

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final verifyIntegrity(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 417
    iget-boolean v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->verifyIntegrity:Z

    if-eqz v0, :cond_3

    .line 420
    :try_start_0
    const-string v0, "Verifying {0}"

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    iget-object v0, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->digest:Lcom/sshtools/client/sftp/RemoteHash;

    invoke-virtual {v0, v1, p2, v2}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/sftp/RemoteHash;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 422
    const-string p2, "The integrity of {0} has been verified"

    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 424
    :cond_0
    new-instance p2, Ljava/io/IOException;

    const-string v0, "The local and remote paths DO NOT match"

    .line 425
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 428
    invoke-virtual {p1}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result p2

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    .line 429
    iget-boolean p1, p0, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->ignoreIntegrity:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 433
    const-string p1, "Ignoring that the remote server does not support integrity verification"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;->displayMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 430
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "The remote server does not support integrity verification"

    new-array p2, p2, [Ljava/lang/Object;

    .line 431
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 435
    :cond_2
    throw p1

    :cond_3
    :goto_0
    return-void
.end method

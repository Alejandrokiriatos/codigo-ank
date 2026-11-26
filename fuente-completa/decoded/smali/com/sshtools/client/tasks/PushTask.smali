.class public final Lcom/sshtools/client/tasks/PushTask;
.super Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.source "PushTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask<",
        "Ljava/lang/String;",
        "Lcom/sshtools/common/files/AbstractFile;",
        ">;"
    }
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/files/AbstractFile;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteFolder:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Hh9ClcJycsNY7Sjy5mKvMlIkSHA(Ljava/nio/file/Path;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sshtools/common/util/Utils;->translatePathString(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)V
    .locals 3

    .line 299
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;-><init>(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)V

    .line 300
    invoke-static {p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->-$$Nest$fgetremoteFolder(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->remoteFolder:Ljava/lang/String;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->files:Ljava/util/List;

    .line 302
    invoke-static {p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->-$$Nest$fgetfiles(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;->-$$Nest$fgetpaths(Lcom/sshtools/client/tasks/PushTask$PushTaskBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->getCurrentWorkingDirectory()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 307
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->files:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v1, "%s does not exist"

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/permissions/PermissionDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 312
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    return-void
.end method

.method private sendChunk(Lcom/sshtools/common/files/AbstractFile;JJLjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    move-wide v7, p4

    .line 517
    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/sshtools/client/SshClient;

    .line 519
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v0, 0x0

    .line 520
    :try_start_1
    invoke-interface {p1, v0}, Lcom/sshtools/common/files/AbstractFile;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;

    move-result-object v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 521
    :try_start_2
    invoke-interface {v10, p2, p3}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->seek(J)V

    .line 522
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    .line 523
    invoke-virtual {v0, v9}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sshtools/client/tasks/PushTask;->blocksize:I

    .line 524
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withBlockSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sshtools/client/tasks/PushTask;->outstandingRequests:I

    .line 525
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withAsyncRequests(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    move-object/from16 v1, p9

    .line 526
    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    .line 527
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->lpwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalPath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 531
    :try_start_3
    new-instance v2, Lcom/sshtools/client/ChunkInputStream;

    invoke-direct {v2, v10, v7, v8}, Lcom/sshtools/client/ChunkInputStream;-><init>(Lcom/sshtools/common/files/AbstractFileRandomAccess;J)V

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sshtools/client/tasks/PushTask$1;

    move-object/from16 v0, p8

    invoke-direct {v4, p0, v0, p2, p3}, Lcom/sshtools/client/tasks/PushTask$1;-><init>(Lcom/sshtools/client/tasks/PushTask;Lcom/sshtools/client/tasks/FileTransferProgress;J)V

    move-wide v5, p2

    invoke-virtual/range {v1 .. v8}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 563
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_0
    if-eqz v10, :cond_1

    .line 564
    :try_start_5
    invoke-interface {v10}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter p1

    .line 571
    :try_start_6
    iget-object p2, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {p2, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 572
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 555
    :try_start_7
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpStatusException;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 556
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " (chunk "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v3, p6

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " @ "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " bytes)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v2, v0}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 559
    throw v2

    .line 561
    :cond_2
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_0
    if-eqz v1, :cond_3

    .line 522
    :try_start_8
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p2, v0

    :try_start_9
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    if-eqz v10, :cond_4

    .line 520
    :try_start_a
    invoke-interface {v10}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object p2, v0

    :try_start_b
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 565
    :try_start_c
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/sshtools/client/sftp/TransferCancelledException;

    if-eqz p2, :cond_5

    .line 566
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    throw p1

    .line 568
    :cond_5
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 570
    :goto_3
    iget-object p2, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter p2

    .line 571
    :try_start_d
    iget-object p3, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {p3, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 572
    monitor-exit p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 573
    throw p1

    :catchall_6
    move-exception v0

    move-object p1, v0

    .line 572
    :try_start_e
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw p1

    :catchall_7
    move-exception v0

    move-object p1, v0

    .line 519
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    throw p1
.end method

.method private sendChunks(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)Ljava/util/Collection;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/AbstractFile;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p2

    .line 364
    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v15

    const-wide v2, 0x7fffffffffffffffL

    .line 368
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v4, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v4, v0}, Lcom/sshtools/client/sftp/SftpClient;->exists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    const-string v4, "Pre-creating file {0}/{1}"

    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v5

    iget v6, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v13, v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    iget-object v4, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    const/16 v5, 0xa

    invoke-virtual {v4, v0, v5}, Lcom/sshtools/client/sftp/SftpClient;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpHandle;->close()V

    .line 374
    :cond_0
    iget-object v0, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v4

    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v5, v6}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 378
    :cond_1
    iget-object v0, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sshtools/common/util/FileUtils;->checkEndsWithSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v4, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v4}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 381
    invoke-virtual {v4, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 386
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 387
    new-instance v6, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v7, 0x0

    .line 391
    :try_start_1
    iget-object v8, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v8}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v8

    const-string v9, "create-multipart-file@sshtools.com"

    invoke-virtual {v4}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v4

    .line 393
    iget-object v8, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v8}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v8

    invoke-virtual {v8, v4, v0}, Lcom/sshtools/client/sftp/SftpChannel;->getExtendedReply(Lcom/sshtools/common/util/UnsignedInteger32;Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpMessage;

    move-result-object v4

    .line 394
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpMessage;->readBinaryString()[B

    move-result-object v8

    .line 395
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpMessage;->readInt()J

    move-result-wide v9

    .line 398
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpMessage;->read()I

    .line 400
    iget-object v4, v1, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v4

    invoke-virtual {v4, v8, v0}, Lcom/sshtools/client/sftp/SftpChannel;->createHandle([BLjava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v12

    .line 402
    const-string v4, "Remote server supports multipart extensions with minimum part size of {0} bytes"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v4, v8}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v16
    :try_end_1
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v4, v16, v9

    if-gtz v4, :cond_3

    .line 405
    :try_start_2
    const-string v4, "Minimum blocksize for push not met reverting to put"

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v8}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v4, p1

    .line 407
    :try_start_3
    invoke-direct {v1, v4, v0, v13}, Lcom/sshtools/client/tasks/PushTask;->sendFileViaSFTP(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_2
    move-object v13, v14

    goto/16 :goto_4

    .line 478
    :catch_0
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 481
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    iget-object v0, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    move-object v13, v14

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 483
    :catch_1
    :try_start_5
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    :goto_0
    iget-object v2, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 486
    throw v0

    :catch_2
    move-object/from16 v4, p1

    goto :goto_2

    :cond_3
    move-object/from16 v4, p1

    .line 416
    :try_start_6
    invoke-interface {v4}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v16

    div-long v16, v16, v9

    .line 417
    invoke-interface {v4}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v18

    rem-long v18, v18, v9

    const-wide/16 v20, 0x0

    cmp-long v0, v18, v20

    if-lez v0, :cond_4

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    .line 419
    :cond_4
    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    int-to-long v2, v0

    div-long v16, v16, v2

    mul-long v8, v16, v9

    .line 421
    invoke-interface {v4}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v2

    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v10, v0

    mul-long/2addr v10, v8

    sub-long/2addr v2, v10

    .line 423
    invoke-virtual {v1, v8, v9}, Lcom/sshtools/client/tasks/PushTask;->printChunkMessages(J)V

    move v0, v7

    .line 425
    :goto_1
    iget v10, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I
    :try_end_6
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ge v0, v10, :cond_2

    move-object v4, v5

    add-int/lit8 v5, v0, 0x1

    int-to-long v10, v0

    mul-long/2addr v10, v8

    .line 428
    :try_start_7
    new-instance v0, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda0;
    :try_end_7
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-wide/from16 v22, v2

    move-object v3, v6

    move-wide/from16 v6, v22

    move-object/from16 v2, p1

    :try_start_8
    invoke-direct/range {v0 .. v14}, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda0;-><init>(Lcom/sshtools/client/tasks/PushTask;Lcom/sshtools/common/files/AbstractFile;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLcom/sshtools/client/sftp/SftpHandle;Ljava/lang/String;Ljava/util/List;)V
    :try_end_8
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v13, v14

    :try_start_9
    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_9
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide/from16 v22, v6

    move-object v6, v3

    move-wide/from16 v2, v22

    move v0, v5

    move-object v14, v13

    const/4 v7, 0x0

    move-object/from16 v13, p2

    move-object v5, v4

    move-object/from16 v4, p1

    goto :goto_1

    :catchall_1
    move-exception v0

    const-wide v2, 0x7fffffffffffffffL

    goto :goto_7

    :catch_3
    :goto_2
    move-object v4, v5

    :catch_4
    move-object v3, v6

    :catch_5
    move-object v13, v14

    .line 452
    :catch_6
    :try_start_a
    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v5

    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    int-to-long v7, v0

    div-long v8, v5, v7

    .line 453
    invoke-interface/range {p1 .. p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v5

    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v10, v0

    mul-long/2addr v10, v8

    sub-long v6, v5, v10

    .line 455
    const-string v0, "Falling back to pure random access support which may or may not be supported."

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v1, v8, v9}, Lcom/sshtools/client/tasks/PushTask;->printChunkMessages(J)V

    .line 458
    :goto_3
    iget v0, v1, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    if-ge v2, v0, :cond_5

    add-int/lit8 v5, v2, 0x1

    int-to-long v10, v2

    mul-long/2addr v10, v8

    .line 461
    new-instance v0, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda1;

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v13}, Lcom/sshtools/client/tasks/PushTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/PushTask;Lcom/sshtools/common/files/AbstractFile;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/lang/String;Ljava/util/List;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v2, v5

    goto :goto_3

    .line 478
    :cond_5
    :goto_4
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 481
    :try_start_b
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v15, v2, v3, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 485
    iget-object v0, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    :goto_5
    return-object v13

    :catchall_2
    move-exception v0

    goto :goto_6

    .line 483
    :catch_7
    :try_start_c
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 485
    :goto_6
    iget-object v2, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 486
    throw v0

    :catchall_3
    move-exception v0

    .line 478
    :goto_7
    invoke-interface {v15}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 481
    :try_start_d
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v15, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 485
    iget-object v2, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 487
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8

    .line 483
    :catch_8
    :try_start_e
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 485
    :goto_8
    iget-object v2, v1, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 486
    throw v0
.end method

.method private sendFileViaSFTP(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClient;

    .line 493
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v1

    .line 494
    iget v2, p0, Lcom/sshtools/client/tasks/PushTask;->blocksize:I

    if-lez v2, :cond_0

    .line 495
    iget v2, p0, Lcom/sshtools/client/tasks/PushTask;->blocksize:I

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withBlockSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    .line 497
    :cond_0
    iget v2, p0, Lcom/sshtools/client/tasks/PushTask;->outstandingRequests:I

    if-lez v2, :cond_1

    .line 498
    iget v2, p0, Lcom/sshtools/client/tasks/PushTask;->outstandingRequests:I

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withAsyncRequests(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    .line 500
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 501
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpClient;->getCurrentWorkingDirectory()Lcom/sshtools/common/files/AbstractFile;

    move-result-object v2

    invoke-interface {v2}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient;->lcd(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v1, p3}, Lcom/sshtools/client/sftp/SftpClient;->cd(Ljava/lang/String;)V

    .line 503
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 504
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 505
    :cond_2
    iget-object p1, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter p1

    .line 506
    :try_start_3
    iget-object p2, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 507
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    .line 500
    :try_start_4
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 505
    iget-object p2, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter p2

    .line 506
    :try_start_6
    iget-object p3, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 507
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 508
    throw p1

    :catchall_4
    move-exception p1

    .line 507
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method private sendPart(Lcom/sshtools/common/files/AbstractFile;JJLjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Lcom/sshtools/client/sftp/SftpHandle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    move-wide/from16 v8, p2

    move-wide/from16 v0, p4

    .line 582
    iget-object v2, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter v2

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/sshtools/client/SshClient;

    .line 584
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    const/4 v11, 0x0

    .line 585
    :try_start_1
    invoke-interface {p1, v11}, Lcom/sshtools/common/files/AbstractFile;->openFile(Z)Lcom/sshtools/common/files/AbstractFileRandomAccess;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 587
    :try_start_2
    invoke-interface {v12, v8, v9}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->seek(J)V

    .line 588
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v2

    .line 589
    invoke-virtual {v2, v10}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v2

    move-object/from16 v3, p11

    .line 590
    invoke-virtual {v2, v3}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    .line 591
    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpClient;->lpwd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalPath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v2

    .line 592
    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 594
    :try_start_3
    new-instance v2, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v2}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 595
    invoke-virtual/range {p9 .. p9}, Lcom/sshtools/client/sftp/SftpHandle;->getHandle()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    move-object/from16 v3, p10

    .line 596
    invoke-virtual {v2, v3}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v2, v8, v9}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V

    .line 598
    invoke-virtual {v2, v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeUINT64(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 600
    :try_start_4
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v3

    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v4

    const-string v5, "open-part-file@sshtools.com"

    invoke-virtual {v2}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/sshtools/client/sftp/SftpChannel;->sendExtensionMessage(Ljava/lang/String;[B)Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v2

    invoke-virtual/range {p9 .. p9}, Lcom/sshtools/client/sftp/SftpHandle;->getFile()Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/sshtools/client/sftp/SftpChannel;->getHandle(Lcom/sshtools/common/util/UnsignedInteger32;Lcom/sshtools/client/sftp/SftpFile;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v2
    :try_end_4
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 601
    :try_start_5
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    iget v3, p0, Lcom/sshtools/client/tasks/PushTask;->blocksize:I

    iget v4, p0, Lcom/sshtools/client/tasks/PushTask;->outstandingRequests:I

    new-instance v5, Lcom/sshtools/client/ChunkInputStream;

    invoke-direct {v5, v12, v0, v1}, Lcom/sshtools/client/ChunkInputStream;-><init>(Lcom/sshtools/common/files/AbstractFileRandomAccess;J)V

    iget v6, p0, Lcom/sshtools/client/tasks/PushTask;->buffersize:I

    new-instance v7, Lcom/sshtools/client/tasks/PushTask$2;

    move-object/from16 v0, p8

    invoke-direct {v7, p0, v0, v8, v9}, Lcom/sshtools/client/tasks/PushTask$2;-><init>(Lcom/sshtools/client/tasks/PushTask;Lcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v1, v2

    move-object v2, p1

    :try_start_6
    invoke-virtual/range {v1 .. v9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedWrite(Ljava/lang/String;IILjava/io/InputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    .line 629
    :try_start_7
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_7
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_0
    if-eqz v13, :cond_1

    .line 633
    :try_start_8
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :cond_1
    if-eqz v12, :cond_2

    .line 634
    :try_start_9
    invoke-interface {v12}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 642
    :cond_2
    iget-object p1, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter p1

    .line 643
    :try_start_a
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 644
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_0
    move-object p1, v0

    if-eqz v1, :cond_3

    .line 600
    :try_start_b
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
    :try_end_c
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_c .. :try_end_c} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    move-object p1, v0

    .line 630
    :try_start_d
    const-string v0, "Part upload failed"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 631
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    move-object p1, v0

    if-eqz v13, :cond_4

    .line 588
    :try_start_e
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v0

    move-object p1, v0

    if-eqz v12, :cond_5

    .line 585
    :try_start_10
    invoke-interface {v12}, Lcom/sshtools/common/files/AbstractFileRandomAccess;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception v0

    :try_start_11
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :catchall_8
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 636
    :try_start_12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    if-eqz v0, :cond_6

    .line 637
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    throw p1

    .line 640
    :cond_6
    throw p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 642
    :goto_5
    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    monitor-enter v1

    .line 643
    :try_start_13
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 644
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 645
    throw p1

    :catchall_9
    move-exception v0

    move-object p1, v0

    .line 644
    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    throw p1

    :catchall_a
    move-exception v0

    move-object p1, v0

    .line 584
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    throw p1
.end method

.method private transferFile(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)V
    .locals 2
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

    .line 350
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Total to transfer is {0} bytes"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    iget v0, p0, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 353
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/sshtools/client/tasks/PushTask;->sendFileViaSFTP(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/tasks/PushTask;->sendChunks(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/PushTask;->checkErrors(Ljava/util/Collection;)V

    .line 358
    :goto_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sshtools/client/tasks/PushTask;->verifyIntegrity(Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic configureTargetFolder()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/PushTask;->configureTargetFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected configureTargetFolder()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->remoteFolder:Ljava/lang/String;

    invoke-static {v0}, Lcom/sshtools/common/util/Utils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->remoteFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$sendChunks$0$com-sshtools-client-tasks-PushTask(Lcom/sshtools/common/files/AbstractFile;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLcom/sshtools/client/sftp/SftpHandle;Ljava/lang/String;Ljava/util/List;)V
    .locals 13

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->chunkProgress:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    .line 431
    new-instance v9, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;

    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-direct {v9, v0, v1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;-><init>(Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/util/Optional;Ljava/util/concurrent/atomic/AtomicLong;)V

    move-object/from16 p2, p3

    .line 432
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    iget p2, p0, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    move/from16 v0, p4

    if-ne v0, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v8, p2

    if-eqz v8, :cond_1

    move-wide/from16 v5, p5

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p7

    .line 436
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string p2, "part%d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p9

    move-object/from16 v10, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lcom/sshtools/client/tasks/PushTask;->sendPart(Lcom/sshtools/common/files/AbstractFile;JJLjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Lcom/sshtools/client/sftp/SftpHandle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object/from16 p2, p13

    .line 439
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$sendChunks$1$com-sshtools-client-tasks-PushTask(Lcom/sshtools/common/files/AbstractFile;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/lang/String;Ljava/util/List;)V
    .locals 11

    .line 463
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->chunkProgress:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    .line 464
    new-instance v9, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;

    iget-object v1, p0, Lcom/sshtools/client/tasks/PushTask;->progress:Ljava/util/Optional;

    invoke-direct {v9, v0, v1, p2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;-><init>(Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/util/Optional;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 465
    invoke-interface {p3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget p2, p0, Lcom/sshtools/client/tasks/PushTask;->chunks:I

    if-ne p4, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v8, p2

    if-eqz v8, :cond_1

    move-wide/from16 v5, p5

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p7

    .line 468
    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p9

    move-object/from16 v10, p11

    invoke-direct/range {v1 .. v10}, Lcom/sshtools/client/tasks/PushTask;->sendChunk(Lcom/sshtools/common/files/AbstractFile;JJLjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object/from16 p2, p12

    .line 470
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic transferFiles(Ljava/lang/Object;)V
    .locals 0
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

    .line 75
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PushTask;->transferFiles(Ljava/lang/String;)V

    return-void
.end method

.method protected transferFiles(Ljava/lang/String;)V
    .locals 2
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

    .line 321
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "The paths will be transferred to {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/tasks/PushTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/sshtools/client/tasks/PushTask;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sshtools/common/files/AbstractFile;

    .line 329
    invoke-direct {p0, v1, p1}, Lcom/sshtools/client/tasks/PushTask;->transferFile(Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    .line 323
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Remote directory must be a directory!"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

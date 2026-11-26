.class public final Lcom/sshtools/client/tasks/PullTask;
.super Lcom/sshtools/client/tasks/AbstractOptimisedTask;
.source "PullTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sshtools/client/tasks/AbstractOptimisedTask<",
        "Ljava/nio/file/Path;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localFolder:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/nio/file/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)V
    .locals 1

    .line 195
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/AbstractOptimisedTask;-><init>(Lcom/sshtools/client/tasks/AbstractOptimisedTask$AbstractOptimisedTaskBuilder;)V

    .line 196
    invoke-static {p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->-$$Nest$fgetlocalFolder(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->localFolder:Ljava/util/Optional;

    .line 197
    invoke-static {p1}, Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;->-$$Nest$fgetpaths(Lcom/sshtools/client/tasks/PullTask$PullTaskBuilder;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/tasks/PullTask;->files:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$configureTargetFolder$0()Ljava/nio/file/Path;
    .locals 2

    .line 224
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method private receiveChunks(Ljava/lang/String;Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/nio/file/Path;",
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

    move-object/from16 v2, p1

    .line 245
    iget v0, v1, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 246
    iget-object v0, v1, Lcom/sshtools/client/tasks/PullTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x0

    .line 249
    :try_start_0
    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v2, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v6

    move-object/from16 v12, p2

    invoke-interface {v12, v6}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v6

    .line 250
    iget-object v7, v1, Lcom/sshtools/client/tasks/PullTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v7, v2}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v13

    .line 252
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v7

    iget v9, v1, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    int-to-long v9, v9

    div-long/2addr v7, v9

    .line 253
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v9

    iget v11, v1, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    int-to-long v4, v11

    mul-long/2addr v4, v7

    sub-long/2addr v9, v4

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v11, v3

    .line 257
    :try_start_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    move/from16 v16, v15

    .line 259
    const-string v15, "Splitting {0} into {1} chunks"

    move/from16 v17, v0

    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    iget v2, v1, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v15, v0}, Lcom/sshtools/client/tasks/PullTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-object v0, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v2

    move-object v15, v3

    invoke-virtual {v2}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v2

    invoke-interface {v6}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v18

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v15, v3

    move-object/from16 v19, v4

    :goto_0
    const/4 v0, 0x2

    .line 265
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v17

    sget-object v2, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    aput-object v2, v0, v16

    invoke-static {v6, v0}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 267
    :try_start_2
    invoke-virtual {v13}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->truncate(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v2, :cond_1

    .line 268
    :try_start_3
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V

    .line 270
    :cond_1
    const-string v0, "Remote server supports multipart extensions"

    move/from16 v2, v17

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcom/sshtools/client/tasks/PullTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v1, v7, v8}, Lcom/sshtools/client/tasks/PullTask;->printChunkMessages(J)V

    move v0, v2

    .line 273
    :goto_1
    iget v2, v1, Lcom/sshtools/client/tasks/PullTask;->chunks:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-ge v0, v2, :cond_2

    move-object v3, v15

    move-object v15, v5

    add-int/lit8 v5, v0, 0x1

    int-to-long v0, v0

    mul-long/2addr v0, v7

    move-wide v6, v7

    move-wide v8, v9

    move-wide/from16 v21, v0

    move-object v1, v11

    move-wide/from16 v10, v21

    .line 276
    :try_start_4
    new-instance v0, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v2, p1

    move-object/from16 v20, v1

    move-object/from16 v4, v19

    move-object/from16 v1, p0

    :try_start_5
    invoke-direct/range {v0 .. v15}, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda1;-><init>(Lcom/sshtools/client/tasks/PullTask;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/nio/file/Path;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v11, v20

    :try_start_6
    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    move-object/from16 v12, p2

    move-object/from16 v19, v4

    move v0, v5

    move-wide v9, v8

    move-object v5, v15

    move-object v15, v3

    move-wide v7, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v11, v20

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v11, v1

    move-object/from16 v1, p0

    goto :goto_4

    :cond_2
    move-object v15, v5

    .line 296
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 299
    :try_start_7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide v3, 0x7fffffffffffffffL

    invoke-interface {v11, v3, v4, v0}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 303
    iget-object v0, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    return-object v15

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 301
    :catch_0
    :try_start_8
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 303
    :goto_2
    iget-object v2, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 304
    throw v0

    :catchall_3
    move-exception v0

    const-wide v3, 0x7fffffffffffffffL

    move-object v5, v0

    if-eqz v2, :cond_3

    .line 265
    :try_start_9
    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_5

    :catchall_6
    move-exception v0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object v11, v3

    :goto_4
    const-wide v3, 0x7fffffffffffffffL

    .line 296
    :goto_5
    invoke-interface {v11}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 299
    :try_start_b
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 303
    iget-object v2, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 305
    throw v0

    :catchall_8
    move-exception v0

    goto :goto_6

    .line 301
    :catch_1
    :try_start_c
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 303
    :goto_6
    iget-object v2, v1, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-interface {v2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 304
    throw v0
.end method

.method private receiveFileViaSFTP(Ljava/lang/String;Ljava/nio/file/Path;)V
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

    .line 310
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClient;

    .line 311
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v1

    .line 312
    iget v2, p0, Lcom/sshtools/client/tasks/PullTask;->blocksize:I

    if-lez v2, :cond_0

    .line 313
    iget v2, p0, Lcom/sshtools/client/tasks/PullTask;->blocksize:I

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withBlockSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    .line 315
    :cond_0
    iget v2, p0, Lcom/sshtools/client/tasks/PullTask;->outstandingRequests:I

    if-lez v2, :cond_1

    .line 316
    iget v2, p0, Lcom/sshtools/client/tasks/PullTask;->outstandingRequests:I

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withAsyncRequests(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    .line 318
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 319
    :try_start_1
    iget-object v2, p0, Lcom/sshtools/client/tasks/PullTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sshtools/client/sftp/SftpClient;->cd(Ljava/lang/String;)V

    .line 320
    invoke-interface {p2}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sshtools/client/sftp/SftpClient;->lcd(Ljava/lang/String;)V

    .line 321
    iget-object p2, p0, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sshtools/client/tasks/FileTransferProgress;

    invoke-virtual {v1, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 322
    :try_start_2
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 323
    :cond_2
    iget-object p1, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    monitor-enter p1

    .line 324
    :try_start_3
    iget-object p2, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 325
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

    .line 318
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

    .line 323
    iget-object p2, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    monitor-enter p2

    .line 324
    :try_start_6
    iget-object v1, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 325
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 326
    throw p1

    :catchall_4
    move-exception p1

    .line 325
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1
.end method

.method private receivePart(Ljava/lang/String;JILjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;Ljava/nio/file/Path;JLjava/lang/String;)V
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

    .line 334
    iget-object v1, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/sshtools/client/SshClient;

    .line 336
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    const/4 v11, 0x0

    .line 338
    new-array v0, v11, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v2, 0x1

    .line 339
    :try_start_1
    new-array v3, v2, [Ljava/nio/file/OpenOption;

    sget-object v4, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v4, v3, v11

    invoke-static {v0, v3}, Ljava/nio/file/Files;->newByteChannel(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/SeekableByteChannel;

    move-result-object v12
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 340
    :try_start_2
    invoke-interface {v12, v8, v9}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 341
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    .line 342
    invoke-virtual {v0, v10}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    move-object/from16 v3, p12

    .line 343
    invoke-virtual {v0, v3}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    .line 344
    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalPath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 346
    :try_start_3
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/sshtools/client/sftp/SftpChannel;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object v1
    :try_end_3
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 347
    :try_start_4
    invoke-static {v12}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v5

    iget v6, p0, Lcom/sshtools/client/tasks/PullTask;->outstandingRequests:I

    new-instance v7, Lcom/sshtools/client/tasks/PullTask$1;

    move-object/from16 p1, p7

    invoke-direct {v7, p0, p1, v8, v9}, Lcom/sshtools/client/tasks/PullTask$1;-><init>(Lcom/sshtools/client/tasks/PullTask;Lcom/sshtools/client/tasks/FileTransferProgress;J)V

    move/from16 v4, p4

    move-wide/from16 v2, p10

    invoke-virtual/range {v1 .. v9}, Lcom/sshtools/client/sftp/SftpHandle;->performOptimizedRead(JILjava/io/OutputStream;ILcom/sshtools/client/tasks/FileTransferProgress;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_0

    .line 372
    :try_start_5
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_5
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_0
    if-eqz v13, :cond_1

    .line 376
    :try_start_6
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_1
    if-eqz v12, :cond_2

    .line 377
    :try_start_7
    invoke-interface {v12}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 383
    :cond_2
    iget-object p1, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    monitor-enter p1

    .line 384
    :try_start_8
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 385
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    if-eqz v1, :cond_3

    .line 346
    :try_start_9
    invoke-virtual {v1}, Lcom/sshtools/client/sftp/SftpHandle;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_a
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_a
    .catch Lcom/sshtools/common/sftp/SftpStatusException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/sshtools/client/sftp/TransferCancelledException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_1
    move-object p1, v0

    .line 373
    :try_start_b
    const-string v0, "Part upload failed"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 374
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :goto_2
    if-eqz v13, :cond_4

    .line 341
    :try_start_c
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object p1, v0

    if-eqz v12, :cond_5

    .line 339
    :try_start_e
    invoke-interface {v12}, Ljava/nio/channels/SeekableByteChannel;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v0

    :try_start_f
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 378
    :try_start_10
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/sshtools/client/sftp/TransferCancelledException;

    if-eqz v0, :cond_6

    .line 379
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/sftp/TransferCancelledException;

    throw p1

    .line 381
    :cond_6
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 383
    :goto_5
    iget-object v2, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    monitor-enter v2

    .line 384
    :try_start_11
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->clients:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 385
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 386
    throw p1

    :catchall_8
    move-exception v0

    move-object p1, v0

    .line 385
    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw p1

    :catchall_9
    move-exception v0

    move-object p1, v0

    .line 336
    :try_start_13
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    throw p1
.end method

.method private transferFile(Ljava/lang/String;Ljava/nio/file/Path;)V
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

    .line 230
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Total to transfer is {0} bytes"

    invoke-virtual {p0, v1, v0}, Lcom/sshtools/client/tasks/PullTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget v0, p0, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/tasks/PullTask;->receiveFileViaSFTP(Ljava/lang/String;Ljava/nio/file/Path;)V

    goto :goto_0

    .line 236
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/tasks/PullTask;->receiveChunks(Ljava/lang/String;Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/tasks/PullTask;->checkErrors(Ljava/util/Collection;)V

    :goto_0
    const/4 v0, 0x0

    .line 238
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/sshtools/client/tasks/PullTask;->verifyIntegrity(Ljava/nio/file/Path;Ljava/lang/String;)V

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

    .line 69
    invoke-virtual {p0}, Lcom/sshtools/client/tasks/PullTask;->configureTargetFolder()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method protected configureTargetFolder()Ljava/nio/file/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->localFolder:Ljava/util/Optional;

    new-instance v1, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sshtools/client/tasks/PullTask$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$receiveChunks$1$com-sshtools-client-tasks-PullTask(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/List;IJJJLjava/nio/file/Path;Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;Ljava/util/List;)V
    .locals 14

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->chunkProgress:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/tasks/FileTransferProgress;

    .line 279
    new-instance v8, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;

    iget-object v1, p0, Lcom/sshtools/client/tasks/PullTask;->progress:Ljava/util/Optional;

    move-object/from16 v2, p2

    invoke-direct {v8, v0, v1, v2}, Lcom/sshtools/client/tasks/AbstractOptimisedTask$FileTransferProgressWrapper;-><init>(Lcom/sshtools/client/tasks/FileTransferProgress;Ljava/util/Optional;Ljava/util/concurrent/atomic/AtomicLong;)V

    move-object/from16 v0, p3

    .line 280
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    iget v0, p0, Lcom/sshtools/client/tasks/PullTask;->chunks:I

    move/from16 v1, p4

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v7, v0

    if-eqz v7, :cond_1

    add-long v2, p5, p7

    goto :goto_1

    :cond_1
    move-wide/from16 v2, p5

    :goto_1
    long-to-int v5, v2

    .line 284
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "part%d"

    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p12 .. p12}, Lcom/sshtools/common/sftp/SftpFileAttributes;->size()Lcom/sshtools/common/util/UnsignedInteger64;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/util/UnsignedInteger64;->longValue()J

    move-result-wide v11

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v3, p9

    move-object/from16 v10, p11

    move-object/from16 v13, p13

    .line 284
    invoke-direct/range {v1 .. v13}, Lcom/sshtools/client/tasks/PullTask;->receivePart(Ljava/lang/String;JILjava/lang/Integer;ZLcom/sshtools/client/tasks/FileTransferProgress;Ljava/lang/String;Ljava/nio/file/Path;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object/from16 v1, p14

    .line 288
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 69
    check-cast p1, Ljava/nio/file/Path;

    invoke-virtual {p0, p1}, Lcom/sshtools/client/tasks/PullTask;->transferFiles(Ljava/nio/file/Path;)V

    return-void
.end method

.method protected transferFiles(Ljava/nio/file/Path;)V
    .locals 3
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

    const/4 v0, 0x0

    .line 204
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    const-string v0, "The paths will be transferred to {0}"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/tasks/PullTask;->verboseMessage(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/sshtools/client/tasks/PullTask;->primarySftpClient:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v2, v1}, Lcom/sshtools/client/sftp/SftpClient;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string v0, "%s does not exist"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/sshtools/client/tasks/PullTask;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    invoke-direct {p0, v1, p1}, Lcom/sshtools/client/tasks/PullTask;->transferFile(Ljava/lang/String;Ljava/nio/file/Path;)V

    goto :goto_1

    :cond_2
    return-void

    .line 205
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Local directory {0} must be a directory!"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/sshtools/client/scp/ScpClient$ScpEngine;
.super Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;
.source "ScpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/scp/ScpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScpEngine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sshtools/client/scp/ScpClient;


# direct methods
.method static bridge synthetic -$$Nest$mreadFromRemote(Lcom/sshtools/client/scp/ScpClient$ScpEngine;Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->readFromRemote(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteFileToRemote(Lcom/sshtools/client/scp/ScpClient$ScpEngine;Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeFileToRemote(Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method protected constructor <init>(Lcom/sshtools/client/scp/ScpClient;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->this$0:Lcom/sshtools/client/scp/ScpClient;

    .line 389
    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;-><init>(Lcom/sshtools/client/scp/ScpClientIO;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V

    return-void
.end method

.method private readFromRemote(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 488
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 490
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeOk()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 494
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->readString()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    const-string v2, "SCP returned {}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    const/4 v2, 0x0

    .line 504
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    .line 583
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isInfoEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 584
    const-string p1, "Unexpected command {}"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected cmd: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeError(Ljava/lang/String;)V

    .line 587
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SCP unexpected cmd: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 508
    :pswitch_0
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeOk()V

    return-void

    .line 518
    :pswitch_1
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 519
    invoke-virtual {p0, v1, v0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->parseCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 521
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v0, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 525
    :cond_3
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->this$0:Lcom/sshtools/client/scp/ScpClient;

    invoke-static {v1, v3}, Lcom/sshtools/client/scp/ScpClient;->-$$Nest$mresolveLocalPath(Lcom/sshtools/client/scp/ScpClient;Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 527
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x44

    const/4 v5, 0x1

    if-ne v2, v4, :cond_8

    if-eqz p3, :cond_7

    .line 535
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 536
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 537
    :cond_4
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid target "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", must be a directory"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeError(Ljava/lang/String;)V

    .line 539
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 542
    :cond_5
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->createFolder()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 549
    :goto_1
    invoke-direct {p0, v1, p2, v5}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->readFromRemote(Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    goto/16 :goto_0

    .line 543
    :cond_6
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not create directory: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 544
    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeError(Ljava/lang/String;)V

    .line 545
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 533
    :cond_7
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected \'D\' directive received from remote during file request"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 554
    :cond_8
    aget-object v2, v0, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 556
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 557
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeOk()V

    if-eqz p2, :cond_9

    .line 560
    invoke-interface {p2, v6, v7, v3}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 562
    :cond_9
    invoke-virtual {p0, v1, v6, v7, p2}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->readCompleteFile(Ljava/io/OutputStream;JLcom/sshtools/client/tasks/FileTransferProgress;)V

    if-eqz p2, :cond_a

    .line 565
    invoke-interface {p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 568
    :cond_a
    :try_start_3
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->waitForResponse()V

    .line 570
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeOk()V
    :try_end_3
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 574
    :try_start_4
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result p2

    if-ne p2, v5, :cond_b

    if-nez p3, :cond_b

    goto :goto_2

    .line 577
    :cond_b
    throw p1

    .line 528
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Unexpected path that is outside of the target directory %s"

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_1
    :goto_2
    return-void

    :catch_2
    move-exception p1

    .line 593
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V

    .line 594
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_3
    move-exception p1

    .line 591
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeDirToRemote(Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-string v0, "File "

    const-string v1, "D0755 0 "

    if-nez p2, :cond_0

    .line 409
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is a directory, use recursive mode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeError(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 414
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 417
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->waitForResponse()V

    .line 419
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object p1

    .line 421
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/files/AbstractFile;

    .line 422
    invoke-direct {p0, v0, p2, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeFileToRemote(Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    goto :goto_0

    .line 425
    :cond_1
    iget-object p1, p0, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->out:Ljava/io/OutputStream;

    const-string p2, "E\n"

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 429
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V

    .line 430
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method private writeFileToRemote(Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-string v0, "C0644 "

    const/4 v1, 0x6

    .line 447
    :try_start_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    invoke-direct {p0, p1, p2, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeDirToRemote(Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 451
    :cond_0
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 453
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 455
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->out:Ljava/io/OutputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    if-eqz p3, :cond_1

    .line 458
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v2, v3, p2}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    .line 460
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->waitForResponse()V

    .line 462
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    .line 463
    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->length()J

    move-result-wide v2

    invoke-virtual {p0, p2, v2, v3, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeCompleteFile(Ljava/io/InputStream;JLcom/sshtools/client/tasks/FileTransferProgress;)V

    if-eqz p3, :cond_2

    .line 466
    invoke-interface {p3}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 468
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->writeOk()V

    .line 475
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->waitForResponse()V

    return-void

    .line 472
    :cond_4
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-interface {p1}, Lcom/sshtools/common/files/AbstractFile;->getName()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " not valid for SCP"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 480
    invoke-virtual {p0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V

    .line 481
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1, v1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :catch_1
    move-exception p1

    .line 478
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
.end method

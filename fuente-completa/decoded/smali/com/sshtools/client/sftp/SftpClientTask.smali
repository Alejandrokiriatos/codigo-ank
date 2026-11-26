.class public Lcom/sshtools/client/sftp/SftpClientTask;
.super Lcom/sshtools/client/tasks/Task;
.source "SftpClientTask.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "3.1.3"
.end annotation


# instance fields
.field runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/client/tasks/Task$TaskRunnable<",
            "Lcom/sshtools/client/sftp/SftpClientTask;",
            ">;"
        }
    .end annotation
.end field

.field sftp:Lcom/sshtools/client/sftp/SftpClient;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/SshClient;)V
    .locals 0

    .line 62
    invoke-virtual {p1}, Lcom/sshtools/client/SshClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/Task;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/ssh/SshConnection;Lcom/sshtools/client/tasks/Task$TaskRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            "Lcom/sshtools/client/tasks/Task$TaskRunnable<",
            "Lcom/sshtools/client/sftp/SftpClientTask;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lcom/sshtools/client/tasks/Task;-><init>(Lcom/sshtools/common/ssh/SshConnection;)V

    .line 58
    iput-object p2, p0, Lcom/sshtools/client/sftp/SftpClientTask;->runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;

    return-void
.end method

.method private doSftpTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->runnable:Lcom/sshtools/client/tasks/Task$TaskRunnable;

    if-eqz v0, :cond_0

    .line 79
    invoke-interface {v0, p0}, Lcom/sshtools/client/tasks/Task$TaskRunnable;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static formatLongname(Lcom/sshtools/client/sftp/SftpFile;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1345
    invoke-static {p0}, Lcom/sshtools/client/sftp/SftpClient;->formatLongname(Lcom/sshtools/client/sftp/SftpFile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatLongname(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1363
    invoke-static {p0, p1}, Lcom/sshtools/client/sftp/SftpClient;->formatLongname(Lcom/sshtools/common/sftp/SftpFileAttributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->cd(Ljava/lang/String;)V

    return-void
.end method

.method public cdup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->cdup()V

    return-void
.end method

.method public chgrp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1063
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->chgrp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public chmod(Lcom/sshtools/common/sftp/PosixPermissions;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->chmod(Lcom/sshtools/common/sftp/PosixPermissions;Ljava/lang/String;)V

    return-void
.end method

.method public chown(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->chown(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/sftp/SftpClientTask;->con:Lcom/sshtools/common/ssh/SshConnection;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withConnection(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    .line 70
    invoke-direct {p0}, Lcom/sshtools/client/sftp/SftpClientTask;->doSftpTask()V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcom/sshtools/client/sftp/SftpClientTask;->done(Z)V

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->exit()V

    return-void
.end method

.method public exit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->exit()V

    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;J)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/sshtools/client/tasks/FileTransferProgress;J)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;Z)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultDirectory()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->getDefaultDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEOL(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getEOL(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getEOL([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 590
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getEOL([B)I

    move-result p1

    return p1
.end method

.method public getFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1447
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1493
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1518
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1587
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1560
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getFiles(Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->getFiles(Ljava/lang/String;Z)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream(Ljava/lang/String;J)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->getInputStream(Ljava/lang/String;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1397
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;

    move-result-object p1

    return-object p1
.end method

.method public getRemoteEOL()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteEOL()I

    move-result v0

    return v0
.end method

.method public getRemoteNewline()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->getRemoteNewline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->getSymbolicLinkTarget(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTransferMode()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->getTransferMode()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isDirectoryOrLinkedDirectory(Lcom/sshtools/client/sftp/SftpFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->isDirectoryOrLinkedDirectory(Lcom/sshtools/client/sftp/SftpFile;)Z

    move-result p1

    return p1
.end method

.method public lcd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->lcd(Ljava/lang/String;)V

    return-void
.end method

.method public lpwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->lpwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ls()[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->ls()[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object v0

    return-object v0
.end method

.method public ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->ls(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public matchRemoteFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->matchRemoteFiles(Ljava/lang/String;)[Lcom/sshtools/client/sftp/SftpFile;

    move-result-object p1

    return-object p1
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->mkdir(Ljava/lang/String;)V

    return-void
.end method

.method public mkdirs(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->mkdirs(Ljava/lang/String;)V

    return-void
.end method

.method public openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->openDirectory(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/sftp/SftpClientTask;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->openFile(Ljava/lang/String;I)Lcom/sshtools/client/sftp/SftpHandle;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 1025
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 1010
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;J)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;
        }
    .end annotation

    .line 980
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;JJ)V

    return-void
.end method

.method public put(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 811
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 950
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 934
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1674
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1695
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1713
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1781
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1733
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public putFiles(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->putFiles(Ljava/lang/String;Z)V

    return-void
.end method

.method public putLocalDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->putLocalDirectory(Ljava/lang/String;Ljava/lang/String;ZZZLcom/sshtools/client/tasks/FileTransferProgress;)Lcom/sshtools/client/sftp/DirectoryOperation;

    move-result-object p1

    return-object p1
.end method

.method public pwd()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->pwd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0}, Lcom/sshtools/client/sftp/SftpClient;->quit()V

    return-void
.end method

.method public readDirectory(Lcom/sshtools/client/sftp/SftpHandle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/client/sftp/SftpHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/sshtools/client/sftp/SftpFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->readDirectory(Lcom/sshtools/client/sftp/SftpHandle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->rename(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rm(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1156
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;)V

    return-void
.end method

.method public rm(Ljava/lang/String;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1172
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sshtools/client/sftp/SftpClient;->rm(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setBufferSize(I)V

    return-void
.end method

.method public setForceRemoteEOL(Z)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setForceRemoteEOL(Z)V

    return-void
.end method

.method public setLocalEOL(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setLocalEOL(I)V

    return-void
.end method

.method public setRegularExpressionSyntax(I)V
    .locals 1

    .line 668
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setRegularExpressionSyntax(I)V

    return-void
.end method

.method public setRemoteEOL(I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setRemoteEOL(I)V

    return-void
.end method

.method public setTransferMode(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->setTransferMode(I)V

    return-void
.end method

.method public stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->stat(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public statLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->statLink(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    move-result-object p1

    return-object p1
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1190
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public umask(I)I
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->umask(I)I

    move-result p1

    return p1
.end method

.method public umask(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/sftp/SftpClient;->umask(Ljava/lang/String;)V

    return-void
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1255
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public verifyFiles(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 1272
    iget-object v0, p0, Lcom/sshtools/client/sftp/SftpClientTask;->sftp:Lcom/sshtools/client/sftp/SftpClient;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sshtools/client/sftp/SftpClient;->verifyFiles(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result p1

    return p1
.end method

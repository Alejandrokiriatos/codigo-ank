.class public Lcom/sshtools/client/Ssh;
.super Ljava/lang/Object;
.source "Ssh.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFile(Ljava/lang/String;ILjava/lang/String;[CLjava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 36
    :try_start_0
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 37
    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 38
    invoke-virtual {p0, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 39
    invoke-virtual {p0, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword([C)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 41
    :try_start_1
    invoke-static {}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->create()Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p0}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    .line 43
    invoke-virtual {p1, p4}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p5}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->withLocalFile(Ljava/io/File;)Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/DownloadFileTask$DownloadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/DownloadFileTask;

    move-result-object p1

    .line 41
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient;->addTask(Lcom/sshtools/client/tasks/Task;)Lcom/sshtools/client/tasks/Task;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->waitForever()Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isDoneAndSuccess()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 45
    :try_start_2
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 36
    :try_start_3
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 46
    const-string p1, "getFile failed"

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return p2
.end method

.method public static putFile(Ljava/lang/String;ILjava/lang/String;[CLjava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 52
    :try_start_0
    invoke-static {}, Lcom/sshtools/client/SshClient$SshClientBuilder;->create()Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0, p1}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withTarget(Ljava/lang/String;I)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 54
    invoke-virtual {p0, p2}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withUsername(Ljava/lang/String;)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    .line 55
    invoke-virtual {p0, p3}, Lcom/sshtools/client/SshClient$SshClientBuilder;->withPassword([C)Lcom/sshtools/client/SshClient$SshClientBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sshtools/client/SshClient$SshClientBuilder;->build()Lcom/sshtools/client/SshClient;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    invoke-static {}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->create()Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p0}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/tasks/AbstractConnectionTask$AbstractConnectionTaskBuilder;

    move-result-object p1

    check-cast p1, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    .line 59
    invoke-virtual {p1, p4}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withLocalFile(Ljava/io/File;)Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p5}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->withRemotePath(Ljava/lang/String;)Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/client/tasks/UploadFileTask$UploadFileTaskBuilder;->build()Lcom/sshtools/client/tasks/UploadFileTask;

    move-result-object p1

    .line 57
    invoke-virtual {p0, p1}, Lcom/sshtools/client/SshClient;->addTask(Lcom/sshtools/client/tasks/Task;)Lcom/sshtools/client/tasks/Task;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/sshtools/client/tasks/Task;->waitForever()Lcom/sshtools/common/ssh/RequestFuture;

    move-result-object p1

    invoke-interface {p1}, Lcom/sshtools/common/ssh/RequestFuture;->isDoneAndSuccess()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 62
    :try_start_2
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    .line 52
    :try_start_3
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 63
    const-string p1, "putFile failed"

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p3}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return p2
.end method

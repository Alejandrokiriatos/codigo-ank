.class public Lcom/sshtools/client/scp/ScpClientIO;
.super Ljava/lang/Object;
.source "ScpClientIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;,
        Lcom/sshtools/client/scp/ScpClientIO$ScpInputStream;
    }
.end annotation


# instance fields
.field first:Z

.field protected ssh:Lcom/sshtools/client/SshClient;


# direct methods
.method public constructor <init>(Lcom/sshtools/client/SshClient;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/sshtools/client/scp/ScpClientIO;->first:Z

    .line 60
    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClientIO;->ssh:Lcom/sshtools/client/SshClient;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/sshtools/client/scp/ScpClientIO;->get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scp -f "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClientIO;->ssh:Lcom/sshtools/client/SshClient;

    .line 187
    invoke-virtual {v2}, Lcom/sshtools/client/SshClient;->openSessionChannel()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;-><init>(Lcom/sshtools/client/scp/ScpClientIO;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V

    .line 189
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->readStreamFromRemote(Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 191
    invoke-virtual {v0}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->close()V

    .line 192
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public put(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 84
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/scp/ScpClientIO;->put(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 111
    invoke-virtual/range {v0 .. v7}, Lcom/sshtools/client/scp/ScpClientIO;->put(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;
        }
    .end annotation

    move-object v0, p5

    move-object p5, p4

    move-wide p3, p2

    move-object p2, p1

    .line 129
    new-instance p1, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;

    if-eqz p6, :cond_0

    const-string p6, "-d "

    goto :goto_0

    :cond_0
    const-string p6, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scp "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string v1, "-t "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClientIO;->ssh:Lcom/sshtools/client/SshClient;

    .line 130
    invoke-virtual {v1}, Lcom/sshtools/client/SshClient;->openSessionChannel()Lcom/sshtools/client/SessionChannelNG;

    move-result-object v1

    invoke-direct {p1, p0, p6, v1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;-><init>(Lcom/sshtools/client/scp/ScpClientIO;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V

    .line 133
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->waitForResponse()V

    if-eqz p7, :cond_1

    .line 136
    invoke-interface {p7, p3, p4, v0}, Lcom/sshtools/client/tasks/FileTransferProgress;->started(JLjava/lang/String;)V

    :cond_1
    move-object p6, p7

    .line 139
    invoke-virtual/range {p1 .. p6}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->writeStreamToRemote(Ljava/io/InputStream;JLjava/lang/String;Lcom/sshtools/client/tasks/FileTransferProgress;)V

    if-eqz p6, :cond_2

    .line 142
    invoke-interface {p6}, Lcom/sshtools/client/tasks/FileTransferProgress;->completed()V

    .line 144
    :cond_2
    invoke-virtual {p1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 146
    invoke-virtual {p1}, Lcom/sshtools/client/scp/ScpClientIO$ScpEngineIO;->close()V

    .line 147
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const/4 p3, 0x6

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;I)V

    throw p1
.end method

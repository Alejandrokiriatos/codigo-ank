.class public Lcom/sshtools/client/shell/ShellController;
.super Ljava/lang/Object;
.source "ShellController.java"

# interfaces
.implements Lcom/sshtools/client/shell/ShellReader;
.implements Lcom/sshtools/client/shell/ShellWriter;


# instance fields
.field private eof:Z

.field protected in:Ljava/io/InputStream;

.field protected matcher:Lcom/sshtools/client/shell/ShellMatcher;

.field protected readlimit:I

.field protected shell:Lcom/sshtools/client/shell/ExpectShell;


# direct methods
.method constructor <init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ShellMatcher;Ljava/io/InputStream;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 37
    iput v0, p0, Lcom/sshtools/client/shell/ShellController;->readlimit:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ShellController;->eof:Z

    .line 42
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    .line 43
    iput-object p2, p0, Lcom/sshtools/client/shell/ShellController;->matcher:Lcom/sshtools/client/shell/ShellMatcher;

    .line 44
    iput-object p3, p0, Lcom/sshtools/client/shell/ShellController;->in:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public declared-synchronized carriageReturn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell;->carriageReturn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized expect(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 88
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expect(Ljava/lang/String;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    .line 118
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expect(Ljava/lang/String;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 103
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expect(Ljava/lang/String;ZJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 133
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expect(Ljava/lang/String;ZJJ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 186
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 190
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long v0, v10, p3

    if-ltz v0, :cond_1

    cmp-long v0, p3, v6

    if-nez v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    new-instance v0, Lcom/sshtools/client/shell/ShellTimeoutException;

    invoke-direct {v0}, Lcom/sshtools/client/shell/ShellTimeoutException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    cmp-long v0, p5, v6

    const/4 v10, 0x0

    if-lez v0, :cond_2

    cmp-long v0, v8, p5

    if-ltz v0, :cond_2

    .line 193
    monitor-exit p0

    return v10

    .line 196
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/sshtools/client/shell/ShellController;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-ne v0, v12, :cond_4

    .line 198
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    const-string v0, "Expect encountered EOF {}"

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_3
    iput-boolean v11, v1, Lcom/sshtools/client/shell/ShellController;->eof:Z
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    monitor-exit p0

    return v10

    :cond_4
    const/16 v13, 0xa

    if-eq v0, v13, :cond_5

    const/16 v14, 0xd

    if-eq v0, v14, :cond_5

    int-to-char v14, v0

    .line 205
    :try_start_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 208
    :cond_5
    sget-object v14, Lcom/sshtools/client/shell/ShellController$1;->$SwitchMap$com$sshtools$client$shell$ShellMatcher$Continue:[I

    iget-object v15, v1, Lcom/sshtools/client/shell/ShellController;->matcher:Lcom/sshtools/client/shell/ShellMatcher;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v6, v2}, Lcom/sshtools/client/shell/ShellMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Lcom/sshtools/client/shell/ShellMatcher$Continue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/client/shell/ShellMatcher$Continue;->ordinal()I

    move-result v6

    aget v6, v14, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-ne v0, v13, :cond_c

    const-wide/16 v6, 0x1

    add-long/2addr v8, v6

    .line 229
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell output: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {v3, v10, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 212
    :cond_7
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Matched: ["

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, "] "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz p2, :cond_a

    if-eq v0, v13, :cond_a

    if-eq v0, v12, :cond_a

    .line 216
    :cond_9
    iget-object v0, v1, Lcom/sshtools/client/shell/ShellController;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v13, :cond_a

    if-ne v0, v12, :cond_9

    .line 219
    :cond_a
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shell output: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_b
    monitor-exit p0

    return v11

    :catch_0
    move-exception v0

    .line 241
    :try_start_3
    new-instance v2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {v2, v0}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v6

    const/16 v7, 0x15

    if-ne v6, v7, :cond_d

    :cond_c
    :goto_2
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 238
    :cond_d
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public declared-synchronized expectNextLine(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 144
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expectNextLine(Ljava/lang/String;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    .line 157
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized expectNextLine(Ljava/lang/String;ZJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/client/shell/ShellTimeoutException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    .line 171
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/sshtools/client/shell/ShellController;->expect(Ljava/lang/String;ZJJ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getReadlimit()I
    .locals 1

    .line 305
    iget v0, p0, Lcom/sshtools/client/shell/ShellController;->readlimit:I

    return v0
.end method

.method public interrupt()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput-char v3, v2, v4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Lcom/sshtools/client/shell/ExpectShell;->type(Ljava/lang/String;)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell;->inStartup()Z

    move-result v0

    return v0
.end method

.method public isEOF()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ShellController;->eof:Z

    return v0
.end method

.method public declared-synchronized readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 260
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sshtools/client/shell/ShellController;->readLine(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized readLine(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    monitor-enter p0

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ShellController;->isActive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 269
    monitor-exit p0

    return-object v1

    .line 271
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :cond_1
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/sshtools/client/shell/ShellController;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/16 v6, 0xa

    if-ne v4, v6, :cond_2

    goto :goto_1

    :cond_2
    if-eq v4, v6, :cond_5

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    int-to-char v4, v4

    .line 285
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 280
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6
    :try_end_2
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    if-ne v4, v5, :cond_4

    .line 281
    monitor-exit p0

    return-object v1

    .line 282
    :cond_4
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 294
    :try_start_4
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception v4

    .line 288
    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_7

    .line 298
    :cond_5
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, p1

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 300
    :cond_6
    new-instance p1, Lcom/sshtools/client/shell/ShellTimeoutException;

    invoke-direct {p1}, Lcom/sshtools/client/shell/ShellTimeoutException;-><init>()V

    throw p1

    .line 291
    :cond_7
    invoke-virtual {v4}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public setMatcher(Lcom/sshtools/client/shell/ShellMatcher;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellController;->matcher:Lcom/sshtools/client/shell/ShellMatcher;

    return-void
.end method

.method public setReadlimit(I)V
    .locals 0

    .line 309
    iput p1, p0, Lcom/sshtools/client/shell/ShellController;->readlimit:I

    return-void
.end method

.method public declared-synchronized type(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/shell/ExpectShell;->type(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized typeAndReturn(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellController;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0, p1}, Lcom/sshtools/client/shell/ExpectShell;->typeAndReturn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

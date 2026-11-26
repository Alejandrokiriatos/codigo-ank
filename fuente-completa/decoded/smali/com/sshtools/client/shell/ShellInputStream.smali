.class Lcom/sshtools/client/shell/ShellInputStream;
.super Ljava/io/InputStream;
.source "ShellInputStream.java"


# instance fields
.field private active:Z

.field private beginCommandMarker:Ljava/lang/String;

.field private cmd:Ljava/lang/String;

.field private commandOutput:Ljava/lang/StringBuffer;

.field private currentLine:Ljava/lang/StringBuffer;

.field private endCommandMarker:[B

.field private exitCode:I

.field private expectingEcho:Z

.field private markerPos:I

.field private matchPromptMarker:Z

.field private promptMarker:[B

.field private sessionIn:Ljava/io/BufferedInputStream;

.field private shell:Lcom/sshtools/client/shell/ExpectShell;


# direct methods
.method constructor <init>(Ljava/io/BufferedInputStream;Lcom/sshtools/client/shell/ExpectShell;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->commandOutput:Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->expectingEcho:Z

    const/high16 v1, -0x80000000

    .line 42
    iput v1, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    .line 45
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->active:Z

    .line 49
    iput-object p3, p0, Lcom/sshtools/client/shell/ShellInputStream;->beginCommandMarker:Ljava/lang/String;

    .line 50
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/client/shell/ShellInputStream;->endCommandMarker:[B

    .line 51
    iput-boolean p6, p0, Lcom/sshtools/client/shell/ShellInputStream;->matchPromptMarker:Z

    .line 52
    invoke-virtual {p7}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    iput-object p3, p0, Lcom/sshtools/client/shell/ShellInputStream;->promptMarker:[B

    .line 53
    iput-object p2, p0, Lcom/sshtools/client/shell/ShellInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    .line 54
    iput-object p5, p0, Lcom/sshtools/client/shell/ShellInputStream;->cmd:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    return-void
.end method

.method private readLine()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ShellInputStream;->isActive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    iget-object v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_1

    int-to-char v4, v2

    .line 93
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    const-string v4, "maverick.verbose"

    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/16 v4, 0xd

    const/16 v5, 0xa

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v1, :cond_0

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    if-ne v2, v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 103
    iget-object v4, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->reset()V

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ShellInputStream;->isActive()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne v2, v1, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_5
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method


# virtual methods
.method cleanup(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Found "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " marker"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ShellInputStream;->collectExitCode()I

    move-result p1

    iput p1, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    goto :goto_0

    :cond_1
    const p1, -0x7fffffff

    .line 245
    iput p1, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    .line 247
    :goto_0
    iget-object p1, p0, Lcom/sshtools/client/shell/ShellInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    const/4 p2, 0x1

    iput p2, p1, Lcom/sshtools/client/shell/ExpectShell;->state:I

    .line 248
    iput-boolean v1, p0, Lcom/sshtools/client/shell/ShellInputStream;->active:Z

    return-void
.end method

.method public clearOutput()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->commandOutput:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void
.end method

.method collectExitCode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, "Looking for exit code"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    int-to-char v2, v2

    .line 265
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 270
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 274
    const-string v3, "True"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    goto :goto_0

    .line 276
    :cond_2
    const-string v3, "False"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    .line 279
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 281
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit code is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return v2

    .line 284
    :catch_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get exit code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const v0, -0x7fffffff

    return v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->cmd:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandOutput()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->commandOutput:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExitCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    return v0
.end method

.method public hasSucceeded()Z
    .locals 1

    .line 71
    iget v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isActive()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->active:Z

    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 67
    iget v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->exitCode:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->expectingEcho:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 134
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "Expecting begin marker"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/sshtools/client/shell/ShellInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->beginCommandMarker:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-nez v0, :cond_3

    .line 141
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    const-string v0, "Failed to read from shell whilst waiting for begin marker"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-virtual {v0}, Lcom/sshtools/client/shell/ExpectShell;->internalClose()V

    return v1

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->currentLine:Ljava/lang/StringBuffer;

    .line 148
    iput-boolean v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->expectingEcho:Z

    .line 150
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const-string v0, "Found begin marker"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_4
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->endCommandMarker:[B

    array-length v0, v0

    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->promptMarker:[B

    array-length v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 155
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 162
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v6, v2

    move v7, v6

    move v8, v4

    .line 164
    :cond_5
    iget-object v9, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->read()I

    move-result v9

    if-nez v6, :cond_7

    if-nez v7, :cond_7

    .line 167
    iget v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    iget-object v10, p0, Lcom/sshtools/client/shell/ShellInputStream;->endCommandMarker:[B

    array-length v11, v10

    if-ge v0, v11, :cond_6

    aget-byte v11, v10, v0

    if-ne v11, v9, :cond_6

    .line 169
    array-length v0, v10

    move v6, v4

    move-object v5, v10

    goto :goto_0

    .line 171
    :cond_6
    iget-boolean v7, p0, Lcom/sshtools/client/shell/ShellInputStream;->matchPromptMarker:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sshtools/client/shell/ShellInputStream;->promptMarker:[B

    aget-byte v0, v7, v0

    if-ne v0, v9, :cond_a

    .line 173
    array-length v0, v7

    move v8, v2

    move-object v5, v7

    move v7, v4

    goto :goto_0

    :cond_7
    if-eqz v6, :cond_8

    .line 179
    iget-object v10, p0, Lcom/sshtools/client/shell/ShellInputStream;->endCommandMarker:[B

    iget v11, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    aget-byte v10, v10, v11

    if-eq v10, v9, :cond_9

    goto :goto_1

    :cond_8
    if-eqz v7, :cond_9

    .line 184
    iget-object v10, p0, Lcom/sshtools/client/shell/ShellInputStream;->promptMarker:[B

    iget v11, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    aget-byte v10, v10, v11

    if-eq v10, v9, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    int-to-char v9, v9

    .line 189
    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    iget v9, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    add-int/lit8 v10, v0, -0x1

    if-ge v9, v10, :cond_a

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    :cond_a
    :goto_1
    if-eqz v5, :cond_e

    .line 194
    iget v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    array-length v4, v5

    if-ne v0, v4, :cond_e

    .line 197
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    if-eqz v8, :cond_c

    .line 199
    const-string v0, "end"

    goto :goto_2

    :cond_c
    const-string v0, "prompt"

    :goto_2
    invoke-virtual {p0, v8, v0}, Lcom/sshtools/client/shell/ShellInputStream;->cleanup(ZLjava/lang/String;)V

    .line 201
    const-string v0, "maverick.discardShellInputBeforeEOF"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0xff

    .line 202
    new-array v0, v0, [B

    .line 203
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v3, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 204
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "Discarded "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    return v1

    .line 209
    :cond_e
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 210
    iget-object v0, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_10

    .line 213
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 214
    const-string v0, "Stream ended before we could read an exit code"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_f
    const-string v0, "EOF"

    invoke-virtual {p0, v2, v0}, Lcom/sshtools/client/shell/ShellInputStream;->cleanup(ZLjava/lang/String;)V

    return v1

    .line 221
    :cond_10
    iput v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->markerPos:I

    .line 222
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->currentLine:Ljava/lang/StringBuffer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->commandOutput:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    if-ne v0, v3, :cond_12

    .line 227
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 228
    iget-object v3, p0, Lcom/sshtools/client/shell/ShellInputStream;->currentLine:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :cond_11
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->currentLine:Ljava/lang/StringBuffer;

    .line 233
    :cond_12
    iget-object v2, p0, Lcom/sshtools/client/shell/ShellInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ShellInputStream;->read()I

    move-result p3

    const/4 v0, -0x1

    if-le p3, v0, :cond_0

    int-to-byte p3, p3

    .line 120
    aput-byte p3, p1, p2

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.class Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;
.super Ljava/io/InputStream;
.source "ExpectShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/client/shell/ExpectShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartupInputStream"
.end annotation


# instance fields
.field final currentLine:Ljava/lang/StringBuilder;

.field final detectSettings:Z

.field inStartup:Z

.field final marker1:[C

.field markerPos:I

.field osType:Lcom/sshtools/client/shell/ExpectShell$OS;

.field final sessionIn:Ljava/io/BufferedInputStream;

.field final sessionOut:Ljava/io/OutputStream;

.field final shell:Lcom/sshtools/client/shell/ExpectShell;

.field final startupController:Lcom/sshtools/client/shell/ShellController;

.field final startupStarted:Ljava/time/Instant;


# direct methods
.method constructor <init>(Lcom/sshtools/client/shell/ExpectShell$OS;Ljava/lang/String;ZLcom/sshtools/client/shell/ShellStartupTrigger;Lcom/sshtools/client/shell/ExpectShell;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/client/shell/ShellTimeoutException;
        }
    .end annotation

    .line 1166
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    .line 1156
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupStarted:Ljava/time/Instant;

    .line 1168
    iput-object p1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1169
    iput-object p5, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    .line 1171
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    .line 1172
    iput-object p7, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    .line 1174
    iput-boolean p3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->detectSettings:Z

    .line 1175
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->marker1:[C

    .line 1177
    new-instance p2, Lcom/sshtools/client/shell/ShellController;

    new-instance p6, Lcom/sshtools/client/shell/ShellDefaultMatcher;

    invoke-direct {p6}, Lcom/sshtools/client/shell/ShellDefaultMatcher;-><init>()V

    invoke-direct {p2, p5, p6, p0}, Lcom/sshtools/client/shell/ShellController;-><init>(Lcom/sshtools/client/shell/ExpectShell;Lcom/sshtools/client/shell/ShellMatcher;Ljava/io/InputStream;)V

    iput-object p2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupController:Lcom/sshtools/client/shell/ShellController;

    const/4 p2, 0x0

    if-eqz p4, :cond_4

    .line 1183
    new-instance p5, Ljava/lang/StringBuffer;

    invoke-direct {p5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1186
    :cond_0
    iget-object p6, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p6}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result p6

    const/4 p7, -0x1

    const/16 v0, 0xa

    if-eq p6, v0, :cond_1

    const/16 v1, 0xd

    if-eq p6, v1, :cond_1

    if-eq p6, p7, :cond_1

    int-to-char v1, p6

    .line 1188
    invoke-virtual {p5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    if-ne p6, v0, :cond_2

    .line 1190
    invoke-virtual {p5, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    if-eq p6, p7, :cond_3

    .line 1196
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupController:Lcom/sshtools/client/shell/ShellController;

    invoke-interface {p4, p6, p7}, Lcom/sshtools/client/shell/ShellStartupTrigger;->canStartShell(Ljava/lang/String;Lcom/sshtools/client/shell/ShellWriter;)Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    .line 1192
    :cond_3
    new-instance p1, Lcom/sshtools/common/ssh/SshException;

    const-string p2, "Shell output ended before trigger could start shell"

    const/16 p3, 0x14

    invoke-direct {p1, p2, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_4
    :goto_0
    if-eqz p3, :cond_9

    .line 1204
    sget-object p4, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p1, p4, :cond_5

    .line 1207
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->exitCodeVariable()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object p1

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p7, " ---BEGIN---&& "

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1208
    :cond_5
    sget-object p4, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENVMS:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p1, p4, :cond_6

    .line 1210
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->pipeCommand()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->echoCommand()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object p1

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " \"---BEGIN---\" && "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " $?"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1211
    :cond_6
    sget-object p4, Lcom/sshtools/client/shell/ExpectShell$OS;->POWERSHELL:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne p1, p4, :cond_7

    .line 1214
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->exitCodeVariable()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object p1

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "echo \"---BEGIN---\"; ; echo \""

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, "\""

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1217
    :cond_7
    invoke-virtual {p1}, Lcom/sshtools/client/shell/ExpectShell$OS;->eol()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "echo \"---BEGIN---\"; echo \"$?\""

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1220
    :goto_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 1221
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Performing marker test: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p4, p2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    :cond_8
    iget-object p2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1226
    :cond_9
    iput-boolean p3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->inStartup:Z

    return-void
.end method


# virtual methods
.method detect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1354
    iput-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->inStartup:Z

    .line 1356
    iget-boolean v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->detectSettings:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 1359
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1360
    const-string v1, "Detecting shell settings"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1363
    :cond_1
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v1}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalReadLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1365
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Shell startup (detect): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1370
    :cond_2
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v4, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne v1, v4, :cond_10

    .line 1371
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1372
    const-string v1, "This looks like a *nix type machine, setting EOL to CR only and exit code variable to $?"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1375
    :cond_3
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    const-string v2, "uname"

    invoke-virtual {v1, v2}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;)Lcom/sshtools/client/shell/ShellProcess;

    move-result-object v1

    .line 1376
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 1377
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1381
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1382
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1384
    :cond_4
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->getExitCode()I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_5

    .line 1414
    invoke-virtual {v1}, Lcom/sshtools/client/shell/ShellProcess;->getExitCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uname returned error code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1411
    :cond_5
    const-string v1, "Remote side does not support uname"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1386
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1387
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Remote side reported it is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1389
    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1390
    const-string v2, "Sun"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1391
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->SOLARIS:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1392
    :cond_8
    const-string v2, "aix"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1393
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->AIX:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1394
    :cond_9
    const-string v2, "darwin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1395
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->DARWIN:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1396
    :cond_a
    const-string v2, "freebsd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1397
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->FREEBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1398
    :cond_b
    const-string v2, "openbsd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1399
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->OPENBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1400
    :cond_c
    const-string v2, "netbsd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1401
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->NETBSD:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1402
    :cond_d
    const-string v2, "linux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1403
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->LINUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto/16 :goto_2

    .line 1404
    :cond_e
    const-string v2, "hp-ux"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1405
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->HPUX:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto :goto_2

    .line 1407
    :cond_f
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    goto :goto_2

    .line 1417
    :cond_10
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    sget-object v4, Lcom/sshtools/client/shell/ExpectShell$OS;->UNKNOWN:Lcom/sshtools/client/shell/ExpectShell$OS;

    if-ne v1, v4, :cond_14

    .line 1420
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionOut:Ljava/io/OutputStream;

    const-string v4, "echo ---BEGIN--- && echo %errorlevel%\r\n"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1421
    :cond_11
    :goto_1
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v1}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalReadLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    const-string v4, "---BEGIN---"

    .line 1422
    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1423
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1424
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Shell startup: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1429
    :cond_12
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v1}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalReadLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1431
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1432
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1433
    const-string v1, "This looks like a Windows machine, setting EOL to CRLF and exit code variable to %errorlevel%"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1434
    :cond_13
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$OS;->WINDOWS:Lcom/sshtools/client/shell/ExpectShell$OS;

    iput-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    .line 1438
    :cond_14
    :goto_2
    sget-object v1, Lcom/sshtools/client/shell/ExpectShell$1;->$SwitchMap$com$sshtools$client$shell$ExpectShell$OS:[I

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->osType:Lcom/sshtools/client/shell/ExpectShell$OS;

    invoke-virtual {v2}, Lcom/sshtools/client/shell/ExpectShell$OS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/16 v3, 0xb

    if-eq v1, v3, :cond_16

    const/16 v3, 0xc

    if-eq v1, v3, :cond_16

    .line 1444
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1445
    const-string v1, "Setting default sudo prompt"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    :cond_15
    iget-object v1, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    const-string v3, "export SUDO_PROMPT=Password:"

    invoke-virtual {v1, v3, v2}, Lcom/sshtools/client/shell/ExpectShell;->executeCommand(Ljava/lang/String;Z)Lcom/sshtools/client/shell/ShellProcess;

    .line 1452
    :cond_16
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1453
    const-string v1, "Shell initialized"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_17
    :goto_3
    return-void
.end method

.method internalRead(Ljava/io/InputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1238
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    .line 1240
    invoke-virtual {v0}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v1

    const/16 v2, 0x15

    if-ne v1, v2, :cond_1

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupStarted:Ljava/time/Instant;

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-static {v2}, Lcom/sshtools/client/shell/ExpectShell;->-$$Nest$fgetstartupTimeout(Lcom/sshtools/client/shell/ExpectShell;)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1242
    :cond_0
    new-instance p1, Lcom/sshtools/common/ssh/SshIOException;

    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    const-string v1, ""

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw p1

    .line 1245
    :cond_1
    throw v0
.end method

.method internalReadLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1253
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1257
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    int-to-char v3, v1

    .line 1259
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1262
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isClosed()Z
    .locals 1

    .line 1231
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->inStartup:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1269
    iget-boolean v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->inStartup:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    .line 1271
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->marker1:[C

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1272
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1278
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result v2

    int-to-char v3, v2

    .line 1279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1280
    iget v3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->markerPos:I

    iget-object v4, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->marker1:[C

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->markerPos:I

    aget-char v3, v4, v3
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, v2, :cond_0

    .line 1293
    :cond_1
    iget v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->markerPos:I

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v2, v3, :cond_7

    .line 1295
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1296
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    .line 1297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Potentially found test marker ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    .line 1296
    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1300
    :cond_2
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 1303
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1304
    const-string v2, "Looking good, found CR"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1305
    :cond_3
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v2}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result v2

    :cond_4
    if-ne v2, v4, :cond_6

    .line 1309
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1310
    const-string v0, "Found test marker"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1313
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->detect()V
    :try_end_1
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v0

    .line 1315
    new-instance v1, Lcom/sshtools/common/ssh/SshIOException;

    invoke-direct {v1, v0}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v1

    .line 1319
    :cond_6
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    .line 1323
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Detected echo of test marker command since we did not find LF at end of marker ch="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " currentLine="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    .line 1320
    invoke-static {v0, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1327
    :cond_7
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 1328
    iget-object v0, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {p0, v0}, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->internalRead(Ljava/io/InputStream;)I

    move-result v0

    .line 1330
    iput v5, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->markerPos:I

    .line 1331
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1333
    const-string v2, "Shell startup (read): "

    if-ne v0, v4, :cond_9

    .line 1334
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1335
    iget-object v3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 1335
    invoke-static {v3, v4}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1338
    :cond_8
    iget-object v3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1341
    :cond_9
    invoke-static {}, Lcom/sshtools/client/shell/ExpectShell;->-$$Nest$sfgetverboseDebug()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1342
    iget-object v3, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->currentLine:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1344
    :cond_a
    iget-object v2, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->sessionIn:Ljava/io/BufferedInputStream;

    invoke-virtual {v2, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    return v0

    :catch_1
    move-exception v2

    .line 1285
    invoke-virtual {v2}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/common/ssh/SshException;->getReason()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_c

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->startupStarted:Ljava/time/Instant;

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/sshtools/client/shell/ExpectShell$StartupInputStream;->shell:Lcom/sshtools/client/shell/ExpectShell;

    invoke-static {v4}, Lcom/sshtools/client/shell/ExpectShell;->-$$Nest$fgetstartupTimeout(Lcom/sshtools/client/shell/ExpectShell;)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    goto/16 :goto_0

    .line 1287
    :cond_b
    new-instance v0, Lcom/sshtools/common/ssh/SshIOException;

    new-instance v1, Lcom/sshtools/common/ssh/SshException;

    const-string v2, ""

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/SshIOException;-><init>(Lcom/sshtools/common/ssh/SshException;)V

    throw v0

    .line 1290
    :cond_c
    throw v2

    :cond_d
    return v1
.end method

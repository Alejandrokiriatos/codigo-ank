.class public Lcom/sshtools/client/SshReporter;
.super Ljava/lang/Object;
.source "SshReporter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateLargeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const p0, 0x8000

    .line 212
    new-array v1, p0, [B

    .line 213
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 214
    invoke-static {p1}, Lcom/sshtools/common/util/IOUtils;->fromByteSize(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 215
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    :goto_0
    int-to-long v4, v0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    .line 217
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 215
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 222
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "#####"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 51
    array-length v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 52
    aget-object v0, p0, v4

    .line 53
    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 54
    aget-object v2, p0, v2

    const/4 v5, 0x3

    .line 55
    aget-object p0, p0, v5

    goto :goto_1

    .line 58
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Hostname: "

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 61
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 63
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/2addr v1, v3

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x16

    .line 67
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Username: "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 70
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Password: "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    move-object v0, p0

    move-object p0, v12

    .line 75
    :goto_1
    invoke-static {v0, v1}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteConfiguration(Ljava/lang/String;I)Lcom/sshtools/common/ssh/SshConnection;

    move-result-object v5

    .line 77
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteIdentification()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v0, v7, v8}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%s on port %d identifies as %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Key exchanges"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteKeyExchanges()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_2
    const-string v9, "   %s"

    if-ge v8, v7, :cond_2

    aget-object v10, v6, v8

    .line 81
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 84
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Host keys"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemotePublicKeys()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_3

    aget-object v10, v6, v8

    .line 86
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 89
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Ciphers"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 90
    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCiphersCS()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_4
    if-ge v8, v7, :cond_4

    aget-object v10, v6, v8

    .line 91
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 94
    :cond_4
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Macs"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 95
    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteMacsCS()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_5
    if-ge v8, v7, :cond_5

    aget-object v10, v6, v8

    .line 96
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 99
    :cond_5
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Compression"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    invoke-interface {v5}, Lcom/sshtools/common/ssh/SshConnection;->getRemoteCompressionsCS()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_6
    if-ge v8, v7, :cond_6

    aget-object v10, v6, v8

    .line 101
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 104
    :cond_6
    const-string v6, "Default"

    invoke-static {v6, v5}, Lcom/sshtools/client/SshReporter;->reportNegotiated(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V

    .line 107
    const-string v5, "file.dat"

    const-string v8, "250MB"

    invoke-static {v5, v8}, Lcom/sshtools/client/SshReporter;->generateLargeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {v0, v1, v2, p0, v3}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v5

    invoke-static {v5}, Lcom/sshtools/client/SshReporter;->probeSFTP(Lcom/sshtools/client/SshClient;)V

    const/16 v10, 0x10

    .line 111
    invoke-static {v0, v1, v2, p0, v3}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP with TCP No Delay 32k blocksize with 16 max requests"

    const-string v7, "file.dat"

    const v9, 0x8000

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 112
    invoke-static {v0, v1, v2, p0, v4}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP without TCP No Delay 32k blocksize with 16 max requests"

    const-string v7, "file.dat"

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 114
    invoke-static {v0, v1, v2, p0, v3}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP with TCP No Delay 16k blocksize with 16 max requests"

    const-string v7, "file.dat"

    const/16 v9, 0x4000

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 115
    invoke-static {v0, v1, v2, p0, v4}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP without TCP No Delay 16k blocksize with 16 max requests"

    const-string v7, "file.dat"

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 117
    invoke-static {v0, v1, v2, p0, v3}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP with TCP No Delay 8k blocksize with 16 max requests"

    const-string v7, "file.dat"

    const/16 v9, 0x2000

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 118
    invoke-static {v0, v1, v2, p0, v4}, Lcom/sshtools/client/SshCompatibilityUtils;->getRemoteClient(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Lcom/sshtools/client/SshClient;

    move-result-object v11

    const-string v6, "SFTP without TCP No Delay 8k blocksize with 16 max requests"

    const-string v7, "file.dat"

    invoke-static/range {v6 .. v11}, Lcom/sshtools/client/SshReporter;->reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V

    .line 123
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static probeSFTP(Lcom/sshtools/client/SshClient;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Remote packet: "

    const-string v1, "Remote window: "

    const-string v2, "Local packet: "

    const-string v3, "Local window: "

    .line 128
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v4

    .line 130
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "##### SFTP Configuration"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumLocalWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumLocalPacketLength()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumRemoteWindowSize()Lcom/sshtools/common/util/UnsignedInteger32;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->getSubsystemChannel()Lcom/sshtools/client/sftp/SftpChannel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sshtools/client/sftp/SftpChannel;->getMaximumRemotePacketLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->close()V

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/SshClient;->disconnect()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v4, :cond_1

    .line 128
    :try_start_1
    invoke-virtual {v4}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method private static reportNegotiated(Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 2

    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "%s configuration"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getKeyExchangeInUse()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Key exchange: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getHostKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Host key    : %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getCipherInUseCS()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getCipherInUseSC()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cipher      : %s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getMacInUseCS()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getMacInUseSC()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Mac         : %s,%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getCompressionInUseCS()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sshtools/common/ssh/SshConnection;->getCompressionInUseSC()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Compression : %s,%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "#####"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static reportSFTP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/sshtools/client/SshClient;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/client/sftp/TransferCancelledException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 172
    const-string v3, " seconds"

    const-string v4, " File"

    .line 0
    const-string v5, "Download took "

    const-string v6, "Downloading "

    const-string v7, "Round Trip: "

    const-string v8, "Optimized Block: "

    const-string v9, "Upload took "

    const-string v10, "Uploading "

    const-string v11, "Max Requests: "

    const-string v12, "Block size: "

    .line 172
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "##### "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v15, p0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->create()Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v13

    move-object/from16 v14, p5

    .line 175
    invoke-virtual {v13, v14}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withClient(Lcom/sshtools/client/SshClient;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v13

    .line 176
    invoke-virtual {v13, v2}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withBlockSize(I)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v13

    const-string v15, "user.dir"

    .line 177
    invoke-static {v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->withLocalPath(Ljava/lang/String;)Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;

    move-result-object v13

    .line 178
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient$SftpClientBuilder;->build()Lcom/sshtools/client/sftp/SftpClient;

    move-result-object v13

    .line 180
    :try_start_0
    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v11, p4

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 185
    invoke-virtual {v13, v0}, Lcom/sshtools/client/sftp/SftpClient;->put(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 187
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-long/2addr v14, v10

    long-to-double v10, v14

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 189
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "maverick.write.optimizedBlock"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "maverick.write.blockRoundtrip"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 192
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 194
    invoke-virtual {v13, v0}, Lcom/sshtools/client/sftp/SftpClient;->get(Ljava/lang/String;)Lcom/sshtools/common/sftp/SftpFileAttributes;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sub-long/2addr v9, v1

    long-to-double v1, v9

    div-double/2addr v1, v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v13, :cond_0

    .line 197
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V

    .line 199
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/sshtools/client/SshClient;->disconnect()V

    .line 201
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "maverick.read.optimizedBlock"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 202
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "maverick.read.finalBlock"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Final Block: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "maverick.read.blockRoundtrip"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#####"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v13, :cond_1

    .line 174
    :try_start_1
    invoke-virtual {v13}, Lcom/sshtools/client/sftp/SftpClient;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

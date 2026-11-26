.class public Lcom/sshtools/client/scp/ScpClient;
.super Lcom/sshtools/client/scp/ScpClientIO;
.source "ScpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/client/scp/ScpClient$ScpEngine;
    }
.end annotation


# instance fields
.field fileFactory:Lcom/sshtools/common/files/AbstractFileFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;"
        }
    .end annotation
.end field

.field lcwd:Lcom/sshtools/common/files/AbstractFile;

.field packetSize:I

.field windowSpace:J


# direct methods
.method static bridge synthetic -$$Nest$mresolveLocalPath(Lcom/sshtools/client/scp/ScpClient;Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sshtools/client/scp/ScpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/sshtools/client/SshClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->create()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withoutSandbox()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->build()Lcom/sshtools/common/files/direct/NioFileFactory;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0, p1}, Lcom/sshtools/client/scp/ScpClient;-><init>(Lcom/sshtools/common/files/AbstractFileFactory;Lcom/sshtools/client/SshClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/sshtools/common/files/AbstractFileFactory;Lcom/sshtools/client/SshClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/files/AbstractFileFactory<",
            "*>;",
            "Lcom/sshtools/client/SshClient;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0, p2}, Lcom/sshtools/client/scp/ScpClientIO;-><init>(Lcom/sshtools/client/SshClient;)V

    const-wide/32 v0, 0x7fffffff

    .line 56
    iput-wide v0, p0, Lcom/sshtools/client/scp/ScpClient;->windowSpace:J

    const p2, 0x8000

    .line 57
    iput p2, p0, Lcom/sshtools/client/scp/ScpClient;->packetSize:I

    .line 100
    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/sshtools/common/files/AbstractFileFactory;->getFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    iput-object p1, p0, Lcom/sshtools/client/scp/ScpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sshtools/client/SshClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->create()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withoutSandbox()Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->withHome(Ljava/io/File;)Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sshtools/common/files/direct/NioFileFactory$NioFileFactoryBuilder;->build()Lcom/sshtools/common/files/direct/NioFileFactory;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/scp/ScpClient;-><init>(Lcom/sshtools/common/files/AbstractFileFactory;Lcom/sshtools/client/SshClient;)V

    return-void
.end method

.method private resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v0, p1}, Lcom/sshtools/common/files/AbstractFile;->resolveFile(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public exit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/scp/ScpClient;->get(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 354
    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :cond_0
    const-string p1, "."

    .line 358
    :cond_1
    invoke-direct {p0, p1}, Lcom/sshtools/client/scp/ScpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 361
    :cond_2
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not a regular file or directory"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 364
    :cond_3
    :goto_0
    new-instance p1, Lcom/sshtools/client/scp/ScpClient$ScpEngine;

    if-eqz p3, :cond_4

    const-string v0, "-r "

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scp -f "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sshtools/client/scp/ScpClient;->ssh:Lcom/sshtools/client/SshClient;

    const-wide/16 v2, 0x7530

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/sshtools/client/SshClient;->openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;-><init>(Lcom/sshtools/client/scp/ScpClient;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V

    .line 366
    invoke-static {p1, v1, p4, p3}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->-$$Nest$mreadFromRemote(Lcom/sshtools/client/scp/ScpClient$ScpEngine;Lcom/sshtools/common/files/AbstractFile;Lcom/sshtools/client/tasks/FileTransferProgress;Z)V

    .line 370
    :try_start_0
    invoke-virtual {p1}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/scp/ScpClient;->get(Ljava/lang/String;[Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 325
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 326
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 333
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sshtools/client/scp/ScpClient;->get(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/scp/ScpClient;->put(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Lcom/sshtools/common/sftp/SftpStatusException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 237
    new-instance v0, Lcom/sshtools/client/sftp/GlobRegExpMatching;

    invoke-direct {v0}, Lcom/sshtools/client/sftp/GlobRegExpMatching;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/sshtools/client/scp/ScpClient;->lcwd:Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 242
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-gt v3, v5, :cond_0

    const/16 v3, 0x2f

    .line 243
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v3, v5, :cond_2

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 244
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 245
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Ljava/io/File;->isAbsolute()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    goto :goto_0

    .line 252
    :cond_1
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/sshtools/client/scp/ScpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 258
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->getChildren()Ljava/util/List;

    move-result-object v1

    .line 260
    new-array v2, v4, [Lcom/sshtools/common/files/AbstractFile;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sshtools/common/files/AbstractFile;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sshtools/client/sftp/GlobRegExpMatching;->matchFileNamesWithPattern([Lcom/sshtools/common/files/AbstractFile;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 261
    array-length v1, v0

    if-eqz v1, :cond_3

    .line 265
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/sshtools/client/scp/ScpClient;->put([Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void

    .line 262
    :cond_3
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "No file matches/File does not exist"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x6

    invoke-direct {p2, p1, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const-string v0, "localfile="

    .line 179
    invoke-direct {p0, p1}, Lcom/sshtools/client/scp/ScpClient;->resolveLocalPath(Ljava/lang/String;)Lcom/sshtools/common/files/AbstractFile;

    move-result-object v1

    .line 181
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->exists()Z

    move-result v2

    const/4 v3, 0x6

    if-eqz v2, :cond_8

    .line 185
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is not a regular file or directory"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 189
    :cond_1
    :goto_0
    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " is a directory, use recursive mode"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 193
    :cond_3
    :goto_1
    const-string v2, ""

    if-eqz p2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 194
    :cond_4
    const-string p2, "."

    .line 197
    :cond_5
    new-instance v4, Lcom/sshtools/client/scp/ScpClient$ScpEngine;

    invoke-interface {v1}, Lcom/sshtools/common/files/AbstractFile;->isDirectory()Z

    move-result v5

    or-int/2addr p5, v5

    if-eqz p5, :cond_6

    const-string p5, "-d "

    goto :goto_2

    :cond_6
    move-object p5, v2

    :goto_2
    if-eqz p3, :cond_7

    const-string v2, "-r "

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "scp "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v5, "-t "

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object v2, p0, Lcom/sshtools/client/scp/ScpClient;->ssh:Lcom/sshtools/client/SshClient;

    const-wide/16 v5, 0x7530

    const/4 v7, 0x0

    .line 198
    invoke-virtual {v2, v5, v6, v7}, Lcom/sshtools/client/SshClient;->openSessionChannel(JZ)Lcom/sshtools/client/SessionChannelNG;

    move-result-object v2

    invoke-direct {v4, p0, p5, v2}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;-><init>(Lcom/sshtools/client/scp/ScpClient;Ljava/lang/String;Lcom/sshtools/client/SessionChannelNG;)V

    .line 201
    :try_start_0
    invoke-virtual {v4}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->waitForResponse()V

    .line 203
    invoke-static {v4, v1, p3, p4}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->-$$Nest$mwriteFileToRemote(Lcom/sshtools/client/scp/ScpClient$ScpEngine;Lcom/sshtools/common/files/AbstractFile;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    :try_start_1
    invoke-virtual {v4}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-void

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p3

    .line 209
    :try_start_2
    new-instance p4, Lcom/sshtools/common/ssh/SshException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p5, " remotefile="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, v3, p3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p4

    :catch_1
    move-exception p1

    .line 206
    invoke-virtual {p1}, Lcom/sshtools/common/ssh/SshIOException;->getRealException()Lcom/sshtools/common/ssh/SshException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Lcom/sshtools/client/scp/ScpClient$ScpEngine;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 215
    :catchall_2
    throw p1

    .line 182
    :cond_8
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " does not exist"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sshtools/client/scp/ScpClient;->put([Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V

    return-void
.end method

.method public put([Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 300
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 301
    aget-object v3, p1, v0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sshtools/client/scp/ScpClient;->putFile(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putFile(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/ssh/ChannelOpenException;,
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;
        }
    .end annotation

    .line 161
    invoke-virtual/range {p0 .. p5}, Lcom/sshtools/client/scp/ScpClient;->put(Ljava/lang/String;Ljava/lang/String;ZLcom/sshtools/client/tasks/FileTransferProgress;Z)V

    return-void
.end method

.method public setPacketSize(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/sshtools/client/scp/ScpClient;->packetSize:I

    return-void
.end method

.method public setWindowSpace(I)V
    .locals 2

    int-to-long v0, p1

    .line 109
    iput-wide v0, p0, Lcom/sshtools/client/scp/ScpClient;->windowSpace:J

    return-void
.end method
